/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

//////////////////////////////////////////////
//
//	Includes
//
//////////////////////////////////////////////
#include "platform.h"
#include "include/global_def.h"
#include "include/poly.h"
#include "include/polyvec.h"
#include "include/fips202.h"

//////////////////////////////////////////////
//
//	DEFINES TESTS
//
//////////////////////////////////////////////
#define TEST_FQMUL						0
#define TEST_BARRETT_REDUCE				0
#define TEST_POLY_TOMONT				1
#define TEST_POLYVEC_REDUCE				1
#define TEST_POLYVEC_ACC				0
#define TEST_POLYVEC_NTT				0
#define TEST_POLYVEC_INVNTT				0
#define TEST_KECCAK_F1600				0
#define TEST_KEM						0
#define SYSTEM_STATE					0

//////////////////////////////////////////////
//
//	Variables
//
//////////////////////////////////////////////
extern XGpio_Config * XGpioConfigDma;
extern XGpio XGpioDma;

extern XGpio_Config * XGpioConfigPtrGlobalTimer;
extern XGpio XGpioGlobalTimer;

extern XGpio_Config * XGpioConfigKyberK;
extern XGpio XGpioKyberK;

extern XGpio_Config * XGpioConfigTomontAndReduce;
extern XGpio XGpioTomontAndReduce;

extern XGpio_Config * XGpioConfigAccMontKeccak;
extern XGpio XGpioAccMontKeccak;

extern XGpio_Config * XGpioConfigNtt;
extern XGpio XGpioNtt;

extern XAxiDma_Config * XAxiDmaConfig;
extern XAxiDma XAxiDmaPtr;

//extern u32 *memoryBram0;
//extern u32 *memoryBram1;

extern u8 *TxBufferPtr;
extern u8 *RxBufferPtr;

extern u32 u32SystemState;

//////////////////////////////////////////////
//
//	Time variables
//
//////////////////////////////////////////////
//Poly tomont
extern u32 u32PolyTomontHwTime, u32PolyTomontHwIt;
extern u32 u32PolyTomontSwTime, u32PolyTomontSwIt;

//Polyvec reduce
extern u32 u32PolyvecReduceHwTime, u32PolyvecReduceHwIt;
extern u32 u32PolyvecReduceSwTime, u32PolyvecReduceSwIt;

//Polyvec basemul acc mont
extern u32 u32PolyvecBasemulAccMontHwTime, u32PolyvecBasemulAccMontHwIt;
extern u32 u32PolyvecBasemulAccMontSwTime, u32PolyvecBasemulAccMontSwIt;

//Polyvec NTT
extern u32 u32PolyvecNttHwTime, u32PolyvecNttHwIt;
extern u32 u32PolyvecNttSwTime, u32PolyvecNttSwIt;

//Polyvec INVNTT
extern u32 u32PolyvecInvnttHwTime, u32PolyvecInvnttHwIt;
extern u32 u32PolyvecInvnttSwTime, u32PolyvecInvnttSwIt;

//Keccak
extern u32 u32KeccakHwTime, u32KeccakHwIt;
extern u32 u32KeccakSwTime, u32KeccakSwIt;

