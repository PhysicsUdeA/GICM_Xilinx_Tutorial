// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDIVIDE_H
#define XDIVIDE_H

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
#include "xdivide_hw.h"

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
} XDivide_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDivide;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDivide_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDivide_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDivide_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDivide_ReadReg(BaseAddress, RegOffset) \
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
int XDivide_Initialize(XDivide *InstancePtr, u16 DeviceId);
XDivide_Config* XDivide_LookupConfig(u16 DeviceId);
int XDivide_CfgInitialize(XDivide *InstancePtr, XDivide_Config *ConfigPtr);
#else
int XDivide_Initialize(XDivide *InstancePtr, const char* InstanceName);
int XDivide_Release(XDivide *InstancePtr);
#endif


void XDivide_Set_a(XDivide *InstancePtr, u32 Data);
u32 XDivide_Get_a(XDivide *InstancePtr);
void XDivide_Set_b(XDivide *InstancePtr, u32 Data);
u32 XDivide_Get_b(XDivide *InstancePtr);
u32 XDivide_Get_c(XDivide *InstancePtr);
u32 XDivide_Get_c_vld(XDivide *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
