@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.resize_bilinear_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class ResizeBilinearProgram implements GPGPUProgram {
  // @Ignore
  ResizeBilinearProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external factory ResizeBilinearProgram(
      List<num> /*Tuple of <num,num,num,num>*/ inputShape,
      num newHeight,
      num newWidth,
      bool alignCorners);
}
