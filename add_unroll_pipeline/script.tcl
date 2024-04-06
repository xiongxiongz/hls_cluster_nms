############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project cluser_nms_comparison
set_top nms
add_files cluser_nms_comparison/src/nms_impl.cpp
add_files cluser_nms_comparison/src/nms_impl.h
add_files -tb cluser_nms_comparison/src/nms_impl_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "add_unroll_pipeline" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level all
source "./cluser_nms_comparison/add_unroll_pipeline/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
