@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.mulmat_packed_gpu;

import "package:js/js.dart";
import "gpgpu_context.dart" show GPGPUContext;
import "dart:web_gl" show Program, Texture;
import "dart:typed_data" show Float32List;

@JS()
class MatrixOrientation {
  external static num get REGULAR;
  external static num get TRANSPOSED;
}

@JS()
external String getFragmentShaderSource(
    num sharedDimension,
    num /*enum MatrixOrientation*/ aOrientation,
    num /*enum MatrixOrientation*/ bOrientation);
@JS()
external void multiplyMatrixPacked(
    GPGPUContext gpgpu,
    Program multiplyProgram,
    Texture a,
    Texture b,
    Texture result,
    List<num> /*Tuple of <num,num>*/ resultShapeRowCol);
@JS()
external Float32List uploadMultiplyMatrixPackedDownload(
    Float32List a,
    List<num> /*Tuple of <num,num>*/ aShapeRowCol,
    Float32List b,
    List<num> /*Tuple of <num,num>*/ bShapeRowCol,
    [num /*enum MatrixOrientation*/ aOrientation,
    num /*enum MatrixOrientation*/ bOrientation]);
