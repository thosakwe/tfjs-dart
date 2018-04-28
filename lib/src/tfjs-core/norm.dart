@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.norm;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class NormOps {
  // @Ignore
  NormOps.fakeConstructor$();
  external static Tensor norm(Tensor x,
      [dynamic /*num|'euclidean'|'fro'*/ ord,
      dynamic /*num|List<num>*/ axis,
      bool keepDims]);
}
