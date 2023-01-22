// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLEDSPRJ_H
#define XLEDSPRJ_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xledsprj_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XLedsprj_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLedsprj;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLedsprj_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLedsprj_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLedsprj_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLedsprj_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XLedsprj_Initialize(XLedsprj *InstancePtr, u16 DeviceId);
XLedsprj_Config* XLedsprj_LookupConfig(u16 DeviceId);
int XLedsprj_CfgInitialize(XLedsprj *InstancePtr, XLedsprj_Config *ConfigPtr);
#else
int XLedsprj_Initialize(XLedsprj *InstancePtr, const char* InstanceName);
int XLedsprj_Release(XLedsprj *InstancePtr);
#endif


void XLedsprj_Set_led_reg(XLedsprj *InstancePtr, u32 Data);
u32 XLedsprj_Get_led_reg(XLedsprj *InstancePtr);
u32 XLedsprj_Get_sw_reg(XLedsprj *InstancePtr);
u32 XLedsprj_Get_sw_reg_vld(XLedsprj *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
