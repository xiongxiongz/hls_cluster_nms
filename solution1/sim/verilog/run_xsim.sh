
/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vivado/2023.2/bin/xelab xil_defaultlib.apatb_nms_top glbl -Oenable_linking_all_libraries  -prj nms.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_1_16 -L floating_point_v7_0_21 --lib "ieee_proposed=./ieee_proposed" -s nms -debug all
/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vivado/2023.2/bin/xsim --noieeewarnings nms -tclbatch nms.tcl -view nms_dataflow_ana.wcfg -protoinst nms.protoinst

