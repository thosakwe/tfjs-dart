@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.conv_backprop_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "conv_util.dart" show Conv2DInfo;

@JS()
class Conv2DDerFilterProgram implements GPGPUProgram {
  // @Ignore
  Conv2DDerFilterProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory Conv2DDerFilterProgram(Conv2DInfo convInfo);
}

@JS()
class Conv2DDerInputProgram implements GPGPUProgram {
  // @Ignore
  Conv2DDerInputProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory Conv2DDerInputProgram(Conv2DInfo convInfo);
}
