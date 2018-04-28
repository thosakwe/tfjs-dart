@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.gather_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class GatherProgram implements GPGPUProgram {
  // @Ignore
  GatherProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external num get rank;
  external set rank(num v);
  external factory GatherProgram(List<num> aShape, num indicesLength, num axis);
}
