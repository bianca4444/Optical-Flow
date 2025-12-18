// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xlucas_kanade_hls.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLucas_kanade_hls_CfgInitialize(XLucas_kanade_hls *InstancePtr, XLucas_kanade_hls_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLucas_kanade_hls_Start(XLucas_kanade_hls *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLucas_kanade_hls_IsDone(XLucas_kanade_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLucas_kanade_hls_IsIdle(XLucas_kanade_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLucas_kanade_hls_IsReady(XLucas_kanade_hls *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLucas_kanade_hls_EnableAutoRestart(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLucas_kanade_hls_DisableAutoRestart(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_AP_CTRL, 0);
}

void XLucas_kanade_hls_Set_I1(XLucas_kanade_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I1_DATA, (u32)(Data));
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I1_DATA + 4, (u32)(Data >> 32));
}

u64 XLucas_kanade_hls_Get_I1(XLucas_kanade_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I1_DATA);
    Data += (u64)XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I1_DATA + 4) << 32;
    return Data;
}

void XLucas_kanade_hls_Set_I2(XLucas_kanade_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I2_DATA, (u32)(Data));
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I2_DATA + 4, (u32)(Data >> 32));
}

u64 XLucas_kanade_hls_Get_I2(XLucas_kanade_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I2_DATA);
    Data += (u64)XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_I2_DATA + 4) << 32;
    return Data;
}

void XLucas_kanade_hls_Set_u(XLucas_kanade_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_U_DATA, (u32)(Data));
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_U_DATA + 4, (u32)(Data >> 32));
}

u64 XLucas_kanade_hls_Get_u(XLucas_kanade_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_U_DATA);
    Data += (u64)XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_U_DATA + 4) << 32;
    return Data;
}

void XLucas_kanade_hls_Set_v(XLucas_kanade_hls *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_V_DATA, (u32)(Data));
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_V_DATA + 4, (u32)(Data >> 32));
}

u64 XLucas_kanade_hls_Get_v(XLucas_kanade_hls *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_V_DATA);
    Data += (u64)XLucas_kanade_hls_ReadReg(InstancePtr->Control_r_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_R_ADDR_V_DATA + 4) << 32;
    return Data;
}

void XLucas_kanade_hls_InterruptGlobalEnable(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_GIE, 1);
}

void XLucas_kanade_hls_InterruptGlobalDisable(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_GIE, 0);
}

void XLucas_kanade_hls_InterruptEnable(XLucas_kanade_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_IER);
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_IER, Register | Mask);
}

void XLucas_kanade_hls_InterruptDisable(XLucas_kanade_hls *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_IER);
    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLucas_kanade_hls_InterruptClear(XLucas_kanade_hls *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLucas_kanade_hls_WriteReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_ISR, Mask);
}

u32 XLucas_kanade_hls_InterruptGetEnabled(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_IER);
}

u32 XLucas_kanade_hls_InterruptGetStatus(XLucas_kanade_hls *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLucas_kanade_hls_ReadReg(InstancePtr->Control_BaseAddress, XLUCAS_KANADE_HLS_CONTROL_ADDR_ISR);
}

