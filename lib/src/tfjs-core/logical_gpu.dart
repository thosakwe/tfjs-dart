@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.logical_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class WhereProgram implements GPGPUProgram {
  // @Ignore
  WhereProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory WhereProgram(num cRank, List<num> shape, num rank);
}
