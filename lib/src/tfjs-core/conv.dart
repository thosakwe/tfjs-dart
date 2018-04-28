@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.conv;

import "package:js/js.dart";

@JS()
class ConvOps {
  // @Ignore
  ConvOps.fakeConstructor$();
  external static dynamic/*=T*/ conv1d/*<T extends Tensor<Rank.R2>|Tensor<Rank.R3>>*/(
      dynamic/*=T*/ x,
      Tensor<Rank.R3> filter,
      num stride,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'NWC'|'NCW'*/ dataFormat,
      num dilation,
      String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ conv2d/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      Tensor<Rank.R4> filter,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'NHWC'|'NCHW'*/ dataFormat,
      dynamic /*Tuple of <num,num>|num*/ dilations,
      String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ conv2dDerInput/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      List<num> /*Tuple of <num,num,num,num>|Tuple of <num,num,num>*/ xShape,
      dynamic/*=T*/ dy,
      Tensor<Rank.R4> filter,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static Tensor<Rank.R4>
      conv2dDerFilter/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
          dynamic/*=T*/ x,
          dynamic/*=T*/ dy,
          List<num> /*Tuple of <num,num,num,num>*/ filterShape,
          dynamic /*Tuple of <num,num>|num*/ strides,
          dynamic /*'valid'|'same'|num*/ pad,
          [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ conv2dTranspose/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      Tensor<Rank.R4> filter,
      List<
          num> /*Tuple of <num,num,num,num>|Tuple of <num,num,num>*/ outputShape,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ depthwiseConv2d/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      Tensor<Rank.R4> filter,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'NHWC'|'NCHW'*/ dataFormat,
      dynamic /*Tuple of <num,num>|num*/ dilations,
      String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ separableConv2d/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      Tensor<Rank.R4> depthwiseFilter,
      Tensor<Rank.R4> pointwiseFilter,
      dynamic /*Tuple of <num,num>|num*/ strides,
      String /*'valid'|'same'*/ pad,
      [dynamic /*Tuple of <num,num>|num*/ dilation,
      String /*'NHWC'|'NCHW'*/ dataFormat]);
}
