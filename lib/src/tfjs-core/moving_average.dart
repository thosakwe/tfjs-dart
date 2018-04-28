@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.moving_average;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class MovingAverageOps {
  // @Ignore
  MovingAverageOps.fakeConstructor$();
  external static dynamic/*=T*/ movingAverage/*<T extends Tensor>*/(
      dynamic/*=T*/ v, dynamic/*=T*/ x, dynamic /*num|Tensor<Rank.R0>*/ decay,
      [dynamic /*num|Tensor<Rank.R0>*/ step, bool zeroDebias]);
}
