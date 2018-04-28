@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.binary_ops;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class BinaryOps {
  // @Ignore
  BinaryOps.fakeConstructor$();
  external static dynamic/*=T*/ add/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ addStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ sub/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ subStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ pow/*<T extends Tensor>*/(
      dynamic/*=T*/ base, Tensor exp);
  external static dynamic/*=T*/ powStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ base, Tensor exp);
  external static dynamic/*=T*/ mul/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ mulStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ div/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ divStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ mod/*<T extends Tensor>*/(Tensor a, Tensor b);
  external static dynamic/*=T*/ modStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ minimum/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ minimumStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ maximum/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ maximumStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ squaredDifference/*<T extends Tensor>*/(
      Tensor a, Tensor b);
  external static dynamic/*=T*/ squaredDifferenceStrict/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external static dynamic/*=T*/ atan2/*<T extends Tensor>*/(Tensor a, Tensor b);
}
