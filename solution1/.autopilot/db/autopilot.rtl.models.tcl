set SynModuleInfo {
  {SRCNAME nms_Pipeline_VITIS_LOOP_37_4 MODELNAME nms_Pipeline_VITIS_LOOP_37_4 RTLNAME nms_nms_Pipeline_VITIS_LOOP_37_4
    SUBMODULES {
      {MODELNAME nms_flow_control_loop_pipe_sequential_init RTLNAME nms_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nms_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nms_Pipeline_2 MODELNAME nms_Pipeline_2 RTLNAME nms_nms_Pipeline_2}
  {SRCNAME nms_Pipeline_VITIS_LOOP_65_7 MODELNAME nms_Pipeline_VITIS_LOOP_65_7 RTLNAME nms_nms_Pipeline_VITIS_LOOP_65_7
    SUBMODULES {
      {MODELNAME nms_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME nms_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nms_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME nms_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nms_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME nms_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nms_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME nms_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME nms_nms_Pipeline_VITIS_LOOP_65_7_map_arr_ROM_AUTO_1R RTLNAME nms_nms_Pipeline_VITIS_LOOP_65_7_map_arr_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nms MODELNAME nms RTLNAME nms IS_TOP 1
    SUBMODULES {
      {MODELNAME nms_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME nms_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nms_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME nms_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nms_mac_muladd_7ns_7ns_7ns_13_4_1 RTLNAME nms_mac_muladd_7ns_7ns_7ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nms_bboxes_info_x1_RAM_AUTO_1R1W RTLNAME nms_bboxes_info_x1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nms_bboxes_info_score_RAM_1WNR_AUTO_1R1W RTLNAME nms_bboxes_info_score_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nms_bboxes_info_index_RAM_AUTO_1R1W RTLNAME nms_bboxes_info_index_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nms_iou_matrix_RAM_AUTO_1R1W RTLNAME nms_iou_matrix_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nms_gmem0_m_axi RTLNAME nms_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME nms_gmem1_m_axi RTLNAME nms_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME nms_gmem_m_axi RTLNAME nms_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME nms_control_s_axi RTLNAME nms_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
