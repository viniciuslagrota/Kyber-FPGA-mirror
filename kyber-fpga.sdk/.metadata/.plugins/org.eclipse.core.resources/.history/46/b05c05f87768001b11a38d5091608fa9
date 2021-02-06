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
void printChipTemperature()
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
