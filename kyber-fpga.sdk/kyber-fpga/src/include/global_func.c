/*
 * global_func.c
 *
 *  Created on: 5 de fev de 2021
 *      Author: vinicius
 */

#include "global_def.h"

//////////////////////////////////////////////
//
//	Fraction to integrer
//
//////////////////////////////////////////////
int XAdcFractionToInt(float FloatNum)
{
	float Temp;

	Temp = FloatNum;
	if (FloatNum < 0) {
		Temp = -(FloatNum);
	}

	return( ((int)((Temp -(float)((int)Temp)) * (1000.0f))));
}

//////////////////////////////////////////////
//
//	Print temperature
//
//////////////////////////////////////////////
void getChipTemperature()
{
	static XAdcPs XAdcInst;
	XAdcPs_Config *ConfigPtr;
	u32 TempRawData;
	float TempData;
	XAdcPs *XAdcInstPtr = &XAdcInst;

	ConfigPtr = XAdcPs_LookupConfig(XADC_DEVICE_ID);
	XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr, ConfigPtr->BaseAddress);
	XAdcPs_SelfTest(XAdcInstPtr);
	XAdcPs_SetSequencerMode(XAdcInstPtr, XADCPS_SEQ_MODE_SAFE);
	TempRawData = XAdcPs_GetAdcData(XAdcInstPtr, XADCPS_CH_TEMP);
	srand(TempRawData); //Get a random seed here!
	TempData = XAdcPs_RawToTemperature(TempRawData);
	print_debug(DEBUG_MAIN, "[MAIN] The Current Temperature is %0d.%03d Centigrades\n", (int)(TempData), XAdcFractionToInt(TempData));
}

//////////////////////////////////////////////
//
//	LED initialize
//
//////////////////////////////////////////////
void ledInit(XGpioPs * Gpio)
{
	//---- Blink led ----
	XGpioPs_Config *GPIOConfigPtr;
	GPIOConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	XGpioPs_CfgInitialize(Gpio, GPIOConfigPtr, GPIOConfigPtr ->BaseAddr);
	XGpioPs_SetDirectionPin(Gpio, ledpin, 1);
	XGpioPs_SetOutputEnablePin(Gpio, ledpin, 1);
}

//////////////////////////////////////////////
//
//	Configure Kyber K
//
//////////////////////////////////////////////
void configKyberK(XGpio_Config * pConfigStruct, XGpio * pGpioStruct, uint8_t ui8DeviceId, uint8_t ui8Channel)
{
	pConfigStruct = XGpio_LookupConfig(ui8DeviceId);
	XGpio_CfgInitialize(pGpioStruct, pConfigStruct, pConfigStruct->BaseAddress);
	XGpio_DiscreteWrite(pGpioStruct, ui8Channel, KYBER_K); //Set enable bit and reset bit low.
}

//////////////////////////////////////////////
//
//	Configure timer
//
//////////////////////////////////////////////
void configTimer(XGpio_Config * pConfigStruct, XGpio * pGpioStruct, uint8_t ui8DeviceId, uint8_t ui8Channel)
{
	pConfigStruct = XGpio_LookupConfig(ui8DeviceId);
	XGpio_CfgInitialize(pGpioStruct, pConfigStruct, pConfigStruct->BaseAddress);
	XGpio_DiscreteWrite(pGpioStruct, ui8Channel, 0x0); //Set enable bit and reset bit low.
}

//////////////////////////////////////////////
//
//	Reset hardware timer
//
//////////////////////////////////////////////
void resetTimer(XGpio * pStruct, uint8_t ui8Channel)
{
	XGpio_DiscreteWrite(pStruct, ui8Channel, 0x0); //Set reset bit low.
	XGpio_DiscreteWrite(pStruct, ui8Channel, 0x1); //Set reset bit high.
	XGpio_DiscreteWrite(pStruct, ui8Channel, 0x0); //Set reset bit low.
}

//////////////////////////////////////////////
//
//	Start hardware timer
//
//////////////////////////////////////////////
void startTimer(XGpio * pStruct, uint8_t ui8Channel)
{
	XGpio_DiscreteWrite(pStruct, ui8Channel, 0x2); //Set enable bit high.
}

//////////////////////////////////////////////
//
//	Stop hardware timer
//
//////////////////////////////////////////////
void stopTimer(XGpio * pStruct, uint8_t ui8Channel)
{
	XGpio_DiscreteWrite(pStruct, ui8Channel, 0x0); //Set enable bit low.
}

//////////////////////////////////////////////
//
//	Get hardware timer
//
//////////////////////////////////////////////
u32 getTimer(XGpio * pStruct, uint8_t ui8Channel)
{
	return XGpio_DiscreteRead(pStruct, ui8Channel);
}

//////////////////////////////////////////////
//
//	Float to integer and fraction
//
//////////////////////////////////////////////
void floatToIntegers(double dValue, u32 * u32Integer, u32 * u32Fraction)
{
	*u32Integer = dValue;
	*u32Fraction = (dValue - *u32Integer) * 1000;
}

