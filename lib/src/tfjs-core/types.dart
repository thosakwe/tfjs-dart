@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.types;

import "package:js/js.dart";
import "dart:typed_data" show Float32List, Int32List, Uint8List;
import "tensor.dart" show Tensor;

@JS()
class DType {
  external static num get float32;
  external static num get int32;
  external static num get bool;
}

@anonymous
@JS()
abstract class ShapeMap {
  external List<num> get R0;
  external set R0(List<num> v);
  external List<num> /*Tuple of <num>*/ get R1;
  external set R1(List<num> /*Tuple of <num>*/ v);
  external List<num> /*Tuple of <num,num>*/ get R2;
  external set R2(List<num> /*Tuple of <num,num>*/ v);
  external List<num> /*Tuple of <num,num,num>*/ get R3;
  external set R3(List<num> /*Tuple of <num,num,num>*/ v);
  external List<num> /*Tuple of <num,num,num,num>*/ get R4;
  external set R4(List<num> /*Tuple of <num,num,num,num>*/ v);
  external factory ShapeMap(
      {List<num> R0,
      List<num> /*Tuple of <num>*/ R1,
      List<num> /*Tuple of <num,num>*/ R2,
      List<num> /*Tuple of <num,num,num>*/ R3,
      List<num> /*Tuple of <num,num,num,num>*/ R4});
}

@anonymous
@JS()
abstract class DataTypeMap {
  external Float32List get float32;
  external set float32(Float32List v);
  external Int32List get int32;
  external set int32(Int32List v);
  external Uint8List get bool;
  external set bool(Uint8List v);
  external factory DataTypeMap(
      {Float32List float32, Int32List int32, Uint8List bool});
}

/*export declare type DataType = keyof*/
/*export declare type TypedArray = DataTypeMap[*/
@JS()
class Rank {
  external static num get R0;
  external static num get R1;
  external static num get R2;
  external static num get R3;
  external static num get R4;
} /*export declare type TensorLike = TypedArray | number | boolean | number[] | number[][] | number[][][] | number[][][][] | boolean[] | boolean[][] | boolean[][][] | boolean[][][][];*/

/*export declare type TensorLike1D = TypedArray | number[] | boolean[];*/
/*export declare type TensorLike2D = TypedArray | number[] | number[][] | boolean[] | boolean[][];*/
/*export declare type TensorLike3D = TypedArray | number[] | number[][][] | boolean[] | boolean[][][];*/
/*export declare type TensorLike4D = TypedArray | number[] | number[][][][] | boolean[] | boolean[][][][];*/
/*export declare type FlatVector = boolean[] | number[] | TypedArray;*/
/*export declare type RegularArray<T> = T[] | T[][] | T[][][] | T[][][][];*/
/*export declare type ArrayData<D extends DataType> = DataTypeMap[*/
@anonymous
@JS()
abstract class RecursiveArray<T extends dynamic> {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class NamedTensorMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class NamedVariableMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

@JS()
external keyof upcastType(keyof typeA, keyof typeB);
@JS()
external String /*'float32'|'int32'|'bool'*/ sumOutType(
    keyof
        type); /*export declare type TensorContainer = void | Tensor | string | number | boolean | TensorContainerObject | TensorContainerArray;*/

@anonymous
@JS()
abstract class TensorContainerObject {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class TensorContainerArray
    implements
        List<
            dynamic /*Null|Tensor|String|num|bool|TensorContainerObject|TensorContainerArray*/ > {
}
