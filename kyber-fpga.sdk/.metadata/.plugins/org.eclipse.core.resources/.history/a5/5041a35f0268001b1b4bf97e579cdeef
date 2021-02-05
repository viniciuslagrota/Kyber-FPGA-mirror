/*
 * global_def.h
 *
 *  Created on: 25 de nov de 2019
 *      Author: Vinicius
 */

#ifndef SRC_INCLUDE_GLOBAL_DEF_H_
#define SRC_INCLUDE_GLOBAL_DEF_H_

#include <stdio.h>
#include <stdlib.h>
#include "xgpio.h"
#include "xgpio.h"
#include "xil_printf.h"

#include "frodo640.h"
#include "keccak_f1600.h"
#include "api_frodo640.h"
#include "test_kem.h"
#include "test_KEM640.h"
#include "kem.h"
#include "random.h"
#include "frodo_macrify.h"

#define ledpin 47

//////////////////////////////////////////////
//
//	Extern
//
//////////////////////////////////////////////
extern uint16_t CDF_TABLE[13];
extern uint16_t CDF_TABLE_LEN;

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
#define ENABLE_DEBUG				0
	#define ENABLE_TEST_KECCAK_SW		0
	#define ENABLE_TEST_KECCAK_HW_MM	0
	#define ENABLE_TEST_MATRIX_SA		0
	#define ENABLE_TEST_MATRIX_AS		0
	#define ENABLE_TEST_SHAKE			1

#define ENABLE_KEM_TEST				1
#define ENABLE_HW_TIMER				0
#define ENABLE_SW_TIMER				0
//Just used for debug
#define ENABLE_MATRIX_SW			0
#define ENABLE_MATRIX_HW			0

//////////////////////////////////////////////
//
//	Generate random numbers
//
//////////////////////////////////////////////
#define RANDOM_BYTES				0

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
//KEM
#define DEBUG_KEM_KEYPAIR			0
#define DEBUG_KEM_ENC				0
#define DEBUG_KEM_DEC				0
//Keccak_f1600
#define DEBUG_KECCAK_HW				0
#define DEBUG_KECCAK_HW_MM			0
#define DEBUG_STATE_MATRIX			1
#define DEBUG_TIMER					0
//Random
#define DEBUG_RANDOM				0
//Noise
#define DEBUG_NOISE					0
//Matrix multiplication
#define DEBUG_MATRIX_MM				1
//SHAKE128
#define DEBUG_SHAKE_MM				0


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
//	AXI GPIO
//
//////////////////////////////////////////////
XGpio axiStartDone;
XGpio axiStartDoneMM;
XGpio_Config * ConfigPtr0;
XGpio_Config * ConfigPtr1;
XGpio_Config * ConfigPtr2;
XGpio_Config * ConfigPtr3;
XGpio_Config * ConfigPtr4;
XGpio_Config * ConfigPtr5;
XGpio_Config * ConfigPtr6;
XGpio_Config * ConfigPtr7;
XGpio_Config * ConfigPtr8;
XGpio_Config * ConfigPtr9;
XGpio_Config * ConfigPtr10;
XGpio_Config * ConfigPtr11;
XGpio_Config * ConfigPtr12;
XGpio_Config * ConfigPtr13;
XGpio keccak_time;
XGpio matrix_sa_time;
XGpio matrix_as_time;
XGpio shake128_time;
XGpio reset_matrix_sa_time;
XGpio reset_matrix_as_time;
XGpio reset_shake128_time;
XGpio axiStartBusyMatrix;
XGpio axiStartBusyMatrix2;
XGpio axiStartBusyShake;
XGpio axiInlenOutlen;
XGpio general_hw_timer_control;
XGpio general_hw_timer;
XGpio global_timer_control;
XGpio global_timer;
u32 *memoryMMkeccak;
u32 *memoryMatrixS;
u32 *memoryMatrixA;
u32 *memoryMatrixB;
u32 *memoryMatrixA2;
u32 *memoryMatrixS2;
u32 *memoryMatrixB2;
u32 *memoryMMshake;

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

// Defining method for generating matrix A
#undef _AES128_FOR_A_
#define _SHAKE128_FOR_A_
#if defined(_AES128_FOR_A_)
    #define USE_AES128_FOR_A
#elif defined(_SHAKE128_FOR_A_)
    #define USE_SHAKE128_FOR_A
#else
    ##error -- missing method for generating matrix A
#endif

//////////////////////////////////////////////
//
//	Prototypes
//
//////////////////////////////////////////////
void resetTimer(XGpio * pStruct);
void startTimer(XGpio * pStruct);
void stopTimer(XGpio * pStruct);
u32 getTimer(XGpio * pStruct);

#endif /* SRC_INCLUDE_GLOBAL_DEF_H_ */
