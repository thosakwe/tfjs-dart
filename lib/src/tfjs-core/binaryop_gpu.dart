@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.binaryop_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
external get ADD;
@JS()
external get SUB;
@JS()
external get MUL;
@JS()
external get DIV;
@JS()
external get INT_DIV;
@JS()
external get POW;
@JS()
external get SQUARED_DIFFERENCE;
@JS()
external get EQUAL;
@JS()
external get NOT_EQUAL;
@JS()
external get LESS;
@JS()
external get LESS_EQUAL;
@JS()
external get GREATER;
@JS()
external get GREATER_EQUAL;
@JS()
external get LOGICAL_AND;
@JS()
external get LOGICAL_OR;
@JS()
external String get MAX;
@JS()
external String get MIN;
@JS()
external get MOD;
@JS()
external String get ATAN2;
@JS()
external get ELU_DER;

@JS()
class BinaryOpProgram implements GPGPUProgram {
  // @Ignore
  BinaryOpProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external String get userCode;
  external set userCode(String v);
  external bool get supportsBroadcasting;
  external set supportsBroadcasting(bool v);
  external factory BinaryOpProgram(
      String op, List<num> aShape, List<num> bShape);
}
