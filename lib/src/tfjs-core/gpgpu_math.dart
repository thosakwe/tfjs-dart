@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.gpgpu_math;

import "package:js/js.dart";
import "dart:web_gl" show Program, UniformLocation;
import "gpgpu_context.dart" show GPGPUContext;
import "shader_compiler.dart" show ShapeInfo;
import "tensor.dart" show Tensor;
import "tex_util.dart" show TextureData;

@anonymous
@JS()
abstract class GPGPUProgram {
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external bool get supportsBroadcasting;
  external set supportsBroadcasting(bool v);
  external factory GPGPUProgram(
      {List<String> variableNames,
      List<num> outputShape,
      String userCode,
      bool supportsBroadcasting});
}

@anonymous
@JS()
abstract class GPGPUBinary {
  external Program get webGLProgram;
  external set webGLProgram(Program v);
  external GPGPUProgram get program;
  external set program(GPGPUProgram v);
  external dynamic /*JSMap of <String,UniformLocation>*/ get uniformLocations;
  external set uniformLocations(
      dynamic /*JSMap of <String,UniformLocation>*/ v);
  external GPGPUContext get gpgpu;
  external set gpgpu(GPGPUContext v);
  external String get source;
  external set source(String v);
  external List<ShapeInfo> get inShapeInfos;
  external set inShapeInfos(List<ShapeInfo> v);
  external ShapeInfo get outShapeInfo;
  external set outShapeInfo(ShapeInfo v);
  external factory GPGPUBinary(
      {Program webGLProgram,
      GPGPUProgram program,
      dynamic /*JSMap of <String,UniformLocation>*/ uniformLocations,
      GPGPUContext gpgpu,
      String source,
      List<ShapeInfo> inShapeInfos,
      ShapeInfo outShapeInfo});
}

@anonymous
@JS()
abstract class TensorData<T extends Tensor> {
  external T get tensor;
  external set tensor(T v);
  external TextureData get texData;
  external set texData(TextureData v);
  external factory TensorData({T tensor, TextureData texData});
}

@JS()
external GPGPUBinary compileProgram/*<T extends Tensor, K extends Tensor>*/(
    GPGPUContext gpgpu,
    GPGPUProgram program,
    List<TensorData<dynamic/*=T*/ >> inputs,
    TensorData<dynamic/*=K*/ > output);
@JS()
external void runProgram/*<T extends Tensor, K extends Tensor>*/(
    GPGPUBinary binary,
    List<TensorData<dynamic/*=T*/ >> inputs,
    TensorData<dynamic/*=K*/ > output,
    [void customSetup(GPGPUContext gpgpu, Program webGLProgram)]);
@JS()
external String makeShaderKey(GPGPUProgram program,
    List<TensorData<Tensor>> inputs, TensorData<Tensor> output);
