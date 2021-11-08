/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

/** Connection handle for a TCP Server session */

#include "tcp_perf_server.h"

extern struct netif server_netif;
static struct perf_stats server;
u32_t u32LenRecv = 0;
u32_t u32KeyExchanged = 0;
u32_t u32PacketExchanged = 0;
u32_t u32TotalKeyExchanged = 0;
u32_t u32TotalPacketExchanged = 0;
uint8_t u8CurrentClient = 0;

uint8_t find_client(struct tcp_pcb *tpcb)
{
	uint8_t i = 0;

	//Find client ID
	for(i = 0; i <= MAXIMUM_CLIENTS; i++)
	{
		if(clientStruct[i].c_pcb != NULL)
		{
//			print_debug(DEBUG_ETH, "Remote: 0x%08x\r\n", tpcb->remote_ip.addr);
//			print_debug(DEBUG_ETH, "Remote stored: 0x%08x\r\n", clientStruct[i].c_pcb->remote_ip.addr);

			if(tpcb->remote_ip.addr ==  clientStruct[i].c_pcb->remote_ip.addr)
			{
				print_debug(DEBUG_ETH, "Client found: %d\r\n", i);
				return i;
			}
		}
	}
	return 0xFF;
}

void encapsulate_json(char * pcBuffer)
{
	char cAux[128] = { 0x0 };
	bool bFirstElement = 1;

	//Open json
	sprintf(cAux, "{");
	strcat(pcBuffer, cAux);

	for(uint8_t u8ClientId = 0; u8ClientId < MAXIMUM_CLIENTS; u8ClientId++)
	{
		if(clientStruct[u8ClientId].bClientConnected)
		{
			//Add comma if necessary
			if(bFirstElement)
				bFirstElement = 0;
			else
			{
				sprintf(cAux, ",");
				strcat(pcBuffer, cAux);
			}

			//ID device
			sprintf(cAux, "\"%d\":{", u8ClientId);
			strcat(pcBuffer, cAux);

			//Device name
			sprintf(cAux, "\"device_name\":\"%.13s\"", clientStruct[u8ClientId].smData.u8DeviceName);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//Timestamp
			sprintf(cAux, "\"timestamp\":\"%02d/%02d/%04d %02d:%02d:%02d\"", clientStruct[u8ClientId].smData.u8Timestamp[3], clientStruct[u8ClientId].smData.u8Timestamp[2], ((u16)(clientStruct[u8ClientId].smData.u8Timestamp[u8ClientId]) << 8) | clientStruct[u8ClientId].smData.u8Timestamp[1], clientStruct[u8ClientId].smData.u8Timestamp[4], clientStruct[u8ClientId].smData.u8Timestamp[5], clientStruct[u8ClientId].smData.u8Timestamp[6]);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l1_voltage\":%lu", clientStruct[u8ClientId].smData.u32VoltageL1);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l2_voltage\":%lu", clientStruct[u8ClientId].smData.u32VoltageL2);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l3_voltage\":%lu", clientStruct[u8ClientId].smData.u32VoltageL3);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l1_current\":%lu", clientStruct[u8ClientId].smData.u32CurrentL1);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l2_current\":%lu", clientStruct[u8ClientId].smData.u32CurrentL2);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"l3_current\":%lu", clientStruct[u8ClientId].smData.u32CurrentL3);
			strcat(pcBuffer, cAux);

			//Comma
			sprintf(cAux, ",");
			strcat(pcBuffer, cAux);

			//L1 Voltage
			sprintf(cAux, "\"n_current\":%lu", clientStruct[u8ClientId].smData.u32CurrentN);
			strcat(pcBuffer, cAux);


			//End device
			sprintf(cAux, "}");
			strcat(pcBuffer, cAux);
		}
	}

	//End json
	sprintf(cAux, "}");
	strcat(pcBuffer, cAux);
}

void print_app_header(void)
{
	print_debug(DEBUG_ETH, "TCP server listening on port %d\r\n",
			TCP_CONN_PORT);
#if LWIP_IPV6==1
	print_debug(DEBUG_ETH, "On Host: Run $iperf -V -c %s%%<interface> -i %d -t 300 -w 2M\r\n",
			inet6_ntoa(server_netif.ip6_addr[0]),
			INTERIM_REPORT_INTERVAL);
#else
	print_debug(DEBUG_ETH, "On Host: Run $iperf -c %s -i %d -t 300 -w 2M\r\n",
			inet_ntoa(server_netif.ip_addr),
			INTERIM_REPORT_INTERVAL);
#endif /* LWIP_IPV6 */
}

