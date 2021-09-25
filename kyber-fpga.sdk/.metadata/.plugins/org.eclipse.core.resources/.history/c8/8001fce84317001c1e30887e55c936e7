/*
 * weg_smw3000.c
 *
 *  Created on: 20 de ago de 2021
 *      Author: vinicius
 */

#include "weg_smw3000.h"

static smBufferStruct smBuffer;
static smControlStruct smControl;
static smDataStruct smData;
static smDataStruct smCipheredData;

static u8 u8ControlPointer = 0;
static u8 u8ControlVec[8] = { 0x32, 0x54, 0x76, 0x98, 0xBA, 0xDC, 0xFE, 0x10 };

//////////////////////////////////////////////
//
//	Initilize
//
//////////////////////////////////////////////
void smw3000Init()
{
	//Initialize control variables
	smControl.u8Connected = 0x0;
	smControl.u8Authenticated = 0x0;

	smBuffer.u32RxBufferLen = 0;
	smBuffer.u32TxBufferLen = 0;
	memset(smBuffer.u8RxBuffer, 0x0, MAX_BUFFER_LEN);
	memset(smBuffer.u8TxBuffer, 0x0, MAX_BUFFER_LEN);
}

//////////////////////////////////////////////
//
//	Collect data
//
//////////////////////////////////////////////
u32 smw3000GetAllData()
{
	u32 rv = 0;
	u8ControlPointer = 0;

	rv = smw3000Connect();
	if(rv)
		goto _err;

	rv = smw3000Authenticate();
	if(rv)
		goto _err;

	rv = smw3000GetDeviceID();
	if(rv)
		goto _err;

	rv = smw3000GetTimestamp();
	if(rv)
		goto _err;

	rv = smw3000GetLineVoltage(1);
	if(rv)
		goto _err;

	rv = smw3000GetLineVoltage(2);
	if(rv)
		goto _err;

	rv = smw3000GetLineVoltage(3);
	if(rv)
		goto _err;

	rv = smw3000GetLineCurrent(1);
	if(rv)
		goto _err;

	rv = smw3000GetLineCurrent(2);
	if(rv)
		goto _err;

	rv = smw3000GetLineCurrent(3);
	if(rv)
		goto _err;

	rv = smw3000GetLineCurrent(4);
	if(rv)
		goto _err;

	rv = smw3000Disconnect();
	if(rv)
		goto _err;

	rv = smw3000CalculateCrc();
	if(rv)
		goto _err;

	print_debug(DEBUG_SM_LVL2, "All SM data collected.\r\n");

	_err:
	return rv;
}

//////////////////////////////////////////////
//
//	Cipher data structure
//
//////////////////////////////////////////////
u32 smw3000CipherDataStruct(u8 * u8Keystream)
{
	if(u8Keystream == NULL)
		return POINTER_DEALLOCATED;

	uint8_t *smDataPtr = (uint8_t*)&smData.u8DeviceName;
	uint8_t *smCipheredDataPtr = (uint8_t*)&smCipheredData.u8DeviceName;

	//Copy seed in plaintext mode
	smCipheredData.u32Seed = smData.u32Seed;

	size_t sSize = sizeof(smDataStruct) - 4; //Ignore u32Seed field.

	for(int i = 0; i < sSize; i++)
	{
		smCipheredDataPtr[i] = smDataPtr[i] ^ u8Keystream[i];
		print_debug(DEBUG_SM_LVL0, "%02x ^ %02x = %02x\r\n", smDataPtr[i], u8Keystream[i], smCipheredDataPtr[i]);
	}

	return OK;
}

//////////////////////////////////////////////
//
//	Decipher data structure
//
//////////////////////////////////////////////
u32 smw3000DecipherDataStruct(u8 * u8Keystream)
{
	if(u8Keystream == NULL)
		return POINTER_DEALLOCATED;

	uint8_t *smCipheredDataPtr = (uint8_t*)&smCipheredData.u8DeviceName;
	uint8_t *smDataPtr = (uint8_t*)&smData.u8DeviceName;

	//Copy seed in plaintext mode
	smData.u32Seed = smCipheredData.u32Seed;

	size_t sSize = sizeof(smDataStruct) - 4; //Ignore u32Seed field.

	for(int i = 0; i < sSize; i++)
	{
		//smDataPtr[i] = smCipheredDataPtr[i] ^ u8Keystream[i];
		smDataPtr[i] = smCipheredDataPtr[i] ^ u8Keystream[i];
		print_debug(DEBUG_SM_LVL0, "%02x ^ %02x = %02x\r\n", smCipheredDataPtr[i], u8Keystream[i], smDataPtr[i]);
	}

	return OK;
}

