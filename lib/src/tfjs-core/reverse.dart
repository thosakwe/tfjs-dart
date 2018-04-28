@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.reverse;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class ReverseOps {
  // @Ignore
  ReverseOps.fakeConstructor$();
  external static Tensor<Rank.R1> reverse1d(Tensor<Rank.R1> x);
  external static Tensor<Rank.R2> reverse2d(Tensor<Rank.R2> x,
      [dynamic /*num|List<num>*/ axis]);
  external static Tensor<Rank.R3> reverse3d(Tensor<Rank.R3> x,
      [dynamic /*num|List<num>*/ axis]);
  external static Tensor<Rank.R4> reverse4d(Tensor<Rank.R4> x,
      [dynamic /*num|List<num>*/ axis]);
  external static dynamic/*=T*/ reverse/*<T extends Tensor>*/(dynamic/*=T*/ x,
      [dynamic /*num|List<num>*/ axis]);
}
