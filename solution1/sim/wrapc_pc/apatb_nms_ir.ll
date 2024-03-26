; ModuleID = '/media/he/c6c60fc3-65e5-407b-86ac-16ca6e42848f/he/Vitis_HLS_Work/cluster_nms_impl/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_nms_ir(float* noalias nocapture nonnull readonly "maxi" %bboxes, float* noalias nocapture nonnull readonly "maxi" %scores, float %threshold, %"struct.ap_uint<1>"* noalias nocapture nonnull "maxi" %indices) local_unnamed_addr #0 {
entry:
  %bboxes_copy = alloca [400 x float], align 512
  %scores_copy = alloca [100 x float], align 512
  %indices_copy = alloca [100 x i1], align 512
  %0 = bitcast float* %bboxes to [400 x float]*
  %1 = bitcast float* %scores to [100 x float]*
  %2 = bitcast %"struct.ap_uint<1>"* %indices to [100 x %"struct.ap_uint<1>"]*
  call fastcc void @copy_in([400 x float]* nonnull %0, [400 x float]* nonnull align 512 %bboxes_copy, [100 x float]* nonnull %1, [100 x float]* nonnull align 512 %scores_copy, [100 x %"struct.ap_uint<1>"]* nonnull %2, [100 x i1]* nonnull align 512 %indices_copy)
  call void @apatb_nms_hw([400 x float]* %bboxes_copy, [100 x float]* %scores_copy, float %threshold, [100 x i1]* %indices_copy)
  call void @copy_back([400 x float]* %0, [400 x float]* %bboxes_copy, [100 x float]* %1, [100 x float]* %scores_copy, [100 x %"struct.ap_uint<1>"]* %2, [100 x i1]* %indices_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([400 x float]* noalias readonly "unpacked"="0", [400 x float]* noalias align 512 "unpacked"="1", [100 x float]* noalias readonly "unpacked"="2", [100 x float]* noalias align 512 "unpacked"="3", [100 x %"struct.ap_uint<1>"]* noalias readonly "unpacked"="4", [100 x i1]* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a400f32([400 x float]* align 512 %1, [400 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %3, [100 x float]* %2)
  call fastcc void @"onebyonecpy_hls.p0a100struct.ap_uint<1>"([100 x i1]* align 512 %5, [100 x %"struct.ap_uint<1>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a400f32([400 x float]* noalias align 512 %dst, [400 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [400 x float]* %dst, null
  %1 = icmp eq [400 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a400f32([400 x float]* nonnull %dst, [400 x float]* nonnull %src, i64 400)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a400f32([400 x float]* %dst, [400 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [400 x float]* %src, null
  %1 = icmp eq [400 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [400 x float], [400 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [400 x float], [400 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* noalias align 512 %dst, [100 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x float]* %dst, null
  %1 = icmp eq [100 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f32([100 x float]* nonnull %dst, [100 x float]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f32([100 x float]* %dst, [100 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x float]* %src, null
  %1 = icmp eq [100 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x float], [100 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x float], [100 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a100struct.ap_uint<1>"([100 x i1]* noalias nocapture align 512 "unpacked"="0.0" %dst, [100 x %"struct.ap_uint<1>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x %"struct.ap_uint<1>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a100struct.ap_uint<1>"([100 x i1]* %dst, [100 x %"struct.ap_uint<1>"]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a100struct.ap_uint<1>"([100 x i1]* nocapture "unpacked"="0.0" %dst, [100 x %"struct.ap_uint<1>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x %"struct.ap_uint<1>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [100 x %"struct.ap_uint<1>"], [100 x %"struct.ap_uint<1>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [100 x i1], [100 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %1 = bitcast i1* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([400 x float]* noalias "unpacked"="0", [400 x float]* noalias readonly align 512 "unpacked"="1", [100 x float]* noalias "unpacked"="2", [100 x float]* noalias readonly align 512 "unpacked"="3", [100 x %"struct.ap_uint<1>"]* noalias "unpacked"="4", [100 x i1]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a400f32([400 x float]* %0, [400 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* %2, [100 x float]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a100struct.ap_uint<1>.6"([100 x %"struct.ap_uint<1>"]* %4, [100 x i1]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a100struct.ap_uint<1>.6"([100 x %"struct.ap_uint<1>"]* noalias "unpacked"="0" %dst, [100 x i1]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x %"struct.ap_uint<1>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a100struct.ap_uint<1>.9"([100 x %"struct.ap_uint<1>"]* nonnull %dst, [100 x i1]* %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a100struct.ap_uint<1>.9"([100 x %"struct.ap_uint<1>"]* "unpacked"="0" %dst, [100 x i1]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x %"struct.ap_uint<1>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [100 x i1], [100 x i1]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [100 x %"struct.ap_uint<1>"], [100 x %"struct.ap_uint<1>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_nms_hw([400 x float]*, [100 x float]*, float, [100 x i1]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([400 x float]* noalias "unpacked"="0", [400 x float]* noalias readonly align 512 "unpacked"="1", [100 x float]* noalias "unpacked"="2", [100 x float]* noalias readonly align 512 "unpacked"="3", [100 x %"struct.ap_uint<1>"]* noalias "unpacked"="4", [100 x i1]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a100struct.ap_uint<1>.6"([100 x %"struct.ap_uint<1>"]* %4, [100 x i1]* align 512 %5)
  ret void
}

define void @nms_hw_stub_wrapper([400 x float]*, [100 x float]*, float, [100 x i1]*) #5 {
entry:
  %4 = alloca [100 x %"struct.ap_uint<1>"]
  call void @copy_out([400 x float]* null, [400 x float]* %0, [100 x float]* null, [100 x float]* %1, [100 x %"struct.ap_uint<1>"]* %4, [100 x i1]* %3)
  %5 = bitcast [400 x float]* %0 to float*
  %6 = bitcast [100 x float]* %1 to float*
  %7 = bitcast [100 x %"struct.ap_uint<1>"]* %4 to %"struct.ap_uint<1>"*
  call void @nms_hw_stub(float* %5, float* %6, float %2, %"struct.ap_uint<1>"* %7)
  call void @copy_in([400 x float]* null, [400 x float]* %0, [100 x float]* null, [100 x float]* %1, [100 x %"struct.ap_uint<1>"]* %4, [100 x i1]* %3)
  ret void
}

declare void @nms_hw_stub(float*, float*, float, %"struct.ap_uint<1>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
