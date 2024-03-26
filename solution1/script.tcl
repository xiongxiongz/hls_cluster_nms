############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project cluster_nms_impl
set_top nms
add_files cluster_nms_impl/src/nms_impl.cpp
add_files cluster_nms_impl/src/nms_impl.h
add_files -tb cluster_nms_impl/src/nms_impl_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level all
config_export -format ip_catalog -rtl verilog -vivado_clock 10
source "./cluster_nms_impl/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
