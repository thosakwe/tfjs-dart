@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.slice_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "dart:web_gl" show UniformLocation, Program;
import "package:func/func.dart";
import "gpgpu_context.dart" show GPGPUContext;

@JS()
class SliceProgram implements GPGPUProgram {
  // @Ignore
  SliceProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external num get rank;
  external set rank(num v);
  external UniformLocation get startLoc;
  external set startLoc(UniformLocation v);
  external factory SliceProgram(List<num> destSize);
  external VoidFunc2<GPGPUContext, Program> getCustomSetupFunc(List<num> start);
}
