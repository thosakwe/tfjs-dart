@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.unaryop_gpu;

import "package:js/js.dart";
import "gpgpu_math.dart" show GPGPUProgram;

@JS()
class UnaryOpProgram implements GPGPUProgram {
  // @Ignore
  UnaryOpProgram.fakeConstructor$();
  external List<String> get variableNames;
  external set variableNames(List<String> v);
  external String get userCode;
  external set userCode(String v);
  external List<num> get outputShape;
  external set outputShape(List<num> v);
  external factory UnaryOpProgram(List<num> aShape, String opSnippet);
}

@JS()
external get ABS;
@JS()
external get RELU;
@JS()
external get ELU;
@JS()
external String get SELU;
@JS()
external String STEP([num alpha]);
@JS()
external get NEG;
@JS()
external get CEIL;
@JS()
external get FLOOR;
@JS()
external get SIGN;
@JS()
external get ROUND;
@JS()
external get EXP;
@JS()
external get EXPM1;
@JS()
external get LOG;
@JS()
external get LOG1P;
@JS()
external get SQRT;
@JS()
external get RSQRT;
@JS()
external get SIGMOID;
@JS()
external get SOFTPLUS;
@JS()
external get SIN;
@JS()
external get COS;
@JS()
external get TAN;
@JS()
external get ASIN;
@JS()
external get ACOS;
@JS()
external String get ATAN;
@JS()
external get SINH;
@JS()
external get COSH;
@JS()
external get TANH;
@JS()
external get ASINH;
@JS()
external get ACOSH;
@JS()
external get ATANH;
@JS()
external String get ERF;
@JS()
external get SQUARE;
@JS()
external get RECIPROCAL;
@JS()
external get LOGICAL_NOT;
@JS()
external get TO_INT;
