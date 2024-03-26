// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __nms_mac_muladd_7ns_7ns_7ns_13_4_1__HH__
#define __nms_mac_muladd_7ns_7ns_7ns_13_4_1__HH__
#include "nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(nms_mac_muladd_7ns_7ns_7ns_13_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0 nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U;

    SC_CTOR(nms_mac_muladd_7ns_7ns_7ns_13_4_1):  nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U ("nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U") {
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.clk(clk);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.rst(reset);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.ce(ce);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in0(din0);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in1(din1);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.in2(din2);
        nms_mac_muladd_7ns_7ns_7ns_13_4_1_DSP48_0_U.dout(dout);

    }

};

#endif //
