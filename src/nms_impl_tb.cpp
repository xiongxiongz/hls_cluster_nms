#include "nms_impl.h"
#include "iostream"

int main(void)
{
	std::cout<<"N:"<<N<<std::endl;
	coordinate_type bboxes_tb[N*4];
	rate_type scores_tb[N];
	rate_type threshold_tb = 0.14;
	Dtype_uint_1 indices_tb[N];
	std::cout<<"threshold_tb:"<<threshold_tb<<std::endl;
    for(index_type i = 0;i<N;i++){
    	indices_tb[i] = 0;
    	scores_tb[i] = 1.0-i*0.001;
    	bboxes_tb[4*i] = i*0.5;
    	bboxes_tb[4*i+1] = i*0.5;
    	bboxes_tb[4*i+2] = i*0.5+1.0;
    	bboxes_tb[4*i+3] = i*0.5+1.0;
    }
    std::cout<<"size of Dtype_uint_1:"<<sizeof(indices_tb[0])<<"bytes"<<std::endl;
    std::cout<<"start nms\n";
    nms(bboxes_tb,scores_tb,threshold_tb,indices_tb);
    for (index_type i = 0; i < N; i++)
    {
    	std::cout<<indices_tb[i]<<" ";
    }
    return 0;
}
