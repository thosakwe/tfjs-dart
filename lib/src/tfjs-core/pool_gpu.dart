@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.pool_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "conv_util.dart" show Conv2DInfo;

@JS()
class Pool2DProgram implements GPGPUProgram {
  // @Ignore
  Pool2DProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory Pool2DProgram(Conv2DInfo convInfo,
      String /*'max'|'avg'*/ poolType, bool computePositions);
}
