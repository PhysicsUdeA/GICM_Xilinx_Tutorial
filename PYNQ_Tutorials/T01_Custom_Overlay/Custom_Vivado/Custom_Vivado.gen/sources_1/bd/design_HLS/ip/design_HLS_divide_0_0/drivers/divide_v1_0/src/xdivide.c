// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdivide.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDivide_CfgInitialize(XDivide *InstancePtr, XDivide_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDivide_Set_a(XDivide *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_A_DATA, Data);
}

u32 XDivide_Get_a(XDivide *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_A_DATA);
    return Data;
}

void XDivide_Set_b(XDivide *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDivide_WriteReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_B_DATA, Data);
}

u32 XDivide_Get_b(XDivide *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_B_DATA);
    return Data;
}

u32 XDivide_Get_c(XDivide *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_C_DATA);
    return Data;
}

u32 XDivide_Get_c_vld(XDivide *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDivide_ReadReg(InstancePtr->Control_BaseAddress, XDIVIDE_CONTROL_ADDR_C_CTRL);
    return Data & 0x1;
}

