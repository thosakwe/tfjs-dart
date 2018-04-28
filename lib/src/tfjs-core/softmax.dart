@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.softmax;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class SoftmaxOps {
  // @Ignore
  SoftmaxOps.fakeConstructor$();
  external static dynamic/*=T*/ softmax/*<T extends Tensor>*/(
      dynamic/*=T*/ logits,
      [num dim]);
  external static dynamic/*=O*/ softmaxCrossEntropy/*<T extends Tensor, O extends Tensor>*/(
      dynamic/*=T*/ labels, dynamic/*=T*/ logits,
      [num dim]);
}
