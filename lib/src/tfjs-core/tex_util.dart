@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.tex_util;

import "package:js/js.dart";
import "dart:web_gl" show Texture;
import "types.dart" show DataTypeMap;
import "dart:typed_data" show Float32List, Uint8List;

@JS()
class TextureType {
  external static num get FLOAT;
  external static num get UNSIGNED_BYTE;
}

@anonymous
@JS()
abstract class TextureData {
  external Texture get texture;
  external set texture(Texture v);
  external List<num> get shape;
  external set shape(List<num> v);
  external List<num> /*Tuple of <num,num>*/ get texShape;
  external set texShape(List<num> /*Tuple of <num,num>*/ v);
  external keyof get dtype;
  external set dtype(keyof v);
  external List<DataTypeMap> get values;
  external set values(List<DataTypeMap> v);
  external factory TextureData(
      {Texture texture,
      List<num> shape,
      List<num> /*Tuple of <num,num>*/ texShape,
      keyof dtype,
      List<DataTypeMap> values});
}

@JS()
external List<num> /*Tuple of <num,num>*/ getUnpackedMatrixTextureShapeWidthHeight(
    num rows, num columns);
@JS()
external num getUnpackedArraySizeFromMatrixSize(
    num matrixSize, num channelsPerTexture);
@JS()
external List<num> /*Tuple of <num,num>*/ getColorMatrixTextureShapeWidthHeight(
    num rows, num columns);
@JS()
external num getMatrixSizeFromUnpackedArraySize(num unpackedSize,
    num channelsPerTexture); /*export declare type TypedArray = Float32Array | Uint8Array;*/
@JS()
external void encodeMatrixToUnpackedArray(
    dynamic /*Float32List|Uint8List*/ matrix,
    dynamic /*Float32List|Uint8List*/ unpackedArray,
    num channelsPerTexture);
@JS()
external get FLOAT_MAX;
@JS()
external num get FLOAT_MIN;
@JS()
external get BYTE_NAN_VALUE;
@JS()
external Uint8List encodeFloatArray(Float32List floatArray);
@JS()
external Float32List decodeToFloatArray(Uint8List uintArray);
@JS()
external void decodeMatrixFromUnpackedArray(
    Float32List unpackedArray, Float32List matrix, num channelsPerTexture);
@JS()
external void decodeMatrixFromUnpackedColorRGBAArray(
    Float32List unpackedArray, Float32List matrix, num channels);
@JS()
external List<num> /*Tuple of <num,num>*/ getPackedMatrixTextureShapeWidthHeight(
    num rows, num columns);
@JS()
external num getPackedRGBAArraySizeFromMatrixShape(num rows, num columns);
@JS()
external Float32List encodeMatrixToPackedRGBA(
    Float32List matrix, num rows, num columns, Float32List packedRGBA);
@JS()
external Float32List decodeMatrixFromPackedRGBA(
    Float32List packedRGBA, num rows, num columns, Float32List matrix);
