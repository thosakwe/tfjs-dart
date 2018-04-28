@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.profiler;

import "package:js/js.dart";
import "backend.dart" show BackendTimer;
import "tensor.dart" show Tensor;

@JS()
class Profiler {
  // @Ignore
  Profiler.fakeConstructor$();
  external get backendTimer;
  external set backendTimer(v);
  external get logger;
  external set logger(v);
  external factory Profiler(BackendTimer backendTimer, [Logger logger]);
  external dynamic/*=T*/ profileKernel/*<T extends Tensor>*/(
      String name, dynamic/*=T*/ f());
}

@JS()
class Logger {
  // @Ignore
  Logger.fakeConstructor$();
  external void logKernelProfile(
      String name, Tensor result, List<DataTypeMap> vals, num timeMs);
}
