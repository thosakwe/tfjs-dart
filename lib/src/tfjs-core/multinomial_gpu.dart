@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.multinomial_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;
import "dart:web_gl" show UniformLocation, Program;
import "package:func/func.dart";
import "gpgpu_context.dart" show GPGPUContext;

@JS()
class MultinomialProgram implements GPGPUProgram {
  // @Ignore
  MultinomialProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external UniformLocation get seedLoc;
  external set seedLoc(UniformLocation v);
  external factory MultinomialProgram(
      num batchSize, num numOutcomes, num numSamples);
  external VoidFunc2<GPGPUContext, Program> getCustomSetupFunc(num seed);
}
