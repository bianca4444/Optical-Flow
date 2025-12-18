// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XLUCAS_KANADE_HLS_H
#define XLUCAS_KANADE_HLS_H

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
#include "xlucas_kanade_hls_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XLucas_kanade_hls_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XLucas_kanade_hls;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLucas_kanade_hls_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLucas_kanade_hls_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLucas_kanade_hls_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLucas_kanade_hls_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XLucas_kanade_hls_Initialize(XLucas_kanade_hls *InstancePtr, UINTPTR BaseAddress);
XLucas_kanade_hls_Config* XLucas_kanade_hls_LookupConfig(UINTPTR BaseAddress);
#else
int XLucas_kanade_hls_Initialize(XLucas_kanade_hls *InstancePtr, u16 DeviceId);
XLucas_kanade_hls_Config* XLucas_kanade_hls_LookupConfig(u16 DeviceId);
#endif
int XLucas_kanade_hls_CfgInitialize(XLucas_kanade_hls *InstancePtr, XLucas_kanade_hls_Config *ConfigPtr);
#else
int XLucas_kanade_hls_Initialize(XLucas_kanade_hls *InstancePtr, const char* InstanceName);
int XLucas_kanade_hls_Release(XLucas_kanade_hls *InstancePtr);
#endif

void XLucas_kanade_hls_Start(XLucas_kanade_hls *InstancePtr);
u32 XLucas_kanade_hls_IsDone(XLucas_kanade_hls *InstancePtr);
u32 XLucas_kanade_hls_IsIdle(XLucas_kanade_hls *InstancePtr);
u32 XLucas_kanade_hls_IsReady(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_EnableAutoRestart(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_DisableAutoRestart(XLucas_kanade_hls *InstancePtr);

void XLucas_kanade_hls_Set_I1(XLucas_kanade_hls *InstancePtr, u64 Data);
u64 XLucas_kanade_hls_Get_I1(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_Set_I2(XLucas_kanade_hls *InstancePtr, u64 Data);
u64 XLucas_kanade_hls_Get_I2(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_Set_u(XLucas_kanade_hls *InstancePtr, u64 Data);
u64 XLucas_kanade_hls_Get_u(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_Set_v(XLucas_kanade_hls *InstancePtr, u64 Data);
u64 XLucas_kanade_hls_Get_v(XLucas_kanade_hls *InstancePtr);

void XLucas_kanade_hls_InterruptGlobalEnable(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_InterruptGlobalDisable(XLucas_kanade_hls *InstancePtr);
void XLucas_kanade_hls_InterruptEnable(XLucas_kanade_hls *InstancePtr, u32 Mask);
void XLucas_kanade_hls_InterruptDisable(XLucas_kanade_hls *InstancePtr, u32 Mask);
void XLucas_kanade_hls_InterruptClear(XLucas_kanade_hls *InstancePtr, u32 Mask);
u32 XLucas_kanade_hls_InterruptGetEnabled(XLucas_kanade_hls *InstancePtr);
u32 XLucas_kanade_hls_InterruptGetStatus(XLucas_kanade_hls *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
