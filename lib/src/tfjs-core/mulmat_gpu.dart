@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.mulmat_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class MatMulProgram implements GPGPUProgram {
  // @Ignore
  MatMulProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory MatMulProgram(List<num> /*Tuple of <num,num>*/ aShape,
      List<num> /*Tuple of <num,num>*/ bShape,
      [bool transposeA, bool transposeB]);
}
