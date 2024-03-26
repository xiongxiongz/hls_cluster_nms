#include "nms_impl.h"


void nms(coordinate_type* bboxes, rate_type* scores, rate_type threshold, Dtype_uint_1* indices)
{
	#pragma HLS INTERFACE mode=m_axi bundle=gmem depth=100 port=indices offset=slave
	#pragma HLS INTERFACE mode=m_axi bundle=gmem1 depth=100 port=scores offset=slave
	#pragma HLS INTERFACE mode=m_axi bundle=gmem0 depth=400 port=bboxes offset=slave
	#pragma HLS INTERFACE s_axilite port=threshold
	#pragma HLS INTERFACE s_axilite port=return
    // load data
    BBOX_INFO bboxes_info[N];
    for(index_type i = 0;i<N;i++){
	#pragma HLS unroll
        bboxes_info[i].x1 = bboxes[i*4];
        bboxes_info[i].y1 = bboxes[i*4+1];
        bboxes_info[i].x2 = bboxes[i*4+2];
        bboxes_info[i].y2 = bboxes[i*4+3];
        bboxes_info[i].score = scores[i];
        bboxes_info[i].index = i;
    }
    // shell sort(decending order)
    BBOX_INFO temp;
    index_type gap = N / 2;
    while (gap > 0)
    {
        for (index_type i = gap; i < N; i++)
        {
		#pragma HLS unroll
            temp.x1 = bboxes_info[i].x1;
            temp.y1 = bboxes_info[i].y1;
            temp.x2 = bboxes_info[i].x2;
            temp.y2 = bboxes_info[i].y2;
            temp.score = bboxes_info[i].score;
            temp.index = bboxes_info[i].index;
            index_type preIndex = i - gap;
            while(preIndex>=0 && bboxes_info[preIndex].score < temp.score){
                bboxes_info[preIndex+gap].x1 = bboxes_info[preIndex].x1;
                bboxes_info[preIndex+gap].y1 = bboxes_info[preIndex].y1;
                bboxes_info[preIndex+gap].x2 = bboxes_info[preIndex].x2;
                bboxes_info[preIndex+gap].y2 = bboxes_info[preIndex].y2;
                bboxes_info[preIndex+gap].score = bboxes_info[preIndex].score;
                bboxes_info[preIndex+gap].index = bboxes_info[preIndex].index;
                preIndex -= gap;
            }
            bboxes_info[preIndex+gap].x1 = temp.x1;
            bboxes_info[preIndex+gap].y1 = temp.y1;
            bboxes_info[preIndex+gap].x2 = temp.x2;
            bboxes_info[preIndex+gap].y2 = temp.y2;
            bboxes_info[preIndex+gap].score = temp.score;
            bboxes_info[preIndex+gap].index = temp.index;
        }
        gap /= 2;
    }
    // calculate iou matrix(上三角)---optimize space
    rate_type iou_matrix[N*(N-1)/2] = {0.0};
    Dtype_uint_25 map_arr[N-1];
    for (index_type i = 1; i <= N-1;i++)
    {
	#pragma HLS unroll
    	map_arr[i-1] = (1 + i)*i/2;
    }
    for (index_type i = 1; i < N; i++)
    {
        for(index_type j = 0;j < i;j++){
		#pragma HLS pipeline ii = 1
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
            iou_matrix[j*N+i-map_arr[j]] = insection_area / union_area;
        }
    }
    //Cluster NMS
    indices[bboxes_info[0].index] = 1;
    for (index_type i = 1; i < N; i++)
    {
	#pragma HLS pipeline ii = 1
    	rate_type iou_max = iou_matrix[i-1];
        for (index_type j = 1; j < i; j++)
        {
            iou_max = bboxes_info[j].score>0.0 && iou_matrix[j*N+i-map_arr[j]]>iou_max?iou_matrix[j*N+i-map_arr[j]]:iou_max;
        }
        bboxes_info[i].score = iou_max<threshold?bboxes_info[i].score:0.0;
        indices[bboxes_info[i].index] = bboxes_info[i].score>0.0?1:0;
    }
}
