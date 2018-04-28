Warning: typeReference with arguements not supported yet:RegularArray<number>
Warning: typeReference with arguements not supported yet:RegularArray<boolean>
Warning: typeReference with arguements not supported yet:RegularArray<number>
Warning: typeReference with arguements not supported yet:RegularArray<boolean>
@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.util;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "dart:typed_data" show Uint32List, Int32List, Float32List;
import "types.dart" show RecursiveArray, DataTypeMap, NamedTensorMap;

@JS()
external void assertArgumentsAreTensors(
    dynamic /*JSMap of <String,Tensor|List<Tensor>>*/ args,
    String functionName);
@JS()
external void shuffle(
    dynamic /*List<dynamic>|Uint32List|Int32List|Float32List*/ array);
@JS()
external num clamp(num min, num x, num max);
@JS()
external num randUniform(num a, num b);
@JS()
external num distSquared(
    List<DataTypeMap> /*List<bool>|List<num>|List<DataTypeMap>*/ a,
    List<DataTypeMap> /*List<bool>|List<num>|List<DataTypeMap>*/ b);
@JS()
external void JS$assert(bool expr, String msg);
@JS()
external void assertShapesMatch(List<num> shapeA, List<num> shapeB,
    [String errorMessagePrefix]);
@JS()
external void assertTypesMatch(Tensor a, Tensor b);
@JS()
external List<dynamic/*=T*/ > flatten/*<T extends num|bool|Tensor|Promise<num>>*/(
    dynamic /*T|RecursiveArray<T>*/ arr,
    [List<dynamic/*=T*/ > ret]);
@JS()
external List<num> inferShape(
    dynamic /*List<DataTypeMap>|num|bool|List<num>|List<List<num>>|List<List<List<num>>>|List<List<List<List<num>>>>|List<bool>|List<List<bool>>|List<List<List<bool>>>|List<List<List<List<bool>>>>*/ val);
@JS()
external num sizeFromShape(List<num> shape);
@JS()
external bool isScalarShape(List<num> shape);
@JS()
external bool arraysEqual(
    List<DataTypeMap> /*List<bool>|List<num>|List<DataTypeMap>*/ n1,
    List<DataTypeMap> /*List<bool>|List<num>|List<DataTypeMap>*/ n2);
@JS()
external bool isInt(num a);
@JS()
external num tanh(num x);
@JS()
external List<num> /*Tuple of <num,num>*/ sizeToSquarishShape(num size);
@JS()
external Uint32List createShuffledIndices(num n);
@JS()
external String rightPad(String a, num size);
@JS()
external Promise<Null> repeatedTry(bool checkFn(),
    [num delayFn(num counter), num maxCounter]);
@JS()
external dynamic /*JSMap of <String,String>*/ getQueryParams(
    String queryString);
@JS()
external List<num> inferFromImplicitShape(List<num> shape, num size);
@JS()
external dynamic /*{
    newShape: number[];
    keptDims: number[];
}*/
    squeezeShape(List<num> shape, [List<num> axis]);
@JS()
external List<DataTypeMap> getTypedArrayFromDType/*<D extends keyof>*/(
    dynamic/*=D*/ dtype, num size);
@JS()
external bool isTensorInList(Tensor tensor, List<Tensor> tensorList);
@JS()
external checkForNaN/*<D extends keyof>*/([List<DataTypeMap> vals]);
@JS()
external List<Tensor> flattenNameArrayMap(
    Tensor /*Tensor|NamedTensorMap*/ nameArrayMap,
    [List<String> keys]);
@JS()
external NamedTensorMap unflattenToNameArrayMap(
    List<String> keys, List<Tensor> flatArrays);
@JS()
external bool hasEncodingLoss(keyof oldType, keyof newType);
@JS()
external copyTypedArray/*<D extends keyof>*/([List<DataTypeMap> array]);
@JS()
external bool isTypedArray(
    dynamic /*List<DataTypeMap>|num|bool|List<num>|List<List<num>>|List<List<List<num>>>|List<List<List<List<num>>>>|List<bool>|List<List<bool>>|List<List<List<bool>>>|List<List<List<List<bool>>>>*/ a);
@JS()
external num bytesPerElement(keyof dtype);
@JS()
external bool isFunction(Function f);
@JS()
external List<Tensor> extractTensorsFromContainer(
    dynamic /*Null|Tensor|String|num|bool|TensorContainerObject|TensorContainerArray*/ result);
@JS()
external List<Tensor> extractTensorsFromAny(dynamic result);