static void print_tcp_conn_stats(uint8_t u8ClientId)
{
#if LWIP_IPV6==1
	print_debug(DEBUG_ETH, "[%3d] local %s port %d connected with ",
			server.client_id, inet6_ntoa(clientStruct[i].c_pcb->local_ip),
			clientStruct[i].c_pcb->local_port);
	print_debug(DEBUG_ETH, "%s port %d\r\n",inet6_ntoa(clientStruct[i].c_pcb->remote_ip),
			clientStruct[i].c_pcb->remote_port);
#else
	print_debug(DEBUG_ETH, "[%3d] local %s port %d connected with ",
			u8ClientId, inet_ntoa(clientStruct[u8ClientId].c_pcb->local_ip),
			clientStruct[u8ClientId].c_pcb->local_port);
	print_debug(DEBUG_ETH, "%s port %d\r\n",inet_ntoa(clientStruct[u8ClientId].c_pcb->remote_ip),
			clientStruct[u8ClientId].c_pcb->remote_port);
#endif /* LWIP_IPV6 */

	print_debug(DEBUG_ETH, "[ ID] Interval\t\tTransfer   Bandwidth\n\r");
}

static void stats_buffer(char* outString,
		double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}


/** The report function of a TCP server session */
static void tcp_conn_report(u64_t diff,
		enum report_type report_type, uint8_t u8ClientId)
{
	u64_t total_len;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64];

	if (report_type == INTER_REPORT) {
		total_len = server.i_report.total_bytes;
	} else {
		server.i_report.last_report_time = 0;
		total_len = server.total_bytes;
	}

	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)server.i_report.last_report_time,
			(double)(server.i_report.last_report_time + duration));
	print_debug(DEBUG_ETH, "[%3d] %s  %sBytes  %sbits/sec\n\r", u8ClientId,
			time, data, perf);

	if (report_type == INTER_REPORT)
		server.i_report.last_report_time += duration;
}

/** Close a tcp session */
static void tcp_server_close(struct tcp_pcb *pcb)
{
	err_t err;

	if (pcb != NULL) {
		print_debug(DEBUG_ETH, "TCP server closed\n\r");
		tcp_recv(pcb, NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
		for(int i = 0; i < MAXIMUM_CLIENTS; i++)
		{
			clientStruct[i].bClientConnected = 0;
			clientStruct[i].stClient = WAITING_CLIENT_CONNECTION;
		}
	}
}

/** Error callback, tcp session aborted */
static void tcp_server_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	print_debug(DEBUG_ETH, "TCP server error\n\r");
	u64_t now = get_time_ms();
	u64_t diff_ms = now - server.start_time;
//	for(int i = 0; i < MAXIMUM_CLIENTS; i++)
//	{
//		if(clientStruct[i].c_pcb != NULL)
//		{
//			tcp_server_close(clientStruct[i].c_pcb);
//			clientStruct[i].c_pcb = NULL;
//			clientStruct[i].stClient = WAITING_CLIENT_CONNECTION;
//		}
//	}

	tcp_conn_report(diff_ms, TCP_ABORTED_REMOTE, 0);
	print_debug(DEBUG_ETH, "TCP connection aborted, but ignored\n\r");
}

static err_t tcp_send_traffic(char * pcBuffer, u16_t u16BufferLen, uint8_t u8ClientId)
{
	err_t err;
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	if (clientStruct[u8ClientId].c_pcb == NULL) {
		return ERR_CONN;
	}

#ifdef __MICROBLAZE__
	/* Zero-copy pbufs is used to get maximum performance for Microblaze.
	 * For Zynq A9, ZynqMP A53 and R5 zero-copy pbufs does not give
	 * significant improvement hense not used. */
	apiflags = 0;
#endif

//#if 1 == 1
//	print_debug(DEBUG_ETH, "Writing data length: %d\n\r", u16BufferLen);
//#endif

	if (tcp_sndbuf(clientStruct[u8ClientId].c_pcb) > u16BufferLen)
	{
		err = tcp_write(clientStruct[u8ClientId].c_pcb, pcBuffer, u16BufferLen, apiflags);
		if (err != ERR_OK) {
			print_debug(DEBUG_ERROR, "TCP client: Error on tcp_write: %d\r\n",
					err);
			return err;
		}

		err = tcp_output(clientStruct[u8ClientId].c_pcb);
		if (err != ERR_OK) {
			print_debug(DEBUG_ERROR, "TCP client: Error on tcp_output: %d\r\n",
					err);
			return err;
		}
	}

	return ERR_OK;
}

