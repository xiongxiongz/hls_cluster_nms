
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set bboxes__scores__threshold__indices__return_group [add_wave_group bboxes__scores__threshold__indices__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_nms_top/AESL_inst_nms/interrupt -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_BRESP -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_BREADY -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_BVALID -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_RRESP -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_RDATA -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_RREADY -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_RVALID -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_ARREADY -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_ARVALID -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_ARADDR -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_WSTRB -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_WDATA -into $bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_WREADY -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_WVALID -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_AWREADY -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_AWVALID -into $bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/s_axi_control_AWADDR -into $bboxes__scores__threshold__indices__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set indices_group [add_wave_group indices(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $indices_group]
set wdata_group [add_wave_group "Write Channel" -into $indices_group]
set ctrl_group [add_wave_group "Handshakes" -into $indices_group]
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set scores_group [add_wave_group scores(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $scores_group]
set wdata_group [add_wave_group "Write Channel" -into $scores_group]
set ctrl_group [add_wave_group "Handshakes" -into $scores_group]
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set bboxes_group [add_wave_group bboxes(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $bboxes_group]
set wdata_group [add_wave_group "Write Channel" -into $bboxes_group]
set ctrl_group [add_wave_group "Handshakes" -into $bboxes_group]
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/AESL_inst_nms/m_axi_gmem0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_nms_top/AESL_inst_nms/ap_done -into $blocksiggroup
add_wave /apatb_nms_top/AESL_inst_nms/ap_idle -into $blocksiggroup
add_wave /apatb_nms_top/AESL_inst_nms/ap_ready -into $blocksiggroup
add_wave /apatb_nms_top/AESL_inst_nms/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_nms_top/AESL_inst_nms/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_nms_top/AESL_inst_nms/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_nms_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_nms_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_nms_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_nms_top/LENGTH_bboxes -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_gmem -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_gmem0 -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_gmem1 -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_indices -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_scores -into $tb_portdepth_group -radix hex
add_wave /apatb_nms_top/LENGTH_threshold -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_bboxes__scores__threshold__indices__return_group [add_wave_group bboxes__scores__threshold__indices__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_nms_top/control_INTERRUPT -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_BRESP -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_BREADY -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_BVALID -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_RRESP -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_RDATA -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_RREADY -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_RVALID -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_ARREADY -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_ARVALID -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_ARADDR -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_WSTRB -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_WDATA -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
add_wave /apatb_nms_top/control_WREADY -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_WVALID -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_AWREADY -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_AWVALID -into $tb_bboxes__scores__threshold__indices__return_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/control_AWADDR -into $tb_bboxes__scores__threshold__indices__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_indices_group [add_wave_group indices(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_indices_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_indices_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_indices_group]
add_wave /apatb_nms_top/gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_scores_group [add_wave_group scores(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_scores_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_scores_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_scores_group]
add_wave /apatb_nms_top/gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_bboxes_group [add_wave_group bboxes(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_bboxes_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_bboxes_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_bboxes_group]
add_wave /apatb_nms_top/gmem0_BUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_BID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_BRESP -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_RRESP -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_RUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_RID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_RDATA -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_ARUSER -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARREGION -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARQOS -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARPROT -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARBURST -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARLEN -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARID -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARADDR -into $rdata_group -radix hex
add_wave /apatb_nms_top/gmem0_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_WUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_WID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_WSTRB -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_WDATA -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_AWUSER -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWREGION -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWQOS -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWPROT -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWBURST -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWLEN -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWID -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWADDR -into $wdata_group -radix hex
add_wave /apatb_nms_top/gmem0_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_nms_top/gmem0_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config nms.wcfg
run all
quit

