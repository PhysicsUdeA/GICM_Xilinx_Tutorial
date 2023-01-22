// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdivide.h"

extern XDivide_Config XDivide_ConfigTable[];

XDivide_Config *XDivide_LookupConfig(u16 DeviceId) {
	XDivide_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDIVIDE_NUM_INSTANCES; Index++) {
		if (XDivide_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDivide_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDivide_Initialize(XDivide *InstancePtr, u16 DeviceId) {
	XDivide_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDivide_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDivide_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

