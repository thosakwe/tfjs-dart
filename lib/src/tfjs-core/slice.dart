@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.slice;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class SliceOps {
  // @Ignore
  SliceOps.fakeConstructor$();
  external static Tensor<Rank.R1> slice1d(
      Tensor<Rank.R1> x, num begin, num size);
  external static Tensor<Rank.R2> slice2d(
      Tensor<Rank.R2> x,
      List<num> /*Tuple of <num,num>*/ begin,
      List<num> /*Tuple of <num,num>*/ size);
  external static Tensor<Rank.R3> slice3d(
      Tensor<Rank.R3> x,
      List<num> /*Tuple of <num,num,num>*/ begin,
      List<num> /*Tuple of <num,num,num>*/ size);
  external static Tensor<Rank.R4> slice4d(
      Tensor<Rank.R4> x,
      List<num> /*Tuple of <num,num,num,num>*/ begin,
      List<num> /*Tuple of <num,num,num,num>*/ size);
  external static dynamic/*=T*/ slice/*<R extends enum Rank, T extends Tensor<R>>*/(
      dynamic/*=T*/ x, dynamic /*num|List<num>*/ begin,
      [dynamic /*num|List<num>*/ size]);
}
