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
//#include "xgpio.h"
#include "xgpiops.h"
#include "xadcps.h"

//Software
#include "test_kem.h"


//#include "frodo640.h"
//#include "keccak_f1600.h"
//#include "api_frodo640.h"
//#include "test_kem.h"
//#include "test_KEM640.h"
//#include "kem.h"
//#include "random.h"
//#include "frodo_macrify.h"

//////////////////////////////////////////////
//
//	System name
//
//////////////////////////////////////////////
#define SYSTEM_NAME    "CRYSTALS-Kyber-512"

//////////////////////////////////////////////
//
//	LED pin
//
//////////////////////////////////////////////
#define ledpin 47

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
//	Prototypes
//
//////////////////////////////////////////////
void printChipTemperature();
void ledInit(XGpioPs * Gpio);

#endif /* SRC_INCLUDE_GLOBAL_DEF_H_ */