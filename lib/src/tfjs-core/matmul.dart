@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.matmul;

import "package:js/js.dart";

@JS()
class MatmulOps {
  // @Ignore
  MatmulOps.fakeConstructor$();
  external static Tensor<Rank.R2> matMul(Tensor<Rank.R2> a, Tensor<Rank.R2> b,
      [bool transposeA, bool transposeB]);
  external static Tensor<Rank.R1> vectorTimesMatrix(
      Tensor<Rank.R1> v, Tensor<Rank.R2> matrix);
  external static Tensor<Rank.R1> matrixTimesVector(
      Tensor<Rank.R2> matrix, Tensor<Rank.R1> v);
  external static Tensor<Rank.R0> dotProduct(
      Tensor<Rank.R1> v1, Tensor<Rank.R1> v2);
  external static Tensor<Rank.R2> outerProduct(
      Tensor<Rank.R1> v1, Tensor<Rank.R1> v2);
}
