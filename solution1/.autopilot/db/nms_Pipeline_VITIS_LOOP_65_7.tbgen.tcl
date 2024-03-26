set moduleName nms_Pipeline_VITIS_LOOP_65_7
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {nms_Pipeline_VITIS_LOOP_65_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_2 int 7 regular  }
	{ bboxes_info_x1 float 32 regular {array 100 { 1 1 } 1 1 }  }
	{ bitcast_ln67 int 31 regular  }
	{ empty_21 int 23 regular  }
	{ bboxes_info_x1_load float 32 regular  }
	{ bboxes_info_y1 float 32 regular {array 100 { 1 1 } 1 1 }  }
	{ bitcast_ln68 int 31 regular  }
	{ empty_22 int 23 regular  }
	{ bboxes_info_y1_load float 32 regular  }
	{ bboxes_info_x2 float 32 regular {array 100 { 1 1 } 1 1 }  }
	{ bitcast_ln69 int 31 regular  }
	{ empty_23 int 23 regular  }
	{ bboxes_info_x2_load float 32 regular  }
	{ bboxes_info_y2 float 32 regular {array 100 { 1 1 } 1 1 }  }
	{ bitcast_ln70 int 31 regular  }
	{ empty int 23 regular  }
	{ bboxes_info_y2_load float 32 regular  }
	{ mul1 float 32 regular  }
	{ i_2_cast int 7 regular  }
	{ iou_matrix float 32 regular {array 4950 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "i_2", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_x1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln67", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_x1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_y1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln68", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_y1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_x2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln69", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty_23", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_x2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_y2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln70", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_y2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "i_2_cast", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "iou_matrix", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i_2 sc_in sc_lv 7 signal 0 } 
	{ bboxes_info_x1_address0 sc_out sc_lv 7 signal 1 } 
	{ bboxes_info_x1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bboxes_info_x1_q0 sc_in sc_lv 32 signal 1 } 
	{ bboxes_info_x1_address1 sc_out sc_lv 7 signal 1 } 
	{ bboxes_info_x1_ce1 sc_out sc_logic 1 signal 1 } 
	{ bboxes_info_x1_q1 sc_in sc_lv 32 signal 1 } 
	{ bitcast_ln67 sc_in sc_lv 31 signal 2 } 
	{ empty_21 sc_in sc_lv 23 signal 3 } 
	{ bboxes_info_x1_load sc_in sc_lv 32 signal 4 } 
	{ bboxes_info_y1_address0 sc_out sc_lv 7 signal 5 } 
	{ bboxes_info_y1_ce0 sc_out sc_logic 1 signal 5 } 
	{ bboxes_info_y1_q0 sc_in sc_lv 32 signal 5 } 
	{ bboxes_info_y1_address1 sc_out sc_lv 7 signal 5 } 
	{ bboxes_info_y1_ce1 sc_out sc_logic 1 signal 5 } 
	{ bboxes_info_y1_q1 sc_in sc_lv 32 signal 5 } 
	{ bitcast_ln68 sc_in sc_lv 31 signal 6 } 
	{ empty_22 sc_in sc_lv 23 signal 7 } 
	{ bboxes_info_y1_load sc_in sc_lv 32 signal 8 } 
	{ bboxes_info_x2_address0 sc_out sc_lv 7 signal 9 } 
	{ bboxes_info_x2_ce0 sc_out sc_logic 1 signal 9 } 
	{ bboxes_info_x2_q0 sc_in sc_lv 32 signal 9 } 
	{ bboxes_info_x2_address1 sc_out sc_lv 7 signal 9 } 
	{ bboxes_info_x2_ce1 sc_out sc_logic 1 signal 9 } 
	{ bboxes_info_x2_q1 sc_in sc_lv 32 signal 9 } 
	{ bitcast_ln69 sc_in sc_lv 31 signal 10 } 
	{ empty_23 sc_in sc_lv 23 signal 11 } 
	{ bboxes_info_x2_load sc_in sc_lv 32 signal 12 } 
	{ bboxes_info_y2_address0 sc_out sc_lv 7 signal 13 } 
	{ bboxes_info_y2_ce0 sc_out sc_logic 1 signal 13 } 
	{ bboxes_info_y2_q0 sc_in sc_lv 32 signal 13 } 
	{ bboxes_info_y2_address1 sc_out sc_lv 7 signal 13 } 
	{ bboxes_info_y2_ce1 sc_out sc_logic 1 signal 13 } 
	{ bboxes_info_y2_q1 sc_in sc_lv 32 signal 13 } 
	{ bitcast_ln70 sc_in sc_lv 31 signal 14 } 
	{ empty sc_in sc_lv 23 signal 15 } 
	{ bboxes_info_y2_load sc_in sc_lv 32 signal 16 } 
	{ mul1 sc_in sc_lv 32 signal 17 } 
	{ i_2_cast sc_in sc_lv 7 signal 18 } 
	{ iou_matrix_address0 sc_out sc_lv 13 signal 19 } 
	{ iou_matrix_ce0 sc_out sc_logic 1 signal 19 } 
	{ iou_matrix_we0 sc_out sc_logic 1 signal 19 } 
	{ iou_matrix_d0 sc_out sc_lv 32 signal 19 } 
	{ grp_fu_5844_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5844_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5844_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_5844_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_5844_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_5848_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5848_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5848_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_5848_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_5848_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_5854_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5854_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5854_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_5854_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_5858_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5858_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_5858_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_5858_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_5858_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i_2", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "i_2", "role": "default" }} , 
 	{ "name": "bboxes_info_x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "address0" }} , 
 	{ "name": "bboxes_info_x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "ce0" }} , 
 	{ "name": "bboxes_info_x1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "q0" }} , 
 	{ "name": "bboxes_info_x1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "address1" }} , 
 	{ "name": "bboxes_info_x1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "ce1" }} , 
 	{ "name": "bboxes_info_x1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "q1" }} , 
 	{ "name": "bitcast_ln67", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln67", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "bboxes_info_x1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x1_load", "role": "default" }} , 
 	{ "name": "bboxes_info_y1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "address0" }} , 
 	{ "name": "bboxes_info_y1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "ce0" }} , 
 	{ "name": "bboxes_info_y1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "q0" }} , 
 	{ "name": "bboxes_info_y1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "address1" }} , 
 	{ "name": "bboxes_info_y1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "ce1" }} , 
 	{ "name": "bboxes_info_y1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "q1" }} , 
 	{ "name": "bitcast_ln68", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln68", "role": "default" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "bboxes_info_y1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y1_load", "role": "default" }} , 
 	{ "name": "bboxes_info_x2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "address0" }} , 
 	{ "name": "bboxes_info_x2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "ce0" }} , 
 	{ "name": "bboxes_info_x2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "q0" }} , 
 	{ "name": "bboxes_info_x2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "address1" }} , 
 	{ "name": "bboxes_info_x2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "ce1" }} , 
 	{ "name": "bboxes_info_x2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "q1" }} , 
 	{ "name": "bitcast_ln69", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln69", "role": "default" }} , 
 	{ "name": "empty_23", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty_23", "role": "default" }} , 
 	{ "name": "bboxes_info_x2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x2_load", "role": "default" }} , 
 	{ "name": "bboxes_info_y2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "address0" }} , 
 	{ "name": "bboxes_info_y2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "ce0" }} , 
 	{ "name": "bboxes_info_y2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "q0" }} , 
 	{ "name": "bboxes_info_y2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "address1" }} , 
 	{ "name": "bboxes_info_y2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "ce1" }} , 
 	{ "name": "bboxes_info_y2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "q1" }} , 
 	{ "name": "bitcast_ln70", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln70", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "bboxes_info_y2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y2_load", "role": "default" }} , 
 	{ "name": "mul1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul1", "role": "default" }} , 
 	{ "name": "i_2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "i_2_cast", "role": "default" }} , 
 	{ "name": "iou_matrix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "iou_matrix", "role": "address0" }} , 
 	{ "name": "iou_matrix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iou_matrix", "role": "ce0" }} , 
 	{ "name": "iou_matrix_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iou_matrix", "role": "we0" }} , 
 	{ "name": "iou_matrix_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iou_matrix", "role": "d0" }} , 
 	{ "name": "grp_fu_5844_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5844_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5844_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5844_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5844_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5844_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_5844_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5844_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5844_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5844_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_5848_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5848_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5848_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5848_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5848_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5848_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_5848_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5848_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5848_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5848_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_5854_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5854_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5854_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5854_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5854_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5854_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5854_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5854_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5858_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5858_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_5858_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5858_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5858_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "nms_Pipeline_VITIS_LOOP_65_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_x1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln67", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_x1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_y1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln68", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_y1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_x2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln69", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_x2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_y2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln70", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_y2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul1", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "iou_matrix", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "map_arr", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_65_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter43", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter43", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.map_arr_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U19", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U20", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U21", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U22", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U23", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U24", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U25", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U27", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_16_no_dsp_1_U28", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U30", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U31", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U32", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U33", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U34", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nms_Pipeline_VITIS_LOOP_65_7 {
		i_2 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_x1 {Type I LastRead 4 FirstWrite -1}
		bitcast_ln67 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_x1_load {Type I LastRead 0 FirstWrite -1}
		bboxes_info_y1 {Type I LastRead 4 FirstWrite -1}
		bitcast_ln68 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_y1_load {Type I LastRead 0 FirstWrite -1}
		bboxes_info_x2 {Type I LastRead 4 FirstWrite -1}
		bitcast_ln69 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_x2_load {Type I LastRead 0 FirstWrite -1}
		bboxes_info_y2 {Type I LastRead 4 FirstWrite -1}
		bitcast_ln70 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		bboxes_info_y2_load {Type I LastRead 0 FirstWrite -1}
		mul1 {Type I LastRead 0 FirstWrite -1}
		i_2_cast {Type I LastRead 0 FirstWrite -1}
		iou_matrix {Type O LastRead -1 FirstWrite 43}
		map_arr {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45", "Max" : "143"}
	, {"Name" : "Interval", "Min" : "45", "Max" : "143"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i_2 { ap_none {  { i_2 in_data 0 7 } } }
	bboxes_info_x1 { ap_memory {  { bboxes_info_x1_address0 mem_address 1 7 }  { bboxes_info_x1_ce0 mem_ce 1 1 }  { bboxes_info_x1_q0 mem_dout 0 32 }  { bboxes_info_x1_address1 MemPortADDR2 1 7 }  { bboxes_info_x1_ce1 MemPortCE2 1 1 }  { bboxes_info_x1_q1 MemPortDOUT2 0 32 } } }
	bitcast_ln67 { ap_none {  { bitcast_ln67 in_data 0 31 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 23 } } }
	bboxes_info_x1_load { ap_none {  { bboxes_info_x1_load in_data 0 32 } } }
	bboxes_info_y1 { ap_memory {  { bboxes_info_y1_address0 mem_address 1 7 }  { bboxes_info_y1_ce0 mem_ce 1 1 }  { bboxes_info_y1_q0 mem_dout 0 32 }  { bboxes_info_y1_address1 MemPortADDR2 1 7 }  { bboxes_info_y1_ce1 MemPortCE2 1 1 }  { bboxes_info_y1_q1 MemPortDOUT2 0 32 } } }
	bitcast_ln68 { ap_none {  { bitcast_ln68 in_data 0 31 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 23 } } }
	bboxes_info_y1_load { ap_none {  { bboxes_info_y1_load in_data 0 32 } } }
	bboxes_info_x2 { ap_memory {  { bboxes_info_x2_address0 mem_address 1 7 }  { bboxes_info_x2_ce0 mem_ce 1 1 }  { bboxes_info_x2_q0 mem_dout 0 32 }  { bboxes_info_x2_address1 MemPortADDR2 1 7 }  { bboxes_info_x2_ce1 MemPortCE2 1 1 }  { bboxes_info_x2_q1 MemPortDOUT2 0 32 } } }
	bitcast_ln69 { ap_none {  { bitcast_ln69 in_data 0 31 } } }
	empty_23 { ap_none {  { empty_23 in_data 0 23 } } }
	bboxes_info_x2_load { ap_none {  { bboxes_info_x2_load in_data 0 32 } } }
	bboxes_info_y2 { ap_memory {  { bboxes_info_y2_address0 mem_address 1 7 }  { bboxes_info_y2_ce0 mem_ce 1 1 }  { bboxes_info_y2_q0 mem_dout 0 32 }  { bboxes_info_y2_address1 MemPortADDR2 1 7 }  { bboxes_info_y2_ce1 MemPortCE2 1 1 }  { bboxes_info_y2_q1 MemPortDOUT2 0 32 } } }
	bitcast_ln70 { ap_none {  { bitcast_ln70 in_data 0 31 } } }
	empty { ap_none {  { empty in_data 0 23 } } }
	bboxes_info_y2_load { ap_none {  { bboxes_info_y2_load in_data 0 32 } } }
	mul1 { ap_none {  { mul1 in_data 0 32 } } }
	i_2_cast { ap_none {  { i_2_cast in_data 0 7 } } }
	iou_matrix { ap_memory {  { iou_matrix_address0 mem_address 1 13 }  { iou_matrix_ce0 mem_ce 1 1 }  { iou_matrix_we0 mem_we 1 1 }  { iou_matrix_d0 mem_din 1 32 } } }
}
