@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.tracking;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "engine.dart" show ScopeFn, TimingInfo;

@JS()
class Tracking {
  // @Ignore
  Tracking.fakeConstructor$();
  external static dynamic/*=T*/ tidy/*<T extends Null|Tensor|String|num|bool|TensorContainerObject|TensorContainerArray>*/(
      String /*String|ScopeFn<T>*/ nameOrFn,
      [ScopeFn<dynamic/*=T*/ > fn,
      bool gradMode]);
  external static void dispose(dynamic container);
  external static dynamic/*=T*/ keep/*<T extends Tensor>*/(
      dynamic/*=T*/ result);
  external static Promise<TimingInfo> time(void f());
}
