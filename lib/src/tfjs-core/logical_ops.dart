@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.logical_ops;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class LogicalOps {
  // @Ignore
  LogicalOps.fakeConstructor$();
  external static dynamic/*=T*/ logicalNot/*<T extends Tensor>*/(
      dynamic/*=T*/ x);
  external static dynamic/*=T*/ logicalAnd/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ logicalOr/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ logicalXor/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ where/*<T extends Tensor>*/(
      Tensor condition, dynamic/*=T*/ a, dynamic/*=T*/ b);
}
