@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.batchnorm_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class BatchNormProgram implements GPGPUProgram {
  // @Ignore
  BatchNormProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external bool get supportsBroadcasting;
  external set supportsBroadcasting(bool v);
  external factory BatchNormProgram(
      List<num> xShape,
      List<num> meanShape,
      List<num> varianceShape,
      List<num> /*List<num>|Null*/ offsetShape,
      List<num> /*List<num>|Null*/ scaleShape,
      num varianceEpsilon);
}
