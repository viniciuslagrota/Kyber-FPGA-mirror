/*
 * global_def.h
 *
 *  Created on: 25 de nov de 2019
 *      Author: Vinicius
 */

#ifndef SRC_INCLUDE_GLOBAL_DEF_H_
#define SRC_INCLUDE_GLOBAL_DEF_H_

//////////////////////////////////////////////
//
//	Includes
//
//////////////////////////////////////////////
//System
#include <stdio.h>
#include <stdlib.h>
#include <stdio.h>

//Hardware
#include "xil_printf.h"
#include "sleep.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "xadcps.h"
#include "xaxidma.h"

//Software
#include "params.h"
#include "test_kem.h"
#include "kem.h"
#include "reduce.h"

//////////////////////////////////////////////
//
//	System name
//
//////////////////////////////////////////////
#if KYBER_K == 2
	#define SYSTEM_NAME    "CRYSTALS-Kyber-512"
#elif KYBER_K == 3
	#define SYSTEM_NAME    "CRYSTALS-Kyber-768"
#else
	#define SYSTEM_NAME    "CRYSTALS-Kyber-1024"
#endif

//////////////////////////////////////////////
//
//	System mask
//
//////////////////////////////////////////////
#define POLY_TOMONT_MASK				1 << 0
#define POLYVEC_REDUCE_MASK				1 << 1
#define POLYVEC_BASEMUL_MASK			1 << 2
#define POLYVEC_NTT_MASK				1 << 3
#define POLYVEC_INVNTT_MASK				1 << 4
#define KECCAK_F1600_MASK				1 << 5

//////////////////////////////////////////////
//
//	LED pin
//
//////////////////////////////////////////////
#define ledpin 47

//////////////////////////////////////////////
//
//	Hardware clock period
//
//////////////////////////////////////////////
#define HW_CLOCK_PERIOD			10 //ns

//////////////////////////////////////////////
//
//	Number of iterations
//
//////////////////////////////////////////////
#define KEM_TEST_ITERATIONS			1

//////////////////////////////////////////////
//
//	Compilation defines
//
//////////////////////////////////////////////
#define GET_GLOBAL_TIME				1 //If 1, GET_TOTAL_IP_TIME must be zero.
#define GET_TOTAL_IP_TIME			0 //If 1, GET_GLOBAL_TIME must be zero.
#define GET_PROCESSING_IP_TIME		0

//////////////////////////////////////////////
//
//	Debug defines
//
//////////////////////////////////////////////
#define DEBUG_GLOBAL_ENABLED 		1
#define DEBUG_ERROR					1
//Main
#define DEBUG_MAIN					1
//Test KEM
#define DEBUG_TEST_KEM				1
//Accelerations
#define DEBUG_TIME					1

//////////////////////////////////////////////
//
//	Debug print
//
//////////////////////////////////////////////
#define print_debug(debugLevel, ...) \
	do { \
		if (DEBUG_GLOBAL_ENABLED && (debugLevel == 1)) \
			printf(__VA_ARGS__); \
		} while (0)


//////////////////////////////////////////////
//
//	General defines
//
//////////////////////////////////////////////
#define false						0
#define true						1
#define passed						0
#define failed						1
#define ALIGN_HEADER(N)
#define ALIGN_FOOTER(N) 			__attribute__((aligned(N)))

//////////////////////////////////////////////
//
//	Temperature
//
//////////////////////////////////////////////
#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID

//////////////////////////////////////////////
//
//	DMA
//
//////////////////////////////////////////////
#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#ifndef DDR_BASE_ADDR
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

//////////////////////////////////////////////
//
//	AXI GPIO
//
//////////////////////////////////////////////
XGpio_Config * XGpioConfigPtrGlobalTimer;
XGpio XGpioGlobalTimer;

XGpio_Config * XGpioConfigKyberK;
XGpio XGpioKyberK;

XGpio_Config * XGpioConfigTomontAndReduce;
XGpio XGpioTomontAndReduce;

XGpio_Config * XGpioConfigAccMontKeccak;
XGpio XGpioAccMontKeccak;

XGpio_Config * XGpioConfigNtt;
XGpio XGpioNtt;

XGpio_Config * XGpioConfigDma;
XGpio XGpioDma;

XAxiDma_Config * XAxiDmaConfig;
XAxiDma XAxiDmaPtr;

//u32 *memoryBram0;
//u32 *memoryBram1;

u32 u32SystemState;

u8 *TxBufferPtr;
u8 *RxBufferPtr;

//////////////////////////////////////////////
//
//	Timers
//
//////////////////////////////////////////////
//Poly tomont
u32 u32PolyTomontHwTime, u32PolyTomontHwIt;
u32 u32PolyTomontSwTime, u32PolyTomontSwIt;

//Polyvec reduce
u32 u32PolyvecReduceHwTime, u32PolyvecReduceHwIt;
u32 u32PolyvecReduceSwTime, u32PolyvecReduceSwIt;

//Polyvec basemul acc mont
u32 u32PolyvecBasemulAccMontHwTime, u32PolyvecBasemulAccMontHwIt;
u32 u32PolyvecBasemulAccMontSwTime, u32PolyvecBasemulAccMontSwIt;

//Polyvec NTT
u32 u32PolyvecNttHwTime, u32PolyvecNttHwIt;
u32 u32PolyvecNttSwTime, u32PolyvecNttSwIt;

//Polyvec INVNTT
u32 u32PolyvecInvnttHwTime, u32PolyvecInvnttHwIt;
u32 u32PolyvecInvnttSwTime, u32PolyvecInvnttSwIt;

//Keccak
u32 u32KeccakHwTime, u32KeccakHwIt;
u32 u32KeccakSwTime, u32KeccakSwIt;
//////////////////////////////////////////////
//
//	Prototypes
//
//////////////////////////////////////////////
void getChipTemperature();
void ledInit(XGpioPs * Gpio);
void configKyberK(XGpio_Config * pConfigStruct, XGpio * pGpioStruct, uint8_t ui8DeviceId, uint8_t ui8Channel);
void configTimer(XGpio_Config * pConfigStruct, XGpio * pGpioStruct, uint8_t ui8DeviceId, uint8_t ui8Channel);
void resetTimer(XGpio * pStruct, uint8_t ui8Channel);
void startTimer(XGpio * pStruct, uint8_t ui8Channel);
void stopTimer(XGpio * pStruct, uint8_t ui8Channel);
u32 getTimer(XGpio * pStruct, uint8_t ui8Channel);
void floatToIntegers(double dValue, u32 * u32Integer, u32 * u32Fraction);
void resetTimeVariables();
void printTimeVariables();

#endif /* SRC_INCLUDE_GLOBAL_DEF_H_ */
