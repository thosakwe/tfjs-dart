@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.copy_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "package:func/func.dart";
import "gpgpu_context.dart" show GPGPUContext;
import "dart:web_gl" show Program;

@JS()
class Copy2DProgram implements GPGPUProgram {
  // @Ignore
  Copy2DProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory Copy2DProgram(num srcNumCols, num destNumCols);
  external VoidFunc2<GPGPUContext, Program> getCustomSetupFunc(
      List<num> /*Tuple of <num,num>*/ sourceStart,
      List<num> /*Tuple of <num,num>*/ destStart,
      List<num> /*Tuple of <num,num>*/ destSize);
}
