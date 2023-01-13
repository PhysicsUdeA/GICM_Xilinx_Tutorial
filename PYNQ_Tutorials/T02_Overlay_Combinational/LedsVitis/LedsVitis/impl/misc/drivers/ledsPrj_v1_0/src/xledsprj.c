// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xledsprj.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLedsprj_CfgInitialize(XLedsprj *InstancePtr, XLedsprj_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLedsprj_Set_led_reg(XLedsprj *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLedsprj_WriteReg(InstancePtr->Control_BaseAddress, XLEDSPRJ_CONTROL_ADDR_LED_REG_DATA, Data);
}

u32 XLedsprj_Get_led_reg(XLedsprj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLedsprj_ReadReg(InstancePtr->Control_BaseAddress, XLEDSPRJ_CONTROL_ADDR_LED_REG_DATA);
    return Data;
}

u32 XLedsprj_Get_sw_reg(XLedsprj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLedsprj_ReadReg(InstancePtr->Control_BaseAddress, XLEDSPRJ_CONTROL_ADDR_SW_REG_DATA);
    return Data;
}

u32 XLedsprj_Get_sw_reg_vld(XLedsprj *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLedsprj_ReadReg(InstancePtr->Control_BaseAddress, XLEDSPRJ_CONTROL_ADDR_SW_REG_CTRL);
    return Data & 0x1;
}