//////////////////////////////////////////////
//
//	Pointer to control struct
//
//////////////////////////////////////////////
smControlStruct * smw3000GetControlStruct()
{
	print_debug(DEBUG_SM_LVL0, "SM Control structure pointer: 0x%08x\r\n", &smControl);
	return &smControl;
}

//////////////////////////////////////////////
//
//	Pointer to data struct
//
//////////////////////////////////////////////
smDataStruct * smw3000GetDataStruct()
{
	print_debug(DEBUG_SM_LVL0, "SM Data structure pointer: 0x%08x\r\n", &smData);
	return &smData;
}

//////////////////////////////////////////////
//
//	Pointer to data ciphered struct
//
//////////////////////////////////////////////
smDataStruct * smw3000GetCipheredDataStruct()
{
	print_debug(DEBUG_SM_LVL0, "SM Data ciphered structure pointer: 0x%08x\r\n", &smCipheredData);
	return &smCipheredData;
}

//////////////////////////////////////////////
//
//	Connect
//
//////////////////////////////////////////////
u32 smw3000Connect()
{
	u32 rv = 0;
	u8 u8BufferTmp[9] = { 0x7E, 0xA0, 0x07, 0x03, 0x23, 0x93, 0xBF, 0x32, 0x7E };
	smBuffer.u32TxBufferLen = 9;
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send connect request
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while sending connect data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	smControl.u8Connected = 1;
	print_debug(DEBUG_SM_LVL2, "Connected to SMW3000.\r\n");
	return OK;

	_err:
		return CONNECTION_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Authenticate
//
//////////////////////////////////////////////
u32 smw3000Authenticate()
{
	u32 rv = 0;
	u8 u8BufferTmp[71] = { 0x7E, 0xA0, 0x45, 0x03, 0x23, 0x10, 0xED, 0xAB, 0xE6, 0xE6, 0x00, 0x60, 0x37, 0xA1, 0x09, 0x06, 0x07, 0x60, 0x85, 0x74, 0x05, 0x08, 0x01, 0x01, 0x8A, 0x02, 0x07, 0x80, 0x8B, 0x07, 0x60, 0x85, 0x74, 0x05, 0x08, 0x02, 0x01, 0xAC, 0x0B, 0x80, 0x09, 0x73, 0x65, 0x6E, 0x68, 0x61, 0x40, 0x31, 0x32, 0x33, 0xBE, 0x10, 0x04, 0x0E, 0x01, 0x00, 0x00, 0x00, 0x06, 0x5F, 0x1F, 0x04, 0x00, 0x00, 0x1E, 0x5D, 0xFF, 0xFF, 0xC5, 0xF5, 0x7E };
	smBuffer.u32TxBufferLen = 71;
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send connect request
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while sending authenticate data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	smControl.u8Authenticated = 1;
	print_debug(DEBUG_SM_LVL2, "Authenticated by SMW3000.\r\n");
	return OK;

	_err:
		return AUTHENTICATION_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Disconnect
//
//////////////////////////////////////////////
u32 smw3000Disconnect()
{
	u32 rv = 0;
	u8 u8BufferTmp[9] = { 0x7E, 0xA0, 0x07, 0x03, 0x23, 0x53, 0xB3, 0xF4, 0x7E };
	smBuffer.u32TxBufferLen = 9;
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send disconnect request
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while sending disconnect data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	smControl.u8Connected = 0;
	print_debug(DEBUG_SM_LVL2, "Disconnected from SMW3000.\r\n");
	return OK;

	_err:
		return DISCONNECTION_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Get device ID
//
//////////////////////////////////////////////
u32 smw3000GetDeviceID()
{
	u32 rv = 0;

	//Buffer length
	smBuffer.u32TxBufferLen = 27;

	//Base message
	u8 u8BufferTmp[27] = { 0x7E, 0xA0, 0x19, 0x03, 0x23, 0x00, 0x00, 0x00, 0xE6, 0xE6, 0x00, 0xC0, 0x01, 0xC1, 0x00, 0x01, 0x00, 0x00, 0x60, 0x01, 0x04, 0xFF, 0x02, 0x00, 0x00, 0x00, 0x7E };

	//Control field
	u8BufferTmp[5] = u8ControlVec[u8ControlPointer];

	//Calculate header CRC-CCITT
	u16 u16Crc = 0x0;
	u16Crc = crc16(&u8BufferTmp[1], 5);
	print_debug(DEBUG_SM_LVL0, "Header: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[6] = u16Crc & 0xFF;
	u8BufferTmp[7] = u16Crc >> 8;

	//Calculate package CRC-CCITT
	u16Crc = crc16(&u8BufferTmp[1], 23);
	print_debug(DEBUG_SM_LVL0, "Packet: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[24] = u16Crc & 0xFF;
	u8BufferTmp[25] = u16Crc >> 8;

	//Copy buffer to structure
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send buffer
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while requesting device id data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	memcpy(smData.u8DeviceName, &smBuffer.u8RxBuffer[17], 13);
	print_debug(DEBUG_SM_LVL1, "Device name: %.13s.\r\n", smData.u8DeviceName);

	smw3000AddControlPointer();

	return OK;

	_err:
		return DEVICE_ID_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Get timestamp
//
//////////////////////////////////////////////
u32 smw3000GetTimestamp()
{
	u32 rv = 0;

	//Buffer length
	smBuffer.u32TxBufferLen = 27;

	//Base message
	u8 u8BufferTmp[27] = { 0x7E, 0xA0, 0x19, 0x03, 0x23, 0x00, 0x00, 0x00, 0xE6, 0xE6, 0x00, 0xC0, 0x01, 0xC1, 0x00, 0x08, 0x00, 0x00, 0x01, 0x00, 0x00, 0xFF, 0x02, 0x00, 0x00, 0x00, 0x7E };

	//Control field
	u8BufferTmp[5] = u8ControlVec[u8ControlPointer];

	//Calculate header CRC-CCITT
	u16 u16Crc = 0x0;
	u16Crc = crc16(&u8BufferTmp[1], 5);
	print_debug(DEBUG_SM_LVL0, "Header: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[6] = u16Crc & 0xFF;
	u8BufferTmp[7] = u16Crc >> 8;

	//Calculate package CRC-CCITT
	u16Crc = crc16(&u8BufferTmp[1], 23);
	print_debug(DEBUG_SM_LVL0, "Packet: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[24] = u16Crc & 0xFF;
	u8BufferTmp[25] = u16Crc >> 8;

	//Copy buffer to structure
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send buffer
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while requesting timestamp data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	memcpy(&smData.u8Timestamp[0], &smBuffer.u8RxBuffer[17], 4);
	memcpy(&smData.u8Timestamp[4], &smBuffer.u8RxBuffer[22], 3);
	print_debug(DEBUG_SM_LVL1, "Timestamp: %02d/%02d/%04d %02d:%02d:%02d.\r\n", smData.u8Timestamp[3], smData.u8Timestamp[2], ((u16)(smData.u8Timestamp[0]) << 8) | smData.u8Timestamp[1], smData.u8Timestamp[4], smData.u8Timestamp[5], smData.u8Timestamp[6]);

	smw3000AddControlPointer();

	return OK;

	_err:
		return TIMESTAMP_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Get line voltage
//
//////////////////////////////////////////////
u32 smw3000GetLineVoltage(u8 u8Line)
{
	u32 rv = 0;

	//Buffer length
	smBuffer.u32TxBufferLen = 27;

	//Base message
	u8 u8BufferTmp[27] = { 0x7E, 0xA0, 0x19, 0x03, 0x23, 0x00, 0x00, 0x00, 0xE6, 0xE6, 0x00, 0xC0, 0x01, 0xC1, 0x00, 0x03, 0x01, 0x00, 0x00, 0x07, 0x00, 0xFF, 0x02, 0x00, 0x00, 0x00, 0x7E };

	//Control field
	u8BufferTmp[5] = u8ControlVec[u8ControlPointer];

	//Address field
	if(u8Line == 1)
		u8BufferTmp[18] = 0x20;
	else if(u8Line == 2)
		u8BufferTmp[18] = 0x34;
	else if(u8Line == 3)
		u8BufferTmp[18] = 0x48;
	else
		u8BufferTmp[18] = 0x20;

	//Calculate header CRC-CCITT
	u16 u16Crc = 0x0;
	u16Crc = crc16(&u8BufferTmp[1], 5);
	print_debug(DEBUG_SM_LVL0, "Header: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[6] = u16Crc & 0xFF;
	u8BufferTmp[7] = u16Crc >> 8;

	//Calculate package CRC-CCITT
	u16Crc = crc16(&u8BufferTmp[1], 23);
	print_debug(DEBUG_SM_LVL0, "Packet: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[24] = u16Crc & 0xFF;
	u8BufferTmp[25] = u16Crc >> 8;

	//Copy buffer to structure
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send buffer
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while requesting line voltage data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	if(u8Line == 1)
	{
		smData.u32VoltageL1 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L1 voltage acquired: %d mV.\r\n", smData.u32VoltageL1);
	}
	else if(u8Line == 2)
	{
		smData.u32VoltageL2 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L2 voltage acquired: %d mV.\r\n", smData.u32VoltageL2);
	}
	else if(u8Line == 3)
	{
		smData.u32VoltageL3 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L3 voltage acquired: %d mV.\r\n", smData.u32VoltageL3);
	}
	else
	{
		smData.u32VoltageL1 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L1 voltage acquired: %d mV.\r\n", smData.u32VoltageL1);
	}

	smw3000AddControlPointer();

	return OK;

	_err:
		return VOLTAGE_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Get line voltage
//
//////////////////////////////////////////////
u32 smw3000GetLineCurrent(u8 u8Line)
{
	u32 rv = 0;

	//Buffer length
	smBuffer.u32TxBufferLen = 27;

	//Base message
	u8 u8BufferTmp[27] = { 0x7E, 0xA0, 0x19, 0x03, 0x23, 0x00, 0x00, 0x00, 0xE6, 0xE6, 0x00, 0xC0, 0x01, 0xC1, 0x00, 0x03, 0x01, 0x00, 0x00, 0x07, 0x00, 0xFF, 0x02, 0x00, 0x00, 0x00, 0x7E };

	//Control field
	u8BufferTmp[5] = u8ControlVec[u8ControlPointer];

	//Address field
	if(u8Line == 1)
		u8BufferTmp[18] = 0x1F;
	else if(u8Line == 2)
		u8BufferTmp[18] = 0x33;
	else if(u8Line == 3)
		u8BufferTmp[18] = 0x47;
	else if(u8Line == 4)
		u8BufferTmp[18] = 0x5B;
	else
		u8BufferTmp[18] = 0x1F;

	//Calculate header CRC-CCITT
	u16 u16Crc = 0x0;
	u16Crc = crc16(&u8BufferTmp[1], 5);
	print_debug(DEBUG_SM_LVL0, "Header: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[6] = u16Crc & 0xFF;
	u8BufferTmp[7] = u16Crc >> 8;

	//Calculate package CRC-CCITT
	u16Crc = crc16(&u8BufferTmp[1], 23);
	print_debug(DEBUG_SM_LVL0, "Packet: 0x%04x.\r\n", u16Crc);
	u8BufferTmp[24] = u16Crc & 0xFF;
	u8BufferTmp[25] = u16Crc >> 8;

	//Copy buffer to structure
	memcpy(smBuffer.u8TxBuffer, u8BufferTmp, smBuffer.u32TxBufferLen);

	//Send buffer
	rv = smw3000SendBuffer();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error while requesting line current data: not enough data transmitted.\r\n");
		goto _err;
	}

	//Wait for data
	rv = smw3000WaitForData();
	if(rv)
	{
		print_debug(DEBUG_SM_ERROR, "Error: timeout.\r\n");
		goto _err;
	}

#if DEBUG_SM_LVL0 == 1
	else
		smw3000PrintRxBuffer();
#endif

	if(u8Line == 1)
	{
		smData.u32CurrentL1 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L1 current acquired: %d mA.\r\n", smData.u32CurrentL1);
	}
	else if(u8Line == 2)
	{
		smData.u32CurrentL2 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L2 current acquired: %d mA.\r\n", smData.u32CurrentL2);
	}
	else if(u8Line == 3)
	{
		smData.u32CurrentL3 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L3 current acquired: %d mA.\r\n", smData.u32CurrentL3);
	}
	else if(u8Line == 4)
	{
		smData.u32CurrentN = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "Neutral current acquired: %d mA.\r\n", smData.u32CurrentN);
	}
	else
	{
		smData.u32CurrentL1 = ((u32)(smBuffer.u8RxBuffer[21]) << 16) | ((u32)(smBuffer.u8RxBuffer[22]) << 8) | (u32)(smBuffer.u8RxBuffer[23]);
		print_debug(DEBUG_SM_LVL1, "L1 current acquired: %d mA.\r\n", smData.u32CurrentL1);
	}

	smw3000AddControlPointer();

	return OK;

	_err:
		return VOLTAGE_FAILED | rv;
}

//////////////////////////////////////////////
//
//	Calculate CRC buffer
//
//////////////////////////////////////////////
u32 smw3000CalculateCrc()
{
	smData.u16Crc = 0x0;
	uint16_t u16Crc = crc16((uint8_t *)(&smData), sizeof(smDataStruct));
	smData.u16Crc = u16Crc;

	return OK;
}

//////////////////////////////////////////////
//
//	Check CRC buffer
//
//////////////////////////////////////////////
u32 smw3000CheckCrc()
{
	u16 u16CrcReceived = smData.u16Crc;
	smData.u16Crc = 0x0;
	uint16_t u16CrcCalculated = crc16((uint8_t *)(&smData), sizeof(smDataStruct));
	smData.u16Crc = u16CrcReceived;
	if(u16CrcCalculated == u16CrcReceived)
		return OK;
	else
	{
		print_debug(DEBUG_SM_LVL2, "CRC calculated: 0x%04x | CRC received: 0x%04x.\r\n", u16CrcCalculated, u16CrcReceived);
		return CRC_FAILED;
	}
}

//////////////////////////////////////////////
//
//	Send buffer data
//
//////////////////////////////////////////////
u32 smw3000SendBuffer()
{
	u32 u32LengthSent = 0;

	print_debug(DEBUG_SM_LVL0, "Sending (len: %d): ", smBuffer.u32TxBufferLen);
#if DEBUG_SM_LVL0 == 1
	for(int j = 0; j < smBuffer.u32TxBufferLen; j++)
	{
		printf("0x%02x ", smBuffer.u8TxBuffer[j]);
	}
	printf("\r\n");
#endif

	while (u32LengthSent < smBuffer.u32TxBufferLen)
	{
		u32LengthSent += XUartPs_Send(&XUart0, &smBuffer.u8TxBuffer[u32LengthSent], 1);
		usleep(100);
	}

	while(XUartPs_IsSending(&XUart0)) {}

	return OK;
}

//////////////////////////////////////////////
//
//	Recv buffer data
//
//////////////////////////////////////////////
u32 smw3000RecvBuffer()
{
	bool bBeginFlagFound = 0;
	bool bEndFlagFound = 0;
	bool bCharReceived = 0;
	u8 u8RecvByte;
	u32 u32Idx = 0;

	while(XUartPs_IsReceiveData(XPAR_XUARTPS_1_BASEADDR))
	{
		bCharReceived = 1;
		XUartPs_Recv(&XUart0, &u8RecvByte, 1);

		if(u8RecvByte == 0x7E)
		{
			if(bBeginFlagFound == 0)
				bBeginFlagFound = 1;
			else
				bEndFlagFound = 1;
		}

		if(bBeginFlagFound)
		{
			smBuffer.u8RxBuffer[u32Idx] = u8RecvByte;
			u32Idx++;
		}

		usleep(100);
	}

	smBuffer.u32RxBufferLen = u32Idx;
	if(bBeginFlagFound == 1 && bEndFlagFound == 1)
		return OK;
	else if(bBeginFlagFound == 1 && bEndFlagFound == 0)
		return MISSING_END_FLAG;
	else if(!bBeginFlagFound & bCharReceived)
		return PACKAGE_ERROR;
	else
		return NO_RECEIVED_DATA;
}

//////////////////////////////////////////////
//
//	Wait for data
//
//////////////////////////////////////////////
u32 smw3000WaitForData()
{
	u32 rv = OK;
	u32 u32CounterWait = 0;

	while(u32CounterWait < MAX_WAIT_RESPONSE_COUNTER)
	{
		rv = smw3000RecvBuffer();
		if(rv == OK)
			goto _end;

		usleep(WAIT_RESPONSE_STEP);

		u32CounterWait++;
	}

	return TIMEOUT | rv;

	_end:
		return rv;
}

//////////////////////////////////////////////
//
//	Print RX buffer
//
//////////////////////////////////////////////
void smw3000PrintRxBuffer()
{
	print_debug(DEBUG_SM_LVL0, "RX Buffer (len %d): ", smBuffer.u32RxBufferLen);
#if DEBUG_SM_LVL0 == 1
	for(int j = 0; j < smBuffer.u32RxBufferLen; j++)
	{
		printf("0x%02x ", smBuffer.u8RxBuffer[j]);
	}
	printf("\r\n");
#endif
}

//////////////////////////////////////////////
//
//	Increment control pointer
//
//////////////////////////////////////////////
void smw3000AddControlPointer()
{
	if(u8ControlPointer == 7)
		u8ControlPointer = 0;
	else
		u8ControlPointer++;
}

//////////////////////////////////////////////
//
//	Print data structure
//
//////////////////////////////////////////////
void smw3000PrintDataStruct(smDataStruct * psmDataStruct)
{
	print_debug(DEBUG_SM_LVL2, "Data structure (addr 0x%08x):\r\n", psmDataStruct);
	print_debug(DEBUG_SM_LVL2, "Seed: 0x%08x\r\n", psmDataStruct->u32Seed);
	print_debug(DEBUG_SM_LVL2, "Device Name: %.13s\r\n", psmDataStruct->u8DeviceName);
	print_debug(DEBUG_SM_LVL2, "Timestamp: %02d/%02d/%04d %02d:%02d:%02d.\r\n", psmDataStruct->u8Timestamp[3], psmDataStruct->u8Timestamp[2], ((u16)(psmDataStruct->u8Timestamp[0]) << 8) | psmDataStruct->u8Timestamp[1], psmDataStruct->u8Timestamp[4], psmDataStruct->u8Timestamp[5], psmDataStruct->u8Timestamp[6]);
	print_debug(DEBUG_SM_LVL2, "L1 voltage acquired: %d mV.\r\n", psmDataStruct->u32VoltageL1);
	print_debug(DEBUG_SM_LVL2, "L2 voltage acquired: %d mV.\r\n", psmDataStruct->u32VoltageL2);
	print_debug(DEBUG_SM_LVL2, "L3 voltage acquired: %d mV.\r\n", psmDataStruct->u32VoltageL3);
	print_debug(DEBUG_SM_LVL2, "L1 current acquired: %d mA.\r\n", psmDataStruct->u32CurrentL1);
	print_debug(DEBUG_SM_LVL2, "L2 current acquired: %d mA.\r\n", psmDataStruct->u32CurrentL2);
	print_debug(DEBUG_SM_LVL2, "L3 current acquired: %d mA.\r\n", psmDataStruct->u32CurrentL3);
	print_debug(DEBUG_SM_LVL2, "LN current acquired: %d mA.\r\n", psmDataStruct->u32CurrentN);
	print_debug(DEBUG_SM_LVL2, "CRC16: 0x%04x\r\n", psmDataStruct->u16Crc);
}



