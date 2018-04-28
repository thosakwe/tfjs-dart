@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.compare;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class CompareOps {
  // @Ignore
  CompareOps.fakeConstructor$();
  external static dynamic/*=T*/ notEqual/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ notEqualStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ less/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ lessStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ equal/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ equalStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ lessEqual/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ lessEqualStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ greater/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ greaterStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ greaterEqual/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ greaterEqualStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
}