//////////////////////////////////////////////
//
//	Main
//
//////////////////////////////////////////////
int main()
{
    init_platform();
    print_debug(DEBUG_MAIN, "--- Kyber Algortithm ---\n\n");

    //---- Local variables ----
	u32 u32LedState = 0x0;

    //---- Initialize LED ----
    XGpioPs Gpio;
    ledInit(&Gpio);

    //---- DMA variables ----
    int Status;
	TxBufferPtr = (u8 *)TX_BUFFER_BASE ;
	RxBufferPtr = (u8 *)RX_BUFFER_BASE;

	//---- Configure DMA enable read GPIO ----
	XGpioConfigDma = XGpio_LookupConfig(XPAR_AXI_GPIO_5_DEVICE_ID);
	XGpio_CfgInitialize(&XGpioDma, XGpioConfigDma, XGpioConfigDma->BaseAddress);

    //---- Configure timers ----
    configTimer(XGpioConfigPtrGlobalTimer, &XGpioGlobalTimer, XPAR_AXI_GPIO_0_DEVICE_ID, 1);

    //---- Configure Kyber K ----
	configKyberK(XGpioConfigKyberK, &XGpioKyberK, XPAR_AXI_GPIO_1_DEVICE_ID, 1);
	print_debug(DEBUG_MAIN, "[MAIN] Parameter KYBER_K: %ld.\n", XGpio_DiscreteRead(&XGpioKyberK, 1));

    //Poly tomont and reduce
	XGpioConfigTomontAndReduce = XGpio_LookupConfig(XPAR_AXI_GPIO_2_DEVICE_ID);
	XGpio_CfgInitialize(&XGpioTomontAndReduce, XGpioConfigTomontAndReduce, XGpioConfigTomontAndReduce->BaseAddress);

	//Polyvec basemul acc montgomery
	XGpioConfigAccMontKeccak = XGpio_LookupConfig(XPAR_AXI_GPIO_3_DEVICE_ID);
	XGpio_CfgInitialize(&XGpioAccMontKeccak, XGpioConfigAccMontKeccak, XGpioConfigAccMontKeccak->BaseAddress);

	//Polyvec NTT
	XGpioConfigNtt = XGpio_LookupConfig(XPAR_AXI_GPIO_4_DEVICE_ID);
	XGpio_CfgInitialize(&XGpioNtt, XGpioConfigNtt, XGpioConfigNtt->BaseAddress);

	//---- Configure AXI BRAM ----
//	memoryBram0 = (u32 *) XPAR_DUAL_BRAM_0_S00_AXI_BASEADDR;
//	print_debug(DEBUG_MAIN, "[MAIN] Memory BRAM0 initialized. First position: 0x%08lx.\n", memoryBram0[0]);
//	memoryBram0[0] = 0x0;
//
//	memoryBram1 = (u32 *) XPAR_DUAL_BRAM_0_S01_AXI_BASEADDR;
//	print_debug(DEBUG_MAIN, "[MAIN] Memory BRAM1 initialized. First position: 0x%08lx.\n", memoryBram1[0]);
//	memoryBram1[0] = 0x0;

	//---- Configure DMA ----
	XAxiDmaConfig = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if (!XAxiDmaConfig) {
		print_debug(DEBUG_MAIN, "[MAIN] No config found for %d\r\n", XPAR_AXIDMA_0_DEVICE_ID);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&XAxiDmaPtr, XAxiDmaConfig);
	if (Status != XST_SUCCESS) {
		print_debug(DEBUG_MAIN, "[MAIN] Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(&XAxiDmaPtr)){
		print_debug(DEBUG_MAIN, "[MAIN] Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	//Disable interrupts, we use polling mode
	XAxiDma_IntrDisable(&XAxiDmaPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&XAxiDmaPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	//System state
	u32SystemState = 0;

	//Reset time variables
#if GET_TOTAL_IP_TIME == 1
	resetTimeVariables();
#endif

    while(1)
    {
    	//---- Print chip temperature ----
		getChipTemperature();

    	//Blink led
		XGpioPs_WritePin(&Gpio, ledpin, u32LedState);
		u32LedState ^= 0x1;

#if TEST_FQMUL == 1
		// Fqmul test
		int16_t i16OutputSw, i16OutputHw;
		uint32_t ui32Timer;
		for(int16_t i16Input1 = 0; i16Input1 <= 0xFFFF; i16Input1++)
		{
			for(int16_t i16Input2 = 0; i16Input2 <= 0xFFFF; i16Input2++)
			{
				i16OutputSw = fqmul(i16Input1, i16Input2);
				stopTimer(&XGpioGlobalTimer, 1);
//				print_debug(DEBUG_MAIN, "In1 = %d, In2 = %d, Out = %d\n", i16Input1, i16Input2, i16OutputSw);

				XGpio_DiscreteWrite(&XGpioFqmulInput, 1, i16Input1);
				XGpio_DiscreteWrite(&XGpioFqmulInput, 2, i16Input2);
				i16OutputHw = XGpio_DiscreteRead(&XGpioFqmulOutput, 1);
//				print_debug(DEBUG_MAIN, "In1 = %d, In2 = %d, Out = %d\n", i16Input1, i16Input2, i16OutputHw);

				print_debug(DEBUG_MAIN, "In1 = %d, In2 = %d, Out = %d\n", i16Input1, i16Input2, i16OutputHw);
				if(i16OutputSw != i16OutputHw)
					exit(0);

				if(i16Input2 == -1)
					break;
			}

			if(i16Input1 == -1)
				break;
		}
#endif

#if TEST_BARRET_REDUCE
//		//Test barret-reduce
//		for(uint16_t i = 0; i < 0xffff; i++)
//		{
//			print_debug(DEBUG_MAIN, "It: 0x%04x.\n", (int16_t)i);
//			XGpio_DiscreteWrite(&XGpioPolyTomont, 2, (int16_t)i);
//			u32 u32Read = XGpio_DiscreteRead(&XGpioPolyTomont, 2);
//			int16_t i16BarretHw = (int16_t)u32Read;
//			print_debug(DEBUG_MAIN, "Barrett reduce hw: 0x%04x.\n", i16BarretHw);
//			int16_t i16BarretSw = barrett_reduce((int16_t)i);
//			print_debug(DEBUG_MAIN, "Barrett reduce sw: 0x%04x.\n", i16BarretSw);
//			if(i16BarretHw != i16BarretSw)
//			{
//				print_debug(DEBUG_MAIN, "Error in 0x%04x.\n", (int16_t)i);
//				exit(0);
//			}
//		}
#endif

#if TEST_POLY_TOMONT == 1
		//Poly tomont test
		print_debug(DEBUG_MAIN, "\n[MAIN] poly_tomont\n");

		poly r1;
		poly r2;
//		//Initialize BRAM with data
		poly r_test = {0};
		for(int i = 0; i < 256; i = i + 4)
		{
			r_test.coeffs[i + 0] = 0x03fb;
			r_test.coeffs[i + 1] = 0x062e;
			r_test.coeffs[i + 2] = 0x0593;
			r_test.coeffs[i + 3] = 0x039b;
		}

		memcpy(&r1, &r_test, 512);
		memcpy(&r2, &r_test, 512);

//		memset(memoryBram0, 0x0, 512);
//		memset(memoryBram1, 0x0, 512);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer1 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer HW: %ld ns\n", u32Timer1 * 10);
		startTimer(&XGpioGlobalTimer, 1);

		poly_tomont_hw(&r1);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer1 = getTimer(&XGpioGlobalTimer, 1);

//		for(int i = 0; i < 4; i++)
//		{
//			print_debug(DEBUG_MAIN, "[MAIN] outside memoryBram1[%d]: 0x%08lx\n", i, memoryBram1[i]);
//		}
//		for(int i = 0; i < 4; i++)
//		{
//			print_debug(DEBUG_MAIN, "[MAIN] poly1 result[%d]: 0x%04x\n", i, r1.coeffs[i]);
//		}

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer2 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer2 * 10);
		startTimer(&XGpioGlobalTimer, 1);

		poly_tomont_sw(&r2);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer2 = getTimer(&XGpioGlobalTimer, 1);
//		for(int i = 0; i < 4; i++)
//		{
//			print_debug(DEBUG_MAIN, "[MAIN] poly2 result[%d]: 0x%04x\n", i, r2.coeffs[i]);
//		}

		if(memcmp(&r1, &r2, 512) != 0)
		{
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
			exit(0);
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");

		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer2 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer1 * HW_CLOCK_PERIOD);
#endif

#if TEST_POLYVEC_REDUCE
		//Test poly reduce
		print_debug(DEBUG_MAIN, "\n[MAIN] polyvec_reduce\n");

		polyvec r;
		r.vec[0].coeffs[0] = rand();
		r.vec[0].coeffs[1] = rand();
		r.vec[1].coeffs[254] = rand();
		r.vec[1].coeffs[255] = rand();

		for(int i = 0; i < 256; i++)
		{
			r.vec[0].coeffs[i] = rand();
		}
		for(int i = 0; i < 256; i++)
		{
			r.vec[1].coeffs[i] = rand();
		}

		polyvec r3, r4;
		memcpy(&r3, &r, 1024);
		memcpy(&r4, &r, 1024);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer3 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer3 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_reduce_sw(&r3);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer3 = getTimer(&XGpioGlobalTimer, 1);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer4 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer HW: %ld ns\n", u32Timer4 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_reduce_hw(&r4);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer4 = getTimer(&XGpioGlobalTimer, 1);

		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer3 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer4 * HW_CLOCK_PERIOD);

		if(memcmp(&r3, &r4, 1024) != 0)
		{
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
			exit(0);
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");
#endif

#if TEST_POLYVEC_ACC == 1
		//Test polyvec basemul acc montgomery
		print_debug(DEBUG_MAIN, "\n[MAIN] polyvec_basemul_acc_montgomery\n");
		poly r3_acc, r4_acc;
		polyvec r1_acc, r2_acc;

		for (int i = 0; i < 256; i += 2)
		{
			r1_acc.vec[0].coeffs[i] = i + 1;
			r1_acc.vec[0].coeffs[i + 1] = i + 2;
		}
		for (int i = 0; i < 256; i += 2)
		{
			r1_acc.vec[1].coeffs[i] = i + 0x0801;
			r1_acc.vec[1].coeffs[i + 1] = i + 0x0802;
		}
		for (int i = 0; i < 256; i += 2)
		{
			r2_acc.vec[0].coeffs[i] = i + 0xF000;
			r2_acc.vec[0].coeffs[i + 1] = i + 0xF001;
		}
		for (int i = 0; i < 256; i += 2)
		{
			r2_acc.vec[1].coeffs[i] = i + 0xF800;
			r2_acc.vec[1].coeffs[i + 1] = i + 0xF801;
		}

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer5 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer5 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

//		polyvec_basemul_acc_montgomery(&r, &r1, &r2);
		polyvec_basemul_acc_montgomery_sw(&r3_acc, &r1_acc, &r2_acc);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer5 = getTimer(&XGpioGlobalTimer, 1);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer6 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer6 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

//		polyvec_basemul_acc_montgomery(&r, &r1, &r2);
		polyvec_basemul_acc_montgomery_hw(&r4_acc, &r1_acc, &r2_acc);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer6 = getTimer(&XGpioGlobalTimer, 1);

//		for (int i = 0; i < 16; i++)
//		{
//			print_debug(DEBUG_MAIN, "memBram0[%d]: 0x%08lx\n", i, memoryBram0[i]);
//		}
//		for (int i = 128; i < 134; i++)
//		{
//			print_debug(DEBUG_MAIN, "memBram0[%d]: 0x%08lx\n", i, memoryBram0[i]);
//		}
//		for (int i = 256; i < 272; i++)
//		{
//			print_debug(DEBUG_MAIN, "memBram0[%d]: 0x%08lx\n", i, memoryBram0[i]);
//		}
//		for (int i = 384; i < 400; i++)
//		{
//			print_debug(DEBUG_MAIN, "memBram0[%d]: 0x%08lx\n", i, memoryBram0[i]);
//		}
//		for (int i = 0; i < 128; i++)
//		{
//			print_debug(DEBUG_MAIN, "memBram1[%d]: 0x%08lx\n", i, memoryBram1[i]);
//		}
//		for (int i = 0; i < 16; i++)
//		{
//			print_debug(DEBUG_MAIN, "r[%d]: 0x%04x\n", i, r.coeffs[i]);
//		}
		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer5 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer6 * HW_CLOCK_PERIOD);

//		for (int i = 0; i < 256; i++)
//		{
//			if(r.coeffs[i] != r3.coeffs[i])
//			{
//				print_debug(DEBUG_MAIN, "Error at r[%d]: 0x%04x and r3[%d]: 0x%04x\n", i, r.coeffs[i], i, r3.coeffs[i]);
//			}
//		}
		if(memcmp(&r3_acc, &r4_acc, 512) != 0)
		{
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");

#endif

#if TEST_POLYVEC_NTT == 1
		//Test polyvec ntt
		print_debug(DEBUG_MAIN, "\n[MAIN] polyvec_ntt\n");

		polyvec r1_ntt, r2_ntt;

		for (int i = 0; i < 256; i += 2)
		{
			r1_ntt.vec[0].coeffs[i] = i + 1;
			r1_ntt.vec[0].coeffs[i + 1] = i + 2;
			r2_ntt.vec[0].coeffs[i] = i + 1;
			r2_ntt.vec[0].coeffs[i + 1] = i + 2;
		}
		for (int i = 0; i < 256; i += 2)
		{
			r1_ntt.vec[1].coeffs[i] = i + 0x0801;
			r1_ntt.vec[1].coeffs[i + 1] = i + 0x0802;
			r2_ntt.vec[1].coeffs[i] = i + 0x0801;
			r2_ntt.vec[1].coeffs[i + 1] = i + 0x0802;
		}

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer7 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer7 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_ntt_sw(&r1_ntt);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer7 = getTimer(&XGpioGlobalTimer, 1);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer8 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer HW: %ld ns\n", u32Timer8 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_ntt_hw(&r2_ntt);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer8 = getTimer(&XGpioGlobalTimer, 1);

		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer7 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer8 * HW_CLOCK_PERIOD);

		if(memcmp(&r1_ntt, &r2_ntt, 1024) != 0)
		{
			for(int i = 200; i < 256; i++)
			{
				print_debug(DEBUG_MAIN, "r1.vec[1].coeffs[%d]: 0x%04x | r2.vec[1].coeffs[%d]: 0x%04x\n", i, r1_ntt.vec[1].coeffs[i], i, r2_ntt.vec[1].coeffs[i]);
			}
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
			exit(0);
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");
#endif

#if TEST_POLYVEC_INVNTT == 1
		//Test polyvec invntt
		print_debug(DEBUG_MAIN, "\n[MAIN] polyvec_invntt\n");

		polyvec r1_invntt, r2_invntt;

		for (int i = 0; i < 256; i += 2)
		{
			r1_invntt.vec[0].coeffs[i] = i + 1;
			r1_invntt.vec[0].coeffs[i + 1] = i + 2;
			r2_invntt.vec[0].coeffs[i] = i + 1;
			r2_invntt.vec[0].coeffs[i + 1] = i + 2;
		}
		for (int i = 0; i < 256; i += 2)
		{
			r1_invntt.vec[1].coeffs[i] = i + 0x0801;
			r1_invntt.vec[1].coeffs[i + 1] = i + 0x0802;
			r2_invntt.vec[1].coeffs[i] = i + 0x0801;
			r2_invntt.vec[1].coeffs[i + 1] = i + 0x0802;
		}

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer9 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer9 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_invntt_tomont_sw(&r1_invntt);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer9 = getTimer(&XGpioGlobalTimer, 1);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer10 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer HW: %ld ns\n", u32Timer10 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		polyvec_invntt_tomont_hw(&r2_invntt);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer10 = getTimer(&XGpioGlobalTimer, 1);

		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer9 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer10 * HW_CLOCK_PERIOD);

		if(memcmp(&r1_invntt, &r2_invntt, 1024) != 0)
		{
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
			for(int i = 0; i < 16; i++)
			{
				print_debug(DEBUG_MAIN, "r1[%d]: 0x%02x | r2[%d]: 0x%02x\n", i, r1_invntt.vec[0].coeffs[i], i, r2_invntt.vec[0].coeffs[i]);
			}
			exit(0);
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");
#endif

#if TEST_KECCAK_F1600 == 1
		print_debug(DEBUG_MAIN, "\n[MAIN] keccak\n");

		uint64_t state[25] = { 0x0 };
		state[0] = 0x000000000000001f;
		state[20] = 0x8000000000000000;
		uint64_t state2[25] = { 0x0 };
		state2[0] = 0x000000000000001f;
		state2[20] = 0x8000000000000000;

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer11 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer SW: %ld ns\n", u32Timer11 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		KeccakF1600_StatePermuteSw(state);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer11 = getTimer(&XGpioGlobalTimer, 1);

		resetTimer(&XGpioGlobalTimer, 1);
		u32 u32Timer12 = getTimer(&XGpioGlobalTimer, 1);
		print_debug(DEBUG_MAIN, "[MAIN] Reset Timer HW: %ld ns\n", u32Timer12 * HW_CLOCK_PERIOD);
		startTimer(&XGpioGlobalTimer, 1);

		KeccakF1600_StatePermuteHw(state2);

		stopTimer(&XGpioGlobalTimer, 1);
		u32Timer12 = getTimer(&XGpioGlobalTimer, 1);

		print_debug(DEBUG_MAIN, "[MAIN] Timer SW: %ld ns\n", u32Timer11 * HW_CLOCK_PERIOD);
		print_debug(DEBUG_MAIN, "[MAIN] Timer HW: %ld ns\n", u32Timer12 * HW_CLOCK_PERIOD);

		if(memcmp(&state, &state2, 200) != 0)
		{
			print_debug(DEBUG_MAIN, "[MAIN] Error!\n");
		}
		else
			print_debug(DEBUG_MAIN, "[MAIN] Ok!\n");
#endif

#if TEST_KEM == 1
////		//KEM test
		int result = kem_test(SYSTEM_NAME, KEM_TEST_ITERATIONS);
		if(result)
			print_debug(DEBUG_MAIN, "KEM succeed.\n\n");
		else
			print_debug(DEBUG_MAIN, "KEM failed.\n\n");
#endif

#if SYSTEM_STATE == 1
		//System state
		if(u32SystemState & POLY_TOMONT_MASK)
			print_debug(DEBUG_MAIN, "Poly tomont hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Poly tomont software used.\n");

		if(u32SystemState & POLYVEC_REDUCE_MASK)
			print_debug(DEBUG_MAIN, "Polyvec reduce hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Polyvec reduce software used.\n");

		if(u32SystemState & POLYVEC_BASEMUL_MASK)
			print_debug(DEBUG_MAIN, "Polyvec basemul acc montgomery hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Polyvec basemul acc montgomery software used.\n");

		if(u32SystemState & POLYVEC_NTT_MASK)
			print_debug(DEBUG_MAIN, "Polyvec NTT hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Polyvec NTT software used.\n");

		if(u32SystemState & POLYVEC_INVNTT_MASK)
			print_debug(DEBUG_MAIN, "Polyvec INVNTT hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Polyvec INVNTT software used.\n");

		if(u32SystemState & KECCAK_F1600_MASK)
			print_debug(DEBUG_MAIN, "Keccak F1600 hardware used.\n");
		else
			print_debug(DEBUG_MAIN, "Keccak F1600 software used.\n");

		u32SystemState ++;
#endif

		if((u32SystemState & 0x3f) == 0x0)
		{
			//Print and reset time variables
			#if GET_TOTAL_IP_TIME == 1
				printTimeVariables();
				resetTimeVariables();
			#endif

			sleep(3);
		}

    }

    cleanup_platform();
    return 0;
}