//////////////////////////////////////////////
//
//	Reset time variables
//
//////////////////////////////////////////////
void resetTimeVariables()
{
	//Reset time variables
	u32PolyTomontHwTime = u32PolyTomontHwIt = 0;
	u32PolyTomontSwTime = u32PolyTomontSwIt = 0;

	//Reset time variables
	u32PolyvecReduceHwTime = u32PolyvecReduceHwIt = 0;
	u32PolyvecReduceSwTime = u32PolyvecReduceSwIt = 0;

	//Reset time variables
	u32PolyvecBasemulAccMontHwTime = u32PolyvecBasemulAccMontHwIt = 0;
	u32PolyvecBasemulAccMontSwTime = u32PolyvecBasemulAccMontSwIt = 0;

	//Reset time variables
	u32PolyvecNttHwTime = u32PolyvecNttHwIt = 0;
	u32PolyvecNttSwTime = u32PolyvecNttSwIt = 0;

	//Reset time variables
	u32PolyvecInvnttHwTime = u32PolyvecInvnttHwIt = 0;
	u32PolyvecInvnttSwTime = u32PolyvecInvnttSwIt = 0;

	//Reset time variables
	u32KeccakHwTime = u32KeccakHwIt = 0;
	u32KeccakSwTime = u32KeccakSwIt = 0;
}

//////////////////////////////////////////////
//
//	Print time variables
//
//////////////////////////////////////////////
void printTimeVariables()
{
	u32 u32HwTime[] = {u32PolyTomontHwTime, u32PolyvecReduceHwTime, u32PolyvecBasemulAccMontHwTime, u32PolyvecNttHwTime, u32PolyvecInvnttHwTime, u32KeccakHwTime};
	u32 u32SwTime[] = {u32PolyTomontSwTime, u32PolyvecReduceSwTime, u32PolyvecBasemulAccMontSwTime, u32PolyvecNttSwTime, u32PolyvecInvnttSwTime, u32KeccakSwTime};
	u32 u32HwIt[] 	= {u32PolyTomontHwIt, u32PolyvecReduceHwIt, u32PolyvecBasemulAccMontHwIt, u32PolyvecNttHwIt, u32PolyvecInvnttHwIt, u32KeccakHwIt};
	u32 u32SwIt[] 	= {u32PolyTomontSwIt, u32PolyvecReduceSwIt, u32PolyvecBasemulAccMontSwIt, u32PolyvecNttSwIt, u32PolyvecInvnttSwIt, u32KeccakSwIt};
	u32 u32Integer[2], u32Fraction[2], u32AvgInteger[2], u32AvgFraction[2], u32ImproveInteger, u32ImproveFraction;
	size_t n = sizeof(u32HwTime)/sizeof(u32HwTime[0]);
	u32 u32Cycles = (1 << n) >> 1; //Each state uses only hardware or software, must be divided by 2.
	const char * array[] = {
	    "Poly Tomont",
	    "Polyvec Reduce",
	    "Polyvec Basemul Acc Mont",
		"Polyvec NTT",
		"Polyvec INVNTT",
		"Keccak"
	};

	print_debug(DEBUG_TIME, "[TIME] u32Cycles: %lu | n: %d | u32SystemState: 0x%x\n", u32Cycles, n, u32SystemState);
	for(int i = 0; i < n; i++)
	{
		floatToIntegers((double)u32SwTime[i]/1000000, 					&u32Integer[0], &u32Fraction[0]);
		floatToIntegers((double)u32SwTime[i]/u32SwIt[i]/1000, 			&u32AvgInteger[0], &u32AvgFraction[0]);
		floatToIntegers((double)u32HwTime[i]/1000000, 					&u32Integer[1], &u32Fraction[1]);
		floatToIntegers((double)u32HwTime[i]/u32HwIt[i]/1000, 			&u32AvgInteger[1], &u32AvgFraction[1]);
		floatToIntegers((1.0 - (double)u32HwTime[i]/u32SwTime[i])*100, 	&u32ImproveInteger, &u32ImproveFraction);

		print_debug(DEBUG_TIME, "[TIME] %s SW total iteractions: %lu | %s SW iteractions per cicle: %lu | %s SW total time: %lu ns or %lu.%03lu ms | %s SW avg time: %lu.%03lu us\n", array[i], u32SwIt[i], array[i], u32SwIt[i]/u32Cycles, array[i], u32SwTime[i], u32Integer[0], u32Fraction[0], array[i], u32AvgInteger[0], u32AvgFraction[0]);
		print_debug(DEBUG_TIME, "[TIME] %s HW total iteractions: %lu | %s HW iteractions per cicle: %lu | %s HW total time: %lu ns or %lu.%03lu ms | %s HW avg time: %lu.%03lu us | %s improvement: %lu.%03lu%%\n", array[i], u32HwIt[i], array[i], u32HwIt[i]/u32Cycles, array[i], u32HwTime[i], u32Integer[1], u32Fraction[1], array[i], u32AvgInteger[1], u32AvgFraction[1], array[i], u32ImproveInteger, u32ImproveFraction);

	}
}