void transfer_data(char * pcBuffer, u16_t u16BufferLen, uint8_t u8ClientId)
{
	if (clientStruct[u8ClientId].bClientConnected == 1)
		tcp_send_traffic(pcBuffer, u16BufferLen, u8ClientId);
}

/** Receive data on a tcp session */
static err_t tcp_recv_perf_traffic(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err)
{
	if (p == NULL) {
		u64_t now = get_time_ms();
		u64_t diff_ms = now - server.start_time;
		tcp_server_close(tpcb);
		tcp_conn_report(diff_ms, TCP_DONE_SERVER, 0);
		print_debug(DEBUG_ETH, "TCP test passed Successfully\n\r");
		return ERR_OK;
	}

	/* Record total bytes for final report */
#if DEBUG_KYBER == 1
	print_debug(DEBUG_ETH, "data length: %d\n\r", p->len);
	print_debug(DEBUG_ETH, "data total length: %d\n\r", p->tot_len);
	char * pcBuffer = (char *)p->payload;
	print_debug(DEBUG_ETH, "%s", pcBuffer);
	print_debug(DEBUG_ETH, "\n\r\n\r\n\r");

#endif
	server.total_bytes += p->tot_len;

	if (server.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		/* Record total bytes for interim report */
		server.i_report.total_bytes += p->tot_len;
		if (server.i_report.start_time) {
			u64_t diff_ms = now - server.i_report.start_time;

			if (diff_ms >= server.i_report.report_interval_time) {
				tcp_conn_report(diff_ms, INTER_REPORT, 0);
				/* Reset Interim report counters */
				server.i_report.start_time = 0;
				server.i_report.total_bytes = 0;
			}
		} else {
			/* Save start time for interim report */
			server.i_report.start_time = now;
		}
	}

	tcp_recved(tpcb, p->tot_len);

	pbuf_free(p);
	return ERR_OK;
}

/** Receive data on a tcp session */
static err_t tcp_recv_traffic(void *arg, struct tcp_pcb *tpcb,
		struct pbuf *p, err_t err)
{
	if (!p) {
		tcp_close(tpcb);
		tcp_recv(tpcb, NULL);
		return ERR_OK;
	}

	tcp_nagle_disable(tpcb);

	u8CurrentClient = find_client(tpcb);

#if DEBUG_KYBER == 1
	print_debug(DEBUG_ETH, "[%d] data length: %d\n\r", u8CurrentClient, p->len);
//	print_debug(DEBUG_ETH, "data total length: %d\n\r", p->tot_len);
#endif
	char * pcBuf = p->payload; //Get transmitted data.

	if(u8CurrentClient != MAXIMUM_CLIENTS)
	{
		if(clientStruct[u8CurrentClient].stClient == WAIT_CIPHERED_DATA)
		{
			memcpy(cCiphertext + u32LenRecv, pcBuf, p->len);
			u32LenRecv += p->len;

			clientStruct[u8CurrentClient].stClient = DECIPHER_MESSAGE;
			u32LenRecv = 0;

			u32PacketExchanged++;
			u32TotalPacketExchanged++;
		}
		else
		{
			memcpy(ct + u32LenRecv, pcBuf, p->len);
			u32LenRecv += p->len;

			if(u32LenRecv >= CRYPTO_CIPHERTEXTBYTES)
			{
				clientStruct[u8CurrentClient].stClient = CALCULATE_SHARED_SECRET;
				u32LenRecv = 0;

				u32KeyExchanged++;
				u32TotalKeyExchanged++;
			}
		}
	}
	else
	{
		print_debug(DEBUG_ETH, "monitoring system data request\n\r");
		char cSendBuffer[4096] = { 0x0 };

		encapsulate_json(cSendBuffer);
		tcp_send_traffic(cSendBuffer, sizeof(cSendBuffer), u8CurrentClient);
	}

	/* Record total bytes for final report */
	server.total_bytes += p->tot_len;

	if (server.i_report.report_interval_time) {
		u64_t now = get_time_ms();
		/* Record total bytes for interim report */
		server.i_report.total_bytes += p->tot_len;
		if (server.i_report.start_time) {
			u64_t diff_ms = now - server.i_report.start_time;

			if (diff_ms >= server.i_report.report_interval_time) {
				tcp_conn_report(diff_ms, INTER_REPORT, u8CurrentClient);
				print_debug(DEBUG_ETH, "Key exchanged: %d | Packet exchanged: %d | Total key exchanged: %d | Total packet exchanged: %d\r\n", u32KeyExchanged, u32PacketExchanged, u32TotalKeyExchanged, u32TotalPacketExchanged);
				u32KeyExchanged = 0;
				u32PacketExchanged = 0;
				/* Reset Interim report counters */
				server.i_report.start_time = 0;
				server.i_report.total_bytes = 0;
			}
		} else {
			/* Save start time for interim report */
			server.i_report.start_time = now;
		}
	}

