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
#include "xil_mmu.h"
#include "sleep.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "xadcps.h"

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
//#define ENABLE_DEBUG				0
//	#define ENABLE_TEST_KECCAK_SW		0
//	#define ENABLE_TEST_KECCAK_HW_MM	0
//	#define ENABLE_TEST_MATRIX_SA		0
//	#define ENABLE_TEST_MATRIX_AS		0
//	#define ENABLE_TEST_SHAKE			1

//#define ENABLE_KEM_TEST				1
//#define ENABLE_HW_TIMER				0
//#define ENABLE_SW_TIMER				0
////Just used for debug
//#define ENABLE_MATRIX_SW			0
//#define ENABLE_MATRIX_HW			0

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
#define DEBUG_POLY_TOMONT			1

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

u32 *memoryBram0;
u32 *memoryBram1;

u32 u32SystemState;

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

#endif /* SRC_INCLUDE_GLOBAL_DEF_H_ */
