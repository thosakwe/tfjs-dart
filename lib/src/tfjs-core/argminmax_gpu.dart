@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.argminmax_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "reduce_util.dart" show ReduceInfo;

@JS()
class ArgMinMaxProgram implements GPGPUProgram {
  // @Ignore
  ArgMinMaxProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory ArgMinMaxProgram(
      ReduceInfo reduceInfo, String /*'max'|'min'*/ op, bool firstPass);
}
