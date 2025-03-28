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
#include <stdbool.h>
#include <limits.h>

//Hardware
#include "xil_printf.h"
#include "sleep.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "xuartps.h"
#include "xadcps.h"
#include "xaxidma.h"
#include "xscutimer.h"

//Software
#include "params.h"
#include "test_kem.h"
#include "kem.h"
#include "reduce.h"
#include "aes256ctr.h"
#include "aes256gcm.h"
#include "weg_smw3000.h"

//////////////////////////////////////////////
//
//	Pinout
//
//////////////////////////////////////////////
/*
 * PMOD_09: RX
 * PMOD_10: TX
 * PMOD_11: GND
 */

//////////////////////////////////////////////
//
//	CHANGE ONLY HERE
//
//////////////////////////////////////////////
#define KEM_TEST_ONLY		0	//1: only perform KEM | 0: perform KEM and data exchange.
#define PERFORMANCE_MODE	0	//1: suppress prints | 0: enable prints
#define USE_HW_ACCELERATION	1	//1: use hardware acceleration | 0: do not use hardware acceleration
#define SERVER_INIT			1	//1: Server generate key pair and send PK | 0: Server waits PK from client
#define SIMULATED_DATA		0	//1: fixed and simulated data from SMW3000 | 0: acquire data from SMW3000
#define CHANGE_KEY_TIME		60  //In seconds, if zero, does not perform AES. Only valid when SERVER_INIT = 0
#define INACTIVE_TIMEOUT	30	//In seconds.

//////////////////////////////////////////////
//
//	SMW3000
//
//////////////////////////////////////////////
#define MAX_TRY				5 	//Maximum attempts to connect with SMW3000

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
//	Ethernet
//
//////////////////////////////////////////////
#define PERFORMANCE_TEST	0
#define ENABLE_TIMEOUT		0

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
//	Software timer timeout counter
//
//////////////////////////////////////////////
#define TIMER_LOAD_VALUE		(XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ/2) //1 second if prescale = 0
#define PRESCALE				0 // Total time wait = (PRESCALE + 1) * TIMER_LOAD_VALUE

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
#define GET_GLOBAL_TIME				0 //If 1, GET_TOTAL_IP_TIME must be zero.
#define GET_TOTAL_IP_TIME			0 //If 1, GET_GLOBAL_TIME must be zero.
#define GET_PROCESSING_IP_TIME		0

//////////////////////////////////////////////
//
//	Debug defines
//
//////////////////////////////////////////////
#define DEBUG_GLOBAL_ENABLED 		1
#define DEBUG_ERROR					1

#if PERFORMANCE_MODE == 1
	//Main
	#define DEBUG_MAIN					0
	//Test KEM
	#define DEBUG_TEST_KEM				0
	//Accelerations
	#define DEBUG_TIME					0
	#define DEBUG_KYBER					0
	//ETH
	#define	DEBUG_ETH					1
	//SMW3000
	#define DEBUG_SM_LVL0				0
	#define DEBUG_SM_LVL1				0
	#define DEBUG_SM_LVL2				0
	#define DEBUG_SM_ERROR				1
#else
	//Main
	#define DEBUG_MAIN					1
	//Test KEM
	#define DEBUG_TEST_KEM				1
	//Accelerations
	#define DEBUG_TIME					1
	#define DEBUG_KYBER					1
	//ETH
	#define	DEBUG_ETH					1
	//SMW3000
	#define DEBUG_SM_LVL0				0
	#define DEBUG_SM_LVL1				0
	#define DEBUG_SM_LVL2				1
	#define DEBUG_SM_ERROR				1
#endif

//////////////////////////////////////////////
//
//	SMW3000
//
//////////////////////////////////////////////
#define LOOP_TEST_SMW3000			0

//////////////////////////////////////////////
//
//	Debug print
//
//////////////////////////////////////////////
//#define print_debug(debugLevel, ...) \
//	do { \
//		if (DEBUG_GLOBAL_ENABLED && (debugLevel == 1)) \
//			printf(__VA_ARGS__); \
//		} while (0)

#define print_debug(debugLevel, fmt, ...) \
	do { \
		if (DEBUG_GLOBAL_ENABLED && (debugLevel == 1)) \
			printf("%s:%d:%s() | " fmt, __FILE__, __LINE__, __func__, ## __VA_ARGS__); \
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
//	Kyber variables
//
//////////////////////////////////////////////
#if SERVER_INIT == 0
enum state
{
	WAITING_SERVER_CONNECTION,
	CONNECTED_TO_SERVER,
	CREATE_KEY_PAIR,
	SEND_PK,
	WAITING_CT,
	CALCULATE_SHARED_SECRET,
	CALCULATE_AES_BLOCK,
	WAIT_CIPHERED_DATA,
	DECIPHER_MESSAGE
};
#else
enum state
{
	WAITING_PK,
	CALCULATING_CT,
	SENDING_CT,
	GET_SMW3000_DATA,
	CIPHER_MESSAGE,
	SEND_CIPHER_MESSAGE,
	WAITING_CIPHER_MESSAGE_ACK,
	RECONNECTING
};
#endif

enum state st;
bool bCtReceived;
uint8_t pk[CRYPTO_PUBLICKEYBYTES];
#if SERVER_INIT == 0
uint8_t sk[CRYPTO_SECRETKEYBYTES];
#endif
uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
#if SERVER_INIT == 0
uint8_t key_a[CRYPTO_BYTES];
#else
uint8_t key_b[CRYPTO_BYTES];
#endif
struct netif *netif;

//////////////////////////////////////////////
//
//	AES
//
//////////////////////////////////////////////
uint8_t u8AesKeystream[1024];
char cPlaintext[1024];
char cCiphertext[1024];

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

XUartPs_Config * XUartConfig0;
XUartPs XUart0;

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
u32 getAndInitializeRandomSeed();
void setRandomSeed(u32 u32RandomSeed);
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
uint16_t crc16(uint8_t * p, unsigned long len);
uint8_t incrementNonce(uint8_t * nonce, size_t sSize);
uint8_t generateNonce(uint32_t u32Seed, uint8_t * nonce, size_t sSize);
void printNonce(uint8_t * nonce);

#endif /* SRC_INCLUDE_GLOBAL_DEF_H_ */
