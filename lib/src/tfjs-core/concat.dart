@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.concat;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class ConcatOps {
  // @Ignore
  ConcatOps.fakeConstructor$();
  external static Tensor<Rank.R1> concat1d(List<Tensor<Rank.R1>> tensors);
  external static Tensor<Rank.R2> concat2d(
      List<Tensor<Rank.R2>> tensors, num axis);
  external static Tensor<Rank.R3> concat3d(
      List<Tensor<Rank.R3>> tensors, num axis);
  external static Tensor<Rank.R4> concat4d(
      List<Tensor<Rank.R4>> tensors, num axis);
  external static dynamic/*=T*/ concat/*<T extends Tensor>*/(
      List<dynamic/*=T*/ > tensors,
      [num axis]);
}
