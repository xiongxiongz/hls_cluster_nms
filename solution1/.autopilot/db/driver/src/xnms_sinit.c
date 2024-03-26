// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xnms.h"

extern XNms_Config XNms_ConfigTable[];

#ifdef SDT
XNms_Config *XNms_LookupConfig(UINTPTR BaseAddress) {
	XNms_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XNms_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XNms_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XNms_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNms_Initialize(XNms *InstancePtr, UINTPTR BaseAddress) {
	XNms_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNms_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNms_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XNms_Config *XNms_LookupConfig(u16 DeviceId) {
	XNms_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XNMS_NUM_INSTANCES; Index++) {
		if (XNms_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XNms_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XNms_Initialize(XNms *InstancePtr, u16 DeviceId) {
	XNms_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XNms_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XNms_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

