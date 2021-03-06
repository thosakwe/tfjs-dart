@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.from_pixels_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class FromPixelsProgram implements GPGPUProgram {
  // @Ignore
  FromPixelsProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external String get userCode;
  external set userCode(String v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external factory FromPixelsProgram(List<num> outputShape);
}
