; ModuleID = 'C:/Users/Diaxxa/Desktop/Optical-Flow/horn_schunck_hls/horn_schunck_hls/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 4>" = type { %"struct.ap_fixed_base<16, 4>" }
%"struct.ap_fixed_base<16, 4>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_horn_schunck_hls_ir([64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %Ix, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %Iy, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" %It, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %u, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="64" %v) local_unnamed_addr #0 {
entry:
  %0 = bitcast [64 x %"struct.ap_fixed<16, 4>"]* %Ix to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %1 = call i8* @malloc(i64 8192)
  %Ix_copy = bitcast i8* %1 to [64 x [64 x i16]]*
  %2 = bitcast [64 x %"struct.ap_fixed<16, 4>"]* %Iy to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %3 = call i8* @malloc(i64 8192)
  %Iy_copy = bitcast i8* %3 to [64 x [64 x i16]]*
  %4 = bitcast [64 x %"struct.ap_fixed<16, 4>"]* %It to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %5 = call i8* @malloc(i64 8192)
  %It_copy = bitcast i8* %5 to [64 x [64 x i16]]*
  %6 = bitcast [64 x %"struct.ap_fixed<16, 4>"]* %u to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %7 = call i8* @malloc(i64 8192)
  %u_copy = bitcast i8* %7 to [64 x [64 x i16]]*
  %8 = bitcast [64 x %"struct.ap_fixed<16, 4>"]* %v to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %9 = call i8* @malloc(i64 8192)
  %v_copy = bitcast i8* %9 to [64 x [64 x i16]]*
  call fastcc void @copy_in([64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %0, [64 x [64 x i16]]* %Ix_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %2, [64 x [64 x i16]]* %Iy_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %4, [64 x [64 x i16]]* %It_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %6, [64 x [64 x i16]]* %u_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %8, [64 x [64 x i16]]* %v_copy)
  call void @apatb_horn_schunck_hls_hw([64 x [64 x i16]]* %Ix_copy, [64 x [64 x i16]]* %Iy_copy, [64 x [64 x i16]]* %It_copy, [64 x [64 x i16]]* %u_copy, [64 x [64 x i16]]* %v_copy)
  call void @copy_back([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %0, [64 x [64 x i16]]* %Ix_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %2, [64 x [64 x i16]]* %Iy_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %4, [64 x [64 x i16]]* %It_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6, [64 x [64 x i16]]* %u_copy, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8, [64 x [64 x i16]]* %v_copy)
  call void @free(i8* %1)
  call void @free(i8* %3)
  call void @free(i8* %5)
  call void @free(i8* %7)
  call void @free(i8* %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly, [64 x [64 x i16]]*, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly, [64 x [64 x i16]]*, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly, [64 x [64 x i16]]*, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly, [64 x [64 x i16]]*, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly, [64 x [64 x i16]]*) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %1, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %3, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %2)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %5, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %4)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %7, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %9, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<16, 4>"([64 x %"struct.ap_fixed<16, 4>"]* %dst, [64 x %"struct.ap_fixed<16, 4>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<16, 4>"]* %src, null
  %1 = icmp eq [64 x %"struct.ap_fixed<16, 4>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_fixed<16, 4>"], [64 x %"struct.ap_fixed<16, 4>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_fixed<16, 4>"], [64 x %"struct.ap_fixed<16, 4>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %0, [64 x [64 x i16]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %2, [64 x [64 x i16]]* %3)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %4, [64 x [64 x i16]]* %5)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6, [64 x [64 x i16]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8, [64 x [64 x i16]]* %9)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %dst, [64 x [64 x i16]]* readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %dst, null
  %1 = icmp eq [64 x [64 x i16]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a64a64struct.ap_fixed<16, 4>.9"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %dst, [64 x [64 x i16]]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64a64struct.ap_fixed<16, 4>.9"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %dst, [64 x [64 x i16]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x [64 x i16]]* %src, null
  %1 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x [64 x %"struct.ap_fixed<16, 4>"]], [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [64 x [64 x i16]], [64 x [64 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_fixed<16, 4>.12"([64 x %"struct.ap_fixed<16, 4>"]* %dst.addr, [64 x i16]* %3, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<16, 4>.12"([64 x %"struct.ap_fixed<16, 4>"]* %dst, [64 x i16]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i16]* %src, null
  %1 = icmp eq [64 x %"struct.ap_fixed<16, 4>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [64 x i16], [64 x i16]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [64 x %"struct.ap_fixed<16, 4>"], [64 x %"struct.ap_fixed<16, 4>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>"([64 x [64 x i16]]* %dst, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [64 x [64 x i16]]* %dst, null
  %1 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a64a64struct.ap_fixed<16, 4>.19"([64 x [64 x i16]]* nonnull %dst, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64a64struct.ap_fixed<16, 4>.19"([64 x [64 x i16]]* %dst, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %src, null
  %1 = icmp eq [64 x [64 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [64 x [64 x i16]], [64 x [64 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x [64 x %"struct.ap_fixed<16, 4>"]], [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a64struct.ap_fixed<16, 4>.22"([64 x i16]* %3, [64 x %"struct.ap_fixed<16, 4>"]* %src.addr, i64 64)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a64struct.ap_fixed<16, 4>.22"([64 x i16]* %dst, [64 x %"struct.ap_fixed<16, 4>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x %"struct.ap_fixed<16, 4>"]* %src, null
  %1 = icmp eq [64 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [64 x %"struct.ap_fixed<16, 4>"], [64 x %"struct.ap_fixed<16, 4>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [64 x i16], [64 x i16]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %4, i16* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_horn_schunck_hls_hw([64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly, [64 x [64 x %"struct.ap_fixed<16, 4>"]]*, [64 x [64 x i16]]* readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6, [64 x [64 x i16]]* %7)
  call fastcc void @"onebyonecpy_hls.p0a64a64struct.ap_fixed<16, 4>.6"([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8, [64 x [64 x i16]]* %9)
  ret void
}

declare void @horn_schunck_hls_hw_stub([64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull readonly, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull, [64 x %"struct.ap_fixed<16, 4>"]* noalias nocapture nonnull)

define void @horn_schunck_hls_hw_stub_wrapper([64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*, [64 x [64 x i16]]*) #5 {
entry:
  %5 = call i8* @malloc(i64 8192)
  %6 = bitcast i8* %5 to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %7 = call i8* @malloc(i64 8192)
  %8 = bitcast i8* %7 to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %9 = call i8* @malloc(i64 8192)
  %10 = bitcast i8* %9 to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %11 = call i8* @malloc(i64 8192)
  %12 = bitcast i8* %11 to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  %13 = call i8* @malloc(i64 8192)
  %14 = bitcast i8* %13 to [64 x [64 x %"struct.ap_fixed<16, 4>"]]*
  call void @copy_out([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6, [64 x [64 x i16]]* %0, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8, [64 x [64 x i16]]* %1, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %10, [64 x [64 x i16]]* %2, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %12, [64 x [64 x i16]]* %3, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %14, [64 x [64 x i16]]* %4)
  %15 = bitcast [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6 to [64 x %"struct.ap_fixed<16, 4>"]*
  %16 = bitcast [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8 to [64 x %"struct.ap_fixed<16, 4>"]*
  %17 = bitcast [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %10 to [64 x %"struct.ap_fixed<16, 4>"]*
  %18 = bitcast [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %12 to [64 x %"struct.ap_fixed<16, 4>"]*
  %19 = bitcast [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %14 to [64 x %"struct.ap_fixed<16, 4>"]*
  call void @horn_schunck_hls_hw_stub([64 x %"struct.ap_fixed<16, 4>"]* %15, [64 x %"struct.ap_fixed<16, 4>"]* %16, [64 x %"struct.ap_fixed<16, 4>"]* %17, [64 x %"struct.ap_fixed<16, 4>"]* %18, [64 x %"struct.ap_fixed<16, 4>"]* %19)
  call void @copy_in([64 x [64 x %"struct.ap_fixed<16, 4>"]]* %6, [64 x [64 x i16]]* %0, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %8, [64 x [64 x i16]]* %1, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %10, [64 x [64 x i16]]* %2, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %12, [64 x [64 x i16]]* %3, [64 x [64 x %"struct.ap_fixed<16, 4>"]]* %14, [64 x [64 x i16]]* %4)
  call void @free(i8* %5)
  call void @free(i8* %7)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
