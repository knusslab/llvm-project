; NOTE: Assertions have been autogenerated by utils/update_analyze_test_checks.py
; RUN: opt -cost-model -analyze -mtriple=riscv64 -mattr=+experimental-v,+f,+d,+experimental-zfh -riscv-v-vector-bits-min=128 -riscv-v-fixed-length-vector-lmul-max=1 < %s 2>%t | FileCheck %s

define i32 @masked_gather() {
; CHECK-LABEL: 'masked_gather'
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8F64 = call <8 x double> @llvm.masked.gather.v8f64.v8p0f64(<8 x double*> undef, i32 1, <8 x i1> undef, <8 x double> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4F64 = call <4 x double> @llvm.masked.gather.v4f64.v4p0f64(<4 x double*> undef, i32 1, <4 x i1> undef, <4 x double> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2F64 = call <2 x double> @llvm.masked.gather.v2f64.v2p0f64(<2 x double*> undef, i32 8, <2 x i1> undef, <2 x double> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1F64 = call <1 x double> @llvm.masked.gather.v1f64.v1p0f64(<1 x double*> undef, i32 8, <1 x i1> undef, <1 x double> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 16 for instruction: %V16F32 = call <16 x float> @llvm.masked.gather.v16f32.v16p0f32(<16 x float*> undef, i32 1, <16 x i1> undef, <16 x float> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8F32 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> undef, i32 1, <8 x i1> undef, <8 x float> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4F32 = call <4 x float> @llvm.masked.gather.v4f32.v4p0f32(<4 x float*> undef, i32 4, <4 x i1> undef, <4 x float> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2F32 = call <2 x float> @llvm.masked.gather.v2f32.v2p0f32(<2 x float*> undef, i32 4, <2 x i1> undef, <2 x float> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1F32 = call <1 x float> @llvm.masked.gather.v1f32.v1p0f32(<1 x float*> undef, i32 4, <1 x i1> undef, <1 x float> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 32 for instruction: %V32F16 = call <32 x half> @llvm.masked.gather.v32f16.v32p0f16(<32 x half*> undef, i32 1, <32 x i1> undef, <32 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 16 for instruction: %V16F16 = call <16 x half> @llvm.masked.gather.v16f16.v16p0f16(<16 x half*> undef, i32 1, <16 x i1> undef, <16 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8F16 = call <8 x half> @llvm.masked.gather.v8f16.v8p0f16(<8 x half*> undef, i32 2, <8 x i1> undef, <8 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4F16 = call <4 x half> @llvm.masked.gather.v4f16.v4p0f16(<4 x half*> undef, i32 2, <4 x i1> undef, <4 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2F16 = call <2 x half> @llvm.masked.gather.v2f16.v2p0f16(<2 x half*> undef, i32 2, <2 x i1> undef, <2 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1F16 = call <1 x half> @llvm.masked.gather.v1f16.v1p0f16(<1 x half*> undef, i32 2, <1 x i1> undef, <1 x half> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8I64 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0i64(<8 x i64*> undef, i32 1, <8 x i1> undef, <8 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4I64 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0i64(<4 x i64*> undef, i32 1, <4 x i1> undef, <4 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2I64 = call <2 x i64> @llvm.masked.gather.v2i64.v2p0i64(<2 x i64*> undef, i32 8, <2 x i1> undef, <2 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1I64 = call <1 x i64> @llvm.masked.gather.v1i64.v1p0i64(<1 x i64*> undef, i32 8, <1 x i1> undef, <1 x i64> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 16 for instruction: %V16I32 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0i32(<16 x i32*> undef, i32 1, <16 x i1> undef, <16 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8I32 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> undef, i32 1, <8 x i1> undef, <8 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4I32 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> undef, i32 4, <4 x i1> undef, <4 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2I32 = call <2 x i32> @llvm.masked.gather.v2i32.v2p0i32(<2 x i32*> undef, i32 4, <2 x i1> undef, <2 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1I32 = call <1 x i32> @llvm.masked.gather.v1i32.v1p0i32(<1 x i32*> undef, i32 4, <1 x i1> undef, <1 x i32> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 32 for instruction: %V32I16 = call <32 x i16> @llvm.masked.gather.v32i16.v32p0i16(<32 x i16*> undef, i32 1, <32 x i1> undef, <32 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 16 for instruction: %V16I16 = call <16 x i16> @llvm.masked.gather.v16i16.v16p0i16(<16 x i16*> undef, i32 1, <16 x i1> undef, <16 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8I16 = call <8 x i16> @llvm.masked.gather.v8i16.v8p0i16(<8 x i16*> undef, i32 2, <8 x i1> undef, <8 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4I16 = call <4 x i16> @llvm.masked.gather.v4i16.v4p0i16(<4 x i16*> undef, i32 2, <4 x i1> undef, <4 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2I16 = call <2 x i16> @llvm.masked.gather.v2i16.v2p0i16(<2 x i16*> undef, i32 2, <2 x i1> undef, <2 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1I16 = call <1 x i16> @llvm.masked.gather.v1i16.v1p0i16(<1 x i16*> undef, i32 2, <1 x i1> undef, <1 x i16> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 64 for instruction: %V64I8 = call <64 x i8> @llvm.masked.gather.v64i8.v64p0i8(<64 x i8*> undef, i32 1, <64 x i1> undef, <64 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 32 for instruction: %V32I8 = call <32 x i8> @llvm.masked.gather.v32i8.v32p0i8(<32 x i8*> undef, i32 1, <32 x i1> undef, <32 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 16 for instruction: %V16I8 = call <16 x i8> @llvm.masked.gather.v16i8.v16p0i8(<16 x i8*> undef, i32 1, <16 x i1> undef, <16 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 8 for instruction: %V8I8 = call <8 x i8> @llvm.masked.gather.v8i8.v8p0i8(<8 x i8*> undef, i32 1, <8 x i1> undef, <8 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 4 for instruction: %V4I8 = call <4 x i8> @llvm.masked.gather.v4i8.v4p0i8(<4 x i8*> undef, i32 1, <4 x i1> undef, <4 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 2 for instruction: %V2I8 = call <2 x i8> @llvm.masked.gather.v2i8.v2p0i8(<2 x i8*> undef, i32 1, <2 x i1> undef, <2 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: %V1I8 = call <1 x i8> @llvm.masked.gather.v1i8.v1p0i8(<1 x i8*> undef, i32 1, <1 x i1> undef, <1 x i8> undef)
; CHECK-NEXT:  Cost Model: Found an estimated cost of 1 for instruction: ret i32 0
;
  %V8F64 = call <8 x double> @llvm.masked.gather.v8f64.v8p0f64(<8 x double*> undef, i32 1, <8 x i1> undef, <8 x double> undef)
  %V4F64 = call <4 x double> @llvm.masked.gather.v4f64.v4p0f64(<4 x double*> undef, i32 1, <4 x i1> undef, <4 x double> undef)
  %V2F64 = call <2 x double> @llvm.masked.gather.v2f64.v2p0f64(<2 x double*> undef, i32 8, <2 x i1> undef, <2 x double> undef)
  %V1F64 = call <1 x double> @llvm.masked.gather.v1f64.v1p0f64(<1 x double*> undef, i32 8, <1 x i1> undef, <1 x double> undef)

  %V16F32 = call <16 x float> @llvm.masked.gather.v16f32.v16p0f32(<16 x float*> undef, i32 1, <16 x i1> undef, <16 x float> undef)
  %V8F32 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> undef, i32 1, <8 x i1> undef, <8 x float> undef)
  %V4F32 = call <4 x float> @llvm.masked.gather.v4f32.v4p0f32(<4 x float*> undef, i32 4, <4 x i1> undef, <4 x float> undef)
  %V2F32 = call <2 x float> @llvm.masked.gather.v2f32.v2p0f32(<2 x float*> undef, i32 4, <2 x i1> undef, <2 x float> undef)
  %V1F32 = call <1 x float> @llvm.masked.gather.v1f32.v1p0f32(<1 x float*> undef, i32 4, <1 x i1> undef, <1 x float> undef)

  %V32F16 = call <32 x half> @llvm.masked.gather.v32f16.v32p0f16(<32 x half*> undef, i32 1, <32 x i1> undef, <32 x half> undef)
  %V16F16 = call <16 x half> @llvm.masked.gather.v16f16.v16p0f16(<16 x half*> undef, i32 1, <16 x i1> undef, <16 x half> undef)
  %V8F16 = call <8 x half> @llvm.masked.gather.v8f16.v8p0f16(<8 x half*> undef, i32 2, <8 x i1> undef, <8 x half> undef)
  %V4F16 = call <4 x half> @llvm.masked.gather.v4f16.v4p0f16(<4 x half*> undef, i32 2, <4 x i1> undef, <4 x half> undef)
  %V2F16 = call <2 x half> @llvm.masked.gather.v2f16.v2p0f16(<2 x half*> undef, i32 2, <2 x i1> undef, <2 x half> undef)
  %V1F16 = call <1 x half> @llvm.masked.gather.v1f16.v1p0f16(<1 x half*> undef, i32 2, <1 x i1> undef, <1 x half> undef)

  %V8I64 = call <8 x i64> @llvm.masked.gather.v8i64.v8p0i64(<8 x i64*> undef, i32 1, <8 x i1> undef, <8 x i64> undef)
  %V4I64 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0i64(<4 x i64*> undef, i32 1, <4 x i1> undef, <4 x i64> undef)
  %V2I64 = call <2 x i64> @llvm.masked.gather.v2i64.v2p0i64(<2 x i64*> undef, i32 8, <2 x i1> undef, <2 x i64> undef)
  %V1I64 = call <1 x i64> @llvm.masked.gather.v1i64.v1p0i64(<1 x i64*> undef, i32 8, <1 x i1> undef, <1 x i64> undef)

  %V16I32 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0i32(<16 x i32*> undef, i32 1, <16 x i1> undef, <16 x i32> undef)
  %V8I32 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> undef, i32 1, <8 x i1> undef, <8 x i32> undef)
  %V4I32 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*> undef, i32 4, <4 x i1> undef, <4 x i32> undef)
  %V2I32 = call <2 x i32> @llvm.masked.gather.v2i32.v2p0i32(<2 x i32*> undef, i32 4, <2 x i1> undef, <2 x i32> undef)
  %V1I32 = call <1 x i32> @llvm.masked.gather.v1i32.v1p0i32(<1 x i32*> undef, i32 4, <1 x i1> undef, <1 x i32> undef)

  %V32I16 = call <32 x i16> @llvm.masked.gather.v32i16.v32p0i16(<32 x i16*> undef, i32 1, <32 x i1> undef, <32 x i16> undef)
  %V16I16 = call <16 x i16> @llvm.masked.gather.v16i16.v16p0i16(<16 x i16*> undef, i32 1, <16 x i1> undef, <16 x i16> undef)
  %V8I16 = call <8 x i16> @llvm.masked.gather.v8i16.v8p0i16(<8 x i16*> undef, i32 2, <8 x i1> undef, <8 x i16> undef)
  %V4I16 = call <4 x i16> @llvm.masked.gather.v4i16.v4p0i16(<4 x i16*> undef, i32 2, <4 x i1> undef, <4 x i16> undef)
  %V2I16 = call <2 x i16> @llvm.masked.gather.v2i16.v2p0i16(<2 x i16*> undef, i32 2, <2 x i1> undef, <2 x i16> undef)
  %V1I16 = call <1 x i16> @llvm.masked.gather.v1i16.v1p0i16(<1 x i16*> undef, i32 2, <1 x i1> undef, <1 x i16> undef)

  %V64I8 = call <64 x i8> @llvm.masked.gather.v64i8.v64p0i8(<64 x i8*> undef, i32 1, <64 x i1> undef, <64 x i8> undef)
  %V32I8 = call <32 x i8> @llvm.masked.gather.v32i8.v32p0i8(<32 x i8*> undef, i32 1, <32 x i1> undef, <32 x i8> undef)
  %V16I8 = call <16 x i8> @llvm.masked.gather.v16i8.v16p0i8(<16 x i8*> undef, i32 1, <16 x i1> undef, <16 x i8> undef)
  %V8I8 = call <8 x i8> @llvm.masked.gather.v8i8.v8p0i8(<8 x i8*> undef, i32 1, <8 x i1> undef, <8 x i8> undef)
  %V4I8 = call <4 x i8> @llvm.masked.gather.v4i8.v4p0i8(<4 x i8*> undef, i32 1, <4 x i1> undef, <4 x i8> undef)
  %V2I8 = call <2 x i8> @llvm.masked.gather.v2i8.v2p0i8(<2 x i8*> undef, i32 1, <2 x i1> undef, <2 x i8> undef)
  %V1I8 = call <1 x i8> @llvm.masked.gather.v1i8.v1p0i8(<1 x i8*> undef, i32 1, <1 x i1> undef, <1 x i8> undef)

  ret i32 0
}

declare <8 x double> @llvm.masked.gather.v8f64.v8p0f64(<8 x double*>, i32, <8 x i1>, <8 x double>)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0f64(<4 x double*>, i32, <4 x i1>, <4 x double>)
declare <2 x double> @llvm.masked.gather.v2f64.v2p0f64(<2 x double*>, i32, <2 x i1>, <2 x double>)
declare <1 x double> @llvm.masked.gather.v1f64.v1p0f64(<1 x double*>, i32, <1 x i1>, <1 x double>)

declare <16 x float> @llvm.masked.gather.v16f32.v16p0f32(<16 x float*>, i32, <16 x i1>, <16 x float>)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32, <8 x i1>, <8 x float>)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0f32(<4 x float*>, i32, <4 x i1>, <4 x float>)
declare <2 x float> @llvm.masked.gather.v2f32.v2p0f32(<2 x float*>, i32, <2 x i1>, <2 x float>)
declare <1 x float> @llvm.masked.gather.v1f32.v1p0f32(<1 x float*>, i32, <1 x i1>, <1 x float>)

declare <32 x half> @llvm.masked.gather.v32f16.v32p0f16(<32 x half*>, i32, <32 x i1>, <32 x half>)
declare <16 x half> @llvm.masked.gather.v16f16.v16p0f16(<16 x half*>, i32, <16 x i1>, <16 x half>)
declare <8 x half> @llvm.masked.gather.v8f16.v8p0f16(<8 x half*>, i32, <8 x i1>, <8 x half>)
declare <4 x half> @llvm.masked.gather.v4f16.v4p0f16(<4 x half*>, i32, <4 x i1>, <4 x half>)
declare <2 x half> @llvm.masked.gather.v2f16.v2p0f16(<2 x half*>, i32, <2 x i1>, <2 x half>)
declare <1 x half> @llvm.masked.gather.v1f16.v1p0f16(<1 x half*>, i32, <1 x i1>, <1 x half>)

declare <8 x i64> @llvm.masked.gather.v8i64.v8p0i64(<8 x i64*>, i32, <8 x i1>, <8 x i64>)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0i64(<4 x i64*>, i32, <4 x i1>, <4 x i64>)
declare <2 x i64> @llvm.masked.gather.v2i64.v2p0i64(<2 x i64*>, i32, <2 x i1>, <2 x i64>)
declare <1 x i64> @llvm.masked.gather.v1i64.v1p0i64(<1 x i64*>, i32, <1 x i1>, <1 x i64>)

declare <16 x i32> @llvm.masked.gather.v16i32.v16p0i32(<16 x i32*>, i32, <16 x i1>, <16 x i32>)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*>, i32, <8 x i1>, <8 x i32>)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0i32(<4 x i32*>, i32, <4 x i1>, <4 x i32>)
declare <2 x i32> @llvm.masked.gather.v2i32.v2p0i32(<2 x i32*>, i32, <2 x i1>, <2 x i32>)
declare <1 x i32> @llvm.masked.gather.v1i32.v1p0i32(<1 x i32*>, i32, <1 x i1>, <1 x i32>)

declare <32 x i16> @llvm.masked.gather.v32i16.v32p0i16(<32 x i16*>, i32, <32 x i1>, <32 x i16>)
declare <16 x i16> @llvm.masked.gather.v16i16.v16p0i16(<16 x i16*>, i32, <16 x i1>, <16 x i16>)
declare <8 x i16> @llvm.masked.gather.v8i16.v8p0i16(<8 x i16*>, i32, <8 x i1>, <8 x i16>)
declare <4 x i16> @llvm.masked.gather.v4i16.v4p0i16(<4 x i16*>, i32, <4 x i1>, <4 x i16>)
declare <2 x i16> @llvm.masked.gather.v2i16.v2p0i16(<2 x i16*>, i32, <2 x i1>, <2 x i16>)
declare <1 x i16> @llvm.masked.gather.v1i16.v1p0i16(<1 x i16*>, i32, <1 x i1>, <1 x i16>)

declare <64 x i8> @llvm.masked.gather.v64i8.v64p0i8(<64 x i8*>, i32, <64 x i1>, <64 x i8>)
declare <32 x i8> @llvm.masked.gather.v32i8.v32p0i8(<32 x i8*>, i32, <32 x i1>, <32 x i8>)
declare <16 x i8> @llvm.masked.gather.v16i8.v16p0i8(<16 x i8*>, i32, <16 x i1>, <16 x i8>)
declare <8 x i8> @llvm.masked.gather.v8i8.v8p0i8(<8 x i8*>, i32, <8 x i1>, <8 x i8>)
declare <4 x i8> @llvm.masked.gather.v4i8.v4p0i8(<4 x i8*>, i32, <4 x i1>, <4 x i8>)
declare <2 x i8> @llvm.masked.gather.v2i8.v2p0i8(<2 x i8*>, i32, <2 x i1>, <2 x i8>)
declare <1 x i8> @llvm.masked.gather.v1i8.v1p0i8(<1 x i8*>, i32, <1 x i1>, <1 x i8>)
