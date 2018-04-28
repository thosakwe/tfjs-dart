@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.onehot_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "dart:web_gl" show UniformLocation;

@JS()
class OneHotProgram implements GPGPUProgram {
  // @Ignore
  OneHotProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external UniformLocation get seedLoc;
  external set seedLoc(UniformLocation v);
  external factory OneHotProgram(
      num numIndices, num depth, num onValue, num offValue);
}