	tcp_recved(tpcb, p->tot_len);

	pbuf_free(p);
	return ERR_OK;
}

static err_t tcp_server_accept(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	uint8_t u8ClientId = 0;

	if ((err != ERR_OK) || (newpcb == NULL)) {
		return ERR_VAL;
	}

	/* Save start time for final report */
	server.start_time = get_time_ms();
	server.end_time = 0; /* ms */
	/* Update connected client ID */
	server.client_id++;
	server.total_bytes = 0;



//	print_debug(DEBUG_ETH, "newpcb->remote_ip.addr 0x%08x\n\r", newpcb->remote_ip.addr);
	if(newpcb->remote_ip.addr > 0x1401a8c0) //If the monitoring system is requesting connection (checking using the clients fixed IPs) - any IP greater than 192.168.1.20 is considered a DHCP address, in consequence, is the monitoring platform.
	{
		print_debug(DEBUG_ETH, "Monitoring system connected...\n\r");

		u8ClientId = MAXIMUM_CLIENTS;
	}
	else //if the SM clients are requesting access
	{
		/* Find free client in structure */
		print_debug(DEBUG_ETH, "Searching for empty spot...\n\r");
		for(u8ClientId = 0; u8ClientId < MAXIMUM_CLIENTS; u8ClientId++)
		{
			if(clientStruct[u8ClientId].bClientConnected == 0)
			{
				clientStruct[u8ClientId].bClientConnected = 1;
				print_debug(DEBUG_ETH, "Spot %d available.\n\r", u8ClientId);
				break;
			}
			print_debug(DEBUG_ETH, "Spot %d occupied.\n\r", u8ClientId);

			if(u8ClientId == MAXIMUM_CLIENTS - 1)
				return ERR_CLSD;
		}

		print_debug(DEBUG_ETH, "Client ID %d connected.\r\n", u8ClientId);

		/* Initialize Interim report paramters */
		server.i_report.report_interval_time =
			INTERIM_REPORT_INTERVAL * 1000; /* ms */
		server.i_report.last_report_time = 0;
		server.i_report.start_time = 0;
		server.i_report.total_bytes = 0;
	}

	/* Save connected client PCB */
	clientStruct[u8ClientId].c_pcb = newpcb;

	print_tcp_conn_stats(u8ClientId);

	/* setup callbacks for tcp rx connection */
	tcp_arg(clientStruct[u8ClientId].c_pcb, NULL);
#if PERFORMANCE_TEST == 1
	tcp_recv(c_pcb, tcp_recv_perf_traffic);
#else
	tcp_recv(clientStruct[u8ClientId].c_pcb, tcp_recv_traffic);
#endif
	tcp_err(clientStruct[u8ClientId].c_pcb, tcp_server_err);

	clientStruct[u8ClientId].stClient = CLIENT_CONNECTED;

	return ERR_OK;
}

void start_application(void)
{
	err_t err;
	struct tcp_pcb *pcb, *lpcb;

	/* Create Server PCB */
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		print_debug(DEBUG_ETH, "TCP server: Error creating PCB. Out of Memory\r\n");
		return;
	}

	err = tcp_bind(pcb, IP_ADDR_ANY, TCP_CONN_PORT);
	if (err != ERR_OK) {
		print_debug(DEBUG_ETH, "TCP server: Unable to bind to port %d: "
				"err = %d\r\n" , TCP_CONN_PORT, err);
		tcp_close(pcb);
		return;
	}

	/* Set connection queue limit to 1 to serve
	 * one client at a time
	 */
	lpcb = tcp_listen_with_backlog(pcb, 1);
	if (!lpcb) {
		print_debug(DEBUG_ETH, "TCP server: Out of memory while tcp_listen\r\n");
		tcp_close(pcb);
		return;
	}

	/* we do not need any arguments to callback functions */
	tcp_nagle_disable(lpcb);
	tcp_arg(lpcb, NULL);

	/* specify callback to use for incoming connections */
	tcp_accept(lpcb, tcp_server_accept);

	return;
}
