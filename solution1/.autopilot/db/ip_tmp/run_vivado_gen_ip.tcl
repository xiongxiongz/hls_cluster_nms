create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_fadd_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_faddfsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_fdiv_32ns_32ns_32_16_no_dsp_1_ip.tcl"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/syn/verilog/nms_fsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
