/*
 * weg_smw3000.h
 *
 *  Created on: 20 de ago de 2021
 *      Author: vinicius
 */

#ifndef SRC_INCLUDE_WEG_SMW3000_H_
#define SRC_INCLUDE_WEG_SMW3000_H_

#include "global_def.h"

//////////////////////////////////////////////
//
//	Defines
//
//////////////////////////////////////////////
#define MAX_BUFFER_LEN 						512 //bytes
#define MAX_WAIT_RESPONSE					5 //seconds
#define WAIT_RESPONSE_STEP					10000 //us
#define MAX_WAIT_RESPONSE_COUNTER			MAX_WAIT_RESPONSE * 1000000 / WAIT_RESPONSE_STEP

//////////////////////////////////////////////
//
//	Errors
//
//////////////////////////////////////////////

//Low level
#define OK							0x00000000
#define TRANSMISSION_FAILED			0x00000001
#define PACKAGE_ERROR				0x00000002
#define NO_RECEIVED_DATA			0x00000003
#define MISSING_END_FLAG			0x00000004

//Mid level
#define TIMEOUT						0x00010000

//High level
#define CONNECTION_FAILED			0x01000000
#define DISCONNECTION_FAILED		0x02000000
#define AUTHENTICATION_FAILED		0x03000000
#define DEVICE_ID_FAILED			0x04000000
#define TIMESTAMP_FAILED			0x05000000
#define VOLTAGE_FAILED				0x06000000
#define CURRENT_FAILED				0x07000000
#define POINTER_DEALLOCATED			0x08000000
#define CRC_FAILED					0x09000000

//////////////////////////////////////////////
//
//	Structures
//
//////////////////////////////////////////////
typedef struct smControlStruct {
	u8 u8Connected;
	u8 u8Authenticated;
} smControlStruct;

typedef struct smBufferStruct {
	u32 u32TxBufferLen;
	u8 	u8TxBuffer[MAX_BUFFER_LEN];
	u32 u32RxBufferLen;
	u8 	u8RxBuffer[MAX_BUFFER_LEN];
} smBufferStruct;

typedef struct smDataStruct {
	u32 u32Seed;
	u8 u8DeviceName[13];
	u8 u8Timestamp[7];
	u32 u32VoltageL1;
	u32 u32VoltageL2;
	u32 u32VoltageL3;
	u32 u32CurrentL1;
	u32 u32CurrentL2;
	u32 u32CurrentL3;
	u32 u32CurrentN;
	u16 u16Crc;
} smDataStruct;

//////////////////////////////////////////////
//
//	Prototypes
//
//////////////////////////////////////////////
void smw3000Init();
u32 smw3000Connect();
u32 smw3000Authenticate();
u32 smw3000Disconnect();
u32 smw3000GetDeviceID();
u32 smw3000GetTimestamp();
u32 smw3000GetLineVoltage(u8 u8Line);
u32 smw3000GetLineCurrent(u8 u8Line);
u32 smw3000GetAllData();
u32 smw3000CipherDataStruct(u8 * u8Keystream);
u32 smw3000DecipherDataStruct(u8 * u8Keystream);
smControlStruct * smw3000GetControlStruct();
smDataStruct * smw3000GetDataStruct();
smDataStruct * smw3000GetCipheredDataStruct();
u32 smw3000CalculateCrc();
u32 smw3000CheckCrc();
u32 smw3000SendBuffer();
u32 smw3000RecvBuffer();
u32 smw3000WaitForData();
void smw3000PrintRxBuffer();
void smw3000AddControlPointer();
void smw3000PrintDataStruct(smDataStruct * psmDataStruct);

#endif /* SRC_INCLUDE_WEG_SMW3000_H_ */
