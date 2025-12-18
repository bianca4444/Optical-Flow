// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xlucas_kanade_hls.h"

extern XLucas_kanade_hls_Config XLucas_kanade_hls_ConfigTable[];

#ifdef SDT
XLucas_kanade_hls_Config *XLucas_kanade_hls_LookupConfig(UINTPTR BaseAddress) {
	XLucas_kanade_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XLucas_kanade_hls_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XLucas_kanade_hls_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XLucas_kanade_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLucas_kanade_hls_Initialize(XLucas_kanade_hls *InstancePtr, UINTPTR BaseAddress) {
	XLucas_kanade_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLucas_kanade_hls_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLucas_kanade_hls_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XLucas_kanade_hls_Config *XLucas_kanade_hls_LookupConfig(u16 DeviceId) {
	XLucas_kanade_hls_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XLUCAS_KANADE_HLS_NUM_INSTANCES; Index++) {
		if (XLucas_kanade_hls_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XLucas_kanade_hls_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XLucas_kanade_hls_Initialize(XLucas_kanade_hls *InstancePtr, u16 DeviceId) {
	XLucas_kanade_hls_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XLucas_kanade_hls_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XLucas_kanade_hls_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

