@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.pool;

import "package:js/js.dart";

@JS()
class PoolOps {
  // @Ignore
  PoolOps.fakeConstructor$();
  external static dynamic/*=T*/ maxPool/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      dynamic /*Tuple of <num,num>|num*/ filterSize,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static Tensor<Rank.R4> maxPoolBackprop(
      Tensor<Rank.R4> dy,
      Tensor<Rank.R4> input,
      Tensor<Rank.R4> output,
      dynamic /*Tuple of <num,num>|num*/ filterSize,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ avgPool/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ x,
      dynamic /*Tuple of <num,num>|num*/ filterSize,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad,
      [String /*'floor'|'round'|'ceil'*/ dimRoundingMode]);
  external static dynamic/*=T*/ avgPoolBackprop/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ dy,
      dynamic/*=T*/ input,
      dynamic /*Tuple of <num,num>|num*/ filterSize,
      dynamic /*Tuple of <num,num>|num*/ strides,
      dynamic /*'valid'|'same'|num*/ pad);
}
