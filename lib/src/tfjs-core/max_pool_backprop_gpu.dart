@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.max_pool_backprop_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "conv_util.dart" show Conv2DInfo;

@JS()
class MaxPool2DBackpropProgram implements GPGPUProgram {
  // @Ignore
  MaxPool2DBackpropProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory MaxPool2DBackpropProgram(Conv2DInfo convInfo);
}
