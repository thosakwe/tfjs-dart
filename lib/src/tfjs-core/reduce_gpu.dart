@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.reduce_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "reduce_util.dart" show ReduceInfo;

@JS()
class ReduceProgram implements GPGPUProgram {
  // @Ignore
  ReduceProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory ReduceProgram(
      ReduceInfo reduceInfo, String /*'max'|'min'|'sum'*/ reduceType);
}
