#ifndef __NMS_IMPL_H__
#define __NMS_IMPL_H__
#include "ap_int.h"
#define N 100
// TODO: yolox_nano考虑整型和浮点型具体位数
typedef ap_uint<1> Dtype_uint_1;
typedef float coordinate_type;
typedef float rate_type;
typedef ap_uint<16> index_type;
typedef ap_uint<25> Dtype_uint_25;
typedef struct
{
	coordinate_type x1;
	coordinate_type y1;
	coordinate_type x2;
	coordinate_type y2;
	rate_type score;
	index_type index;
}BBOX_INFO;


void nms(coordinate_type* bboxes, rate_type* scores, rate_type threshold, Dtype_uint_1* indices);

#endif
