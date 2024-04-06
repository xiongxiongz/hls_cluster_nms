############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode s_axilite "nms"
set_directive_interface -mode m_axi -bundle gmem0 -depth 400 -offset slave "nms" bboxes
set_directive_interface -mode m_axi -bundle gmem1 -depth 100 -offset slave "nms" scores
set_directive_interface -mode s_axilite "nms" threshold
set_directive_interface -mode m_axi -bundle gmem -depth 100 "nms" indices
set_directive_top -name nms "nms"
set_directive_unroll "nms/loop_load_bboxes_info"
set_directive_unroll "nms/loop_load_iou_max_arr"
set_directive_unroll "nms/loop_set_indices"
set_directive_pipeline -II 1 "nms/pipeline_cal_iou_inner"
set_directive_pipeline -II 1 "nms/pipeline_cluster_nms_inner"
set_directive_unroll "nms/loop_initial_order_arr"
set_directive_pipeline -II 1 "nms/loop_initial_iou_matrix_outer"
set_directive_array_partition -type complete -dim 1 "nms" iou_max_arr
set_directive_array_partition -type complete -dim 1 "nms" order_arr
set_directive_pipeline "nms/loop_select_sort_inner"
