// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xledsprj.h"

extern XLedsprj_Config XLedsprj_ConfigTable[];

XLedsprj_Config *XLedsprj_LookupConfig(u16 DeviceId) {
	XLedsprj_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLEDSPRJ_NUM_INSTANCES; Index++) {
		if (XLedsprj_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLedsprj_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLedsprj_Initialize(XLedsprj *InstancePtr, u16 DeviceId) {
	XLedsprj_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLedsprj_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLedsprj_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

