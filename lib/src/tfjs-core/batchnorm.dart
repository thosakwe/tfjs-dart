@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.batchnorm;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class BatchNormOps {
  // @Ignore
  BatchNormOps.fakeConstructor$();
  external static Tensor<Rank.R2> batchNormalization2d(
      Tensor<Rank.R2> x,
      Tensor /*Tensor<Rank.R2>|Tensor<Rank.R1>*/ mean,
      Tensor /*Tensor<Rank.R2>|Tensor<Rank.R1>*/ variance,
      [num varianceEpsilon,
      Tensor /*Tensor<Rank.R2>|Tensor<Rank.R1>*/ scale,
      Tensor /*Tensor<Rank.R2>|Tensor<Rank.R1>*/ offset]);
  external static Tensor<Rank.R3> batchNormalization3d(
      Tensor<Rank.R3> x,
      Tensor /*Tensor<Rank.R3>|Tensor<Rank.R1>*/ mean,
      Tensor /*Tensor<Rank.R3>|Tensor<Rank.R1>*/ variance,
      [num varianceEpsilon,
      Tensor /*Tensor<Rank.R3>|Tensor<Rank.R1>*/ scale,
      Tensor /*Tensor<Rank.R3>|Tensor<Rank.R1>*/ offset]);
  external static Tensor<Rank.R4> batchNormalization4d(
      Tensor<Rank.R4> x,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ mean,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ variance,
      [num varianceEpsilon,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ scale,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ offset]);
  external static Tensor<dynamic/*=R*/ >
      batchNormalization/*<R extends enum Rank>*/(
          Tensor<dynamic/*=R*/ > x,
          Tensor /*Tensor<R>|Tensor<Rank.R1>*/ mean,
          Tensor /*Tensor<R>|Tensor<Rank.R1>*/ variance,
          [num varianceEpsilon,
          Tensor /*Tensor<R>|Tensor<Rank.R1>*/ scale,
          Tensor /*Tensor<R>|Tensor<Rank.R1>*/ offset]);
}
