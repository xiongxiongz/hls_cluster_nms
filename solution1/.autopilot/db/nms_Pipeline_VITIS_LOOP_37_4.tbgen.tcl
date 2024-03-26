set moduleName nms_Pipeline_VITIS_LOOP_37_4
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
set C_modelName {nms_Pipeline_VITIS_LOOP_37_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln36 int 7 regular  }
	{ zext_ln24 int 6 regular  }
	{ bboxes_info_score float 32 regular {array 100 { 0 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ tmp_1 int 8 regular  }
	{ empty int 23 regular  }
	{ temp_score float 32 regular  }
	{ zext_ln27 int 6 regular  }
	{ bboxes_info_index int 7 regular {array 100 { 2 3 } 1 1 }  }
	{ bboxes_info_y2 float 32 regular {array 100 { 2 3 } 1 1 }  }
	{ bboxes_info_x2 float 32 regular {array 100 { 2 3 } 1 1 }  }
	{ bboxes_info_y1 float 32 regular {array 100 { 2 3 } 1 1 }  }
	{ bboxes_info_x1 float 32 regular {array 100 { 2 3 } 1 1 }  }
	{ zext_ln46_out int 7 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln36", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln24", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_score", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "temp_score", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln27", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "bboxes_info_index", "interface" : "memory", "bitwidth" : 7, "direction" : "READWRITE"} , 
 	{ "Name" : "bboxes_info_y2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bboxes_info_x2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bboxes_info_y1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bboxes_info_x1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln46_out", "interface" : "wire", "bitwidth" : 7, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln36 sc_in sc_lv 7 signal 0 } 
	{ zext_ln24 sc_in sc_lv 6 signal 1 } 
	{ bboxes_info_score_address0 sc_out sc_lv 7 signal 2 } 
	{ bboxes_info_score_ce0 sc_out sc_logic 1 signal 2 } 
	{ bboxes_info_score_we0 sc_out sc_logic 1 signal 2 } 
	{ bboxes_info_score_d0 sc_out sc_lv 32 signal 2 } 
	{ bboxes_info_score_address1 sc_out sc_lv 7 signal 2 } 
	{ bboxes_info_score_ce1 sc_out sc_logic 1 signal 2 } 
	{ bboxes_info_score_q1 sc_in sc_lv 32 signal 2 } 
	{ tmp_1 sc_in sc_lv 8 signal 3 } 
	{ empty sc_in sc_lv 23 signal 4 } 
	{ temp_score sc_in sc_lv 32 signal 5 } 
	{ zext_ln27 sc_in sc_lv 6 signal 6 } 
	{ bboxes_info_index_address0 sc_out sc_lv 7 signal 7 } 
	{ bboxes_info_index_ce0 sc_out sc_logic 1 signal 7 } 
	{ bboxes_info_index_we0 sc_out sc_logic 1 signal 7 } 
	{ bboxes_info_index_d0 sc_out sc_lv 7 signal 7 } 
	{ bboxes_info_index_q0 sc_in sc_lv 7 signal 7 } 
	{ bboxes_info_y2_address0 sc_out sc_lv 7 signal 8 } 
	{ bboxes_info_y2_ce0 sc_out sc_logic 1 signal 8 } 
	{ bboxes_info_y2_we0 sc_out sc_logic 1 signal 8 } 
	{ bboxes_info_y2_d0 sc_out sc_lv 32 signal 8 } 
	{ bboxes_info_y2_q0 sc_in sc_lv 32 signal 8 } 
	{ bboxes_info_x2_address0 sc_out sc_lv 7 signal 9 } 
	{ bboxes_info_x2_ce0 sc_out sc_logic 1 signal 9 } 
	{ bboxes_info_x2_we0 sc_out sc_logic 1 signal 9 } 
	{ bboxes_info_x2_d0 sc_out sc_lv 32 signal 9 } 
	{ bboxes_info_x2_q0 sc_in sc_lv 32 signal 9 } 
	{ bboxes_info_y1_address0 sc_out sc_lv 7 signal 10 } 
	{ bboxes_info_y1_ce0 sc_out sc_logic 1 signal 10 } 
	{ bboxes_info_y1_we0 sc_out sc_logic 1 signal 10 } 
	{ bboxes_info_y1_d0 sc_out sc_lv 32 signal 10 } 
	{ bboxes_info_y1_q0 sc_in sc_lv 32 signal 10 } 
	{ bboxes_info_x1_address0 sc_out sc_lv 7 signal 11 } 
	{ bboxes_info_x1_ce0 sc_out sc_logic 1 signal 11 } 
	{ bboxes_info_x1_we0 sc_out sc_logic 1 signal 11 } 
	{ bboxes_info_x1_d0 sc_out sc_lv 32 signal 11 } 
	{ bboxes_info_x1_q0 sc_in sc_lv 32 signal 11 } 
	{ zext_ln46_out sc_out sc_lv 7 signal 12 } 
	{ zext_ln46_out_ap_vld sc_out sc_logic 1 outvld 12 } 
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
 	{ "name": "zext_ln36", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln36", "role": "default" }} , 
 	{ "name": "zext_ln24", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln24", "role": "default" }} , 
 	{ "name": "bboxes_info_score_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "address0" }} , 
 	{ "name": "bboxes_info_score_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "ce0" }} , 
 	{ "name": "bboxes_info_score_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "we0" }} , 
 	{ "name": "bboxes_info_score_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "d0" }} , 
 	{ "name": "bboxes_info_score_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "address1" }} , 
 	{ "name": "bboxes_info_score_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "ce1" }} , 
 	{ "name": "bboxes_info_score_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_score", "role": "q1" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "temp_score", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "temp_score", "role": "default" }} , 
 	{ "name": "zext_ln27", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln27", "role": "default" }} , 
 	{ "name": "bboxes_info_index_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_index", "role": "address0" }} , 
 	{ "name": "bboxes_info_index_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_index", "role": "ce0" }} , 
 	{ "name": "bboxes_info_index_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_index", "role": "we0" }} , 
 	{ "name": "bboxes_info_index_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_index", "role": "d0" }} , 
 	{ "name": "bboxes_info_index_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_index", "role": "q0" }} , 
 	{ "name": "bboxes_info_y2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "address0" }} , 
 	{ "name": "bboxes_info_y2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "ce0" }} , 
 	{ "name": "bboxes_info_y2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "we0" }} , 
 	{ "name": "bboxes_info_y2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "d0" }} , 
 	{ "name": "bboxes_info_y2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y2", "role": "q0" }} , 
 	{ "name": "bboxes_info_x2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "address0" }} , 
 	{ "name": "bboxes_info_x2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "ce0" }} , 
 	{ "name": "bboxes_info_x2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "we0" }} , 
 	{ "name": "bboxes_info_x2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "d0" }} , 
 	{ "name": "bboxes_info_x2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x2", "role": "q0" }} , 
 	{ "name": "bboxes_info_y1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "address0" }} , 
 	{ "name": "bboxes_info_y1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "ce0" }} , 
 	{ "name": "bboxes_info_y1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "we0" }} , 
 	{ "name": "bboxes_info_y1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "d0" }} , 
 	{ "name": "bboxes_info_y1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_y1", "role": "q0" }} , 
 	{ "name": "bboxes_info_x1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "address0" }} , 
 	{ "name": "bboxes_info_x1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "ce0" }} , 
 	{ "name": "bboxes_info_x1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "we0" }} , 
 	{ "name": "bboxes_info_x1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "d0" }} , 
 	{ "name": "bboxes_info_x1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bboxes_info_x1", "role": "q0" }} , 
 	{ "name": "zext_ln46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "zext_ln46_out", "role": "default" }} , 
 	{ "name": "zext_ln46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "zext_ln46_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_5858_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5858_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_5858_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_5858_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5858_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_5858_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_5858_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "nms_Pipeline_VITIS_LOOP_37_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln36", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln24", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_score", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln27", "Type" : "None", "Direction" : "I"},
			{"Name" : "bboxes_info_index", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bboxes_info_y2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bboxes_info_x2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bboxes_info_y1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bboxes_info_x1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "zext_ln46_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_37_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nms_Pipeline_VITIS_LOOP_37_4 {
		zext_ln36 {Type I LastRead 0 FirstWrite -1}
		zext_ln24 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_score {Type IO LastRead 0 FirstWrite 4}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		temp_score {Type I LastRead 0 FirstWrite -1}
		zext_ln27 {Type I LastRead 0 FirstWrite -1}
		bboxes_info_index {Type IO LastRead 3 FirstWrite 4}
		bboxes_info_y2 {Type IO LastRead 3 FirstWrite 4}
		bboxes_info_x2 {Type IO LastRead 3 FirstWrite 4}
		bboxes_info_y1 {Type IO LastRead 3 FirstWrite 4}
		bboxes_info_x1 {Type IO LastRead 3 FirstWrite 4}
		zext_ln46_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln36 { ap_none {  { zext_ln36 in_data 0 7 } } }
	zext_ln24 { ap_none {  { zext_ln24 in_data 0 6 } } }
	bboxes_info_score { ap_memory {  { bboxes_info_score_address0 mem_address 1 7 }  { bboxes_info_score_ce0 mem_ce 1 1 }  { bboxes_info_score_we0 mem_we 1 1 }  { bboxes_info_score_d0 mem_din 1 32 }  { bboxes_info_score_address1 MemPortADDR2 1 7 }  { bboxes_info_score_ce1 MemPortCE2 1 1 }  { bboxes_info_score_q1 MemPortDOUT2 0 32 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 8 } } }
	empty { ap_none {  { empty in_data 0 23 } } }
	temp_score { ap_none {  { temp_score in_data 0 32 } } }
	zext_ln27 { ap_none {  { zext_ln27 in_data 0 6 } } }
	bboxes_info_index { ap_memory {  { bboxes_info_index_address0 mem_address 1 7 }  { bboxes_info_index_ce0 mem_ce 1 1 }  { bboxes_info_index_we0 mem_we 1 1 }  { bboxes_info_index_d0 mem_din 1 7 }  { bboxes_info_index_q0 in_data 0 7 } } }
	bboxes_info_y2 { ap_memory {  { bboxes_info_y2_address0 mem_address 1 7 }  { bboxes_info_y2_ce0 mem_ce 1 1 }  { bboxes_info_y2_we0 mem_we 1 1 }  { bboxes_info_y2_d0 mem_din 1 32 }  { bboxes_info_y2_q0 in_data 0 32 } } }
	bboxes_info_x2 { ap_memory {  { bboxes_info_x2_address0 mem_address 1 7 }  { bboxes_info_x2_ce0 mem_ce 1 1 }  { bboxes_info_x2_we0 mem_we 1 1 }  { bboxes_info_x2_d0 mem_din 1 32 }  { bboxes_info_x2_q0 in_data 0 32 } } }
	bboxes_info_y1 { ap_memory {  { bboxes_info_y1_address0 mem_address 1 7 }  { bboxes_info_y1_ce0 mem_ce 1 1 }  { bboxes_info_y1_we0 mem_we 1 1 }  { bboxes_info_y1_d0 mem_din 1 32 }  { bboxes_info_y1_q0 in_data 0 32 } } }
	bboxes_info_x1 { ap_memory {  { bboxes_info_x1_address0 mem_address 1 7 }  { bboxes_info_x1_ce0 mem_ce 1 1 }  { bboxes_info_x1_we0 mem_we 1 1 }  { bboxes_info_x1_d0 mem_din 1 32 }  { bboxes_info_x1_q0 in_data 0 32 } } }
	zext_ln46_out { ap_vld {  { zext_ln46_out out_data 1 7 }  { zext_ln46_out_ap_vld out_vld 1 1 } } }
}
