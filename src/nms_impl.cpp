#include "nms_impl.h"


void nms(coordinate_type* bboxes, rate_type* scores, rate_type threshold, Dtype_uint_1* indices)
{
	// select sort(decending order)
	index_type order_arr[N];
	loop_initial_order_arr:
	for(index_type i = 0; i < N; i++)
	{
		order_arr[i] = 0;
	}
	rate_type temp_score;
	loop_select_sort_outer:
	for (index_type i = 0; i < N; i++)
	{
		temp_score = scores[i];
		loop_select_sort_inner:
		for(index_type j = 0; j < N; j++)
		{
			if(scores[j]>temp_score)
			{
				order_arr[i] = order_arr[i] + 1;
			}
			else if(scores[j]==temp_score && j > i)
			{
				order_arr[i] = order_arr[i] + 1;
			}
		}
	}
    // load data
    BBOX_INFO bboxes_info[N];
    loop_load_bboxes_info:
    for(index_type i = 0;i<N;i++)
    {
        bboxes_info[order_arr[i]].x1 = bboxes[i*4];
        bboxes_info[order_arr[i]].y1 = bboxes[i*4+1];
        bboxes_info[order_arr[i]].x2 = bboxes[i*4+2];
        bboxes_info[order_arr[i]].y2 = bboxes[i*4+3];
        bboxes_info[order_arr[i]].score = scores[i];
        bboxes_info[order_arr[i]].index = i;
    }
    // calculate iou matrix(上三角)
    rate_type iou_matrix[N][N];
    loop_initial_iou_matrix_outer:
    for (index_type i = 0; i < N; i++)
    {
    	loop_initial_iou_matrix_inner:
    	for(index_type j = 0;j < N;j++)
    	{
    		iou_matrix[i][j] = 0.0;
    	}
    }
    pipeline_cal_iou_outer:
    for (index_type i = 1; i < N; i++)
    {
    	pipeline_cal_iou_inner:
        for(index_type j = 0;j < N;j++)
        {
        	if (j==i)
        	{
        		break;
        	}
        	coordinate_type xx1 = bboxes_info[i].x1>bboxes_info[j].x1?bboxes_info[i].x1:bboxes_info[j].x1;
        	coordinate_type yy1 = bboxes_info[i].y1>bboxes_info[j].y1?bboxes_info[i].y1:bboxes_info[j].y1;
        	coordinate_type xx2 = bboxes_info[i].x2<bboxes_info[j].x2?bboxes_info[i].x2:bboxes_info[j].x2;
        	coordinate_type yy2 = bboxes_info[i].y2<bboxes_info[j].y2?bboxes_info[i].y2:bboxes_info[j].y2;

        	coordinate_type xdiff = xx2-xx1+1;
        	coordinate_type ydiff = yy2-yy1+1;

        	coordinate_type insection_width = xdiff>0.0?xdiff:0.0;
        	coordinate_type insection_hight = ydiff>0.0?ydiff:0.0;
        	coordinate_type insection_area = insection_width*insection_hight;
        	coordinate_type union_area = (bboxes_info[i].x2-bboxes_info[i].x1+1)*(bboxes_info[i].y2-bboxes_info[i].y1+1)
            +(bboxes_info[j].x2-bboxes_info[j].x1+1)*(bboxes_info[j].y2-bboxes_info[j].y1+1)-insection_area;
            iou_matrix[j][i] = insection_area / union_area;
        }
    }
    //Cluster NMS
    rate_type iou_max_arr[N];
    loop_load_iou_max_arr:
    for (index_type i = 0;i < N; i++)
    {
    	iou_max_arr[i] = iou_matrix[0][i];
    }
    pipeline_cluster_nms_outer:
	for (index_type i = 1; i < N; i++)
    {
		pipeline_cluster_nms_inner:
        for (index_type j = 1; j < N; j++)
        {
        	if (j==i){
				break;
			}
        	//三目表达式latency小，资源大
        	iou_max_arr[i] = iou_max_arr[j]<threshold && iou_matrix[j][i]>iou_max_arr[i]?iou_matrix[j][i]:iou_max_arr[i];
//        	if (iou_max_arr[j]<threshold && iou_matrix[j][i]>iou_max_arr[i])
//        	{
//        		iou_max_arr[i] = iou_matrix[j][i];
//        	}
        }
    }
	indices[bboxes_info[0].index] = 1;
	loop_set_indices:
	for (index_type i = 1; i < N; i++)
	{
		indices[bboxes_info[i].index] = iou_max_arr[i]<threshold?1:0;
	}
}
