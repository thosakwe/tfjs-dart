@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.unary_ops;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class UnaryOps {
  // @Ignore
  UnaryOps.fakeConstructor$();
  external static dynamic/*=T*/ neg/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ ceil/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ floor/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ sign/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ round/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ exp/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ expm1/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ log/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ log1p/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ sqrt/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ rsqrt/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ square/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ reciprocal/*<T extends Tensor>*/(
      dynamic/*=T*/ x);
  external static dynamic/*=T*/ abs/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ clipByValue/*<T extends Tensor>*/(
      dynamic/*=T*/ x, num clipValueMin, num clipValueMax);
  external static dynamic/*=T*/ relu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ elu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ selu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ leakyRelu/*<T extends Tensor>*/(dynamic/*=T*/ x,
      [num alpha]);
  external static dynamic/*=T*/ prelu/*<T extends Tensor>*/(
      dynamic/*=T*/ x, dynamic/*=T*/ alpha);
  external static dynamic/*=T*/ sigmoid/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ logSigmoid/*<T extends Tensor>*/(
      dynamic/*=T*/ x);
  external static dynamic/*=T*/ softplus/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ sin/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ cos/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ tan/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ asin/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ acos/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ atan/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ sinh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ cosh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ tanh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ asinh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ acosh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ atanh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ erf/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ step/*<T extends Tensor>*/(dynamic/*=T*/ x,
      [num alpha]);
}
