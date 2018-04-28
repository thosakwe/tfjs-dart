@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.utils.generic_utils;

import "package:js/js.dart";
import "types.dart" show Serializable, ConfigDict;
import "tensor.dart" show Tensor;

@JS()
external List<dynamic> pyListRepeat(dynamic value, num numValues);
@JS()
external dynamic/*=T*/ pyGetAttr/*<T>*/(dynamic obj, String attrName,
    [dynamic/*=T*/ defaultValue]);
@JS()
external num pyNormalizeArrayIndex/*<T>*/(List<dynamic/*=T*/ > x, num index);
@JS()
external void JS$assert(bool val, [String message]);
@JS()
external num count/*<T>*/(List<dynamic/*=T*/ > array,
    dynamic/*=T*/ refernce); /*export declare type Constructor<T> = new (...args: any[]) => T;*/

@JS()
class ClassNameMap {
  // @Ignore
  ClassNameMap.fakeConstructor$();
  external static get instance;
  external static set instance(v);
  external dynamic /*JSMap of <String,dynamic>*/ get pythonClassNameMap;
  external set pythonClassNameMap(dynamic /*JSMap of <String,dynamic>*/ v);
  external factory ClassNameMap();
  external static ClassNameMap getMap();
  external static void register/*<T>*/(String className, dynamic cls);
}

@JS()
class SerializableEnumRegistry {
  // @Ignore
  SerializableEnumRegistry.fakeConstructor$();
  external static get instance;
  external static set instance(v);
  external dynamic /*JSMap of <String,dynamic>*/ get enumRegistry;
  external set enumRegistry(dynamic /*JSMap of <String,dynamic>*/ v);
  external factory SerializableEnumRegistry();
  external static SerializableEnumRegistry getMap();
  external static void register(String fieldName, dynamic enumCls);
  external static bool contains(String fieldName);
  external static dynamic lookup(String fieldName, String value);
  external static String reverseLookup(String fieldName, dynamic value);
}

@JS()
external dynamic /*T|List<T>*/ singletonOrArray/*<T>*/(List<dynamic/*=T*/ > xs);
@JS()
external List<dynamic> toList(dynamic x);
@JS()
external String objectListUid(dynamic /*dynamic|List<dynamic>*/ objs);
@JS()
external bool isArrayOfShapes(List<dynamic> /*List<num>|List<List<num>>*/ x);
@JS()
external List<List<num>> normalizeShapeList(
    List<dynamic> /*List<num>|List<List<num>>*/ x);
@JS()
external String toSnakeCase(String name);
@JS()
external String toCamelCase(String identifier);
@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ serializeKerasObject(
    Serializable instance);
@JS()
external dynamic deserializeKerasObject(
    dynamic /*String|ConfigDict*/ identifier,
    [dynamic /*JSMap of <String,dynamic>*/ moduleObjects,
    dynamic /*JSMap of <String,dynamic>*/ customObjects,
    String printableModuleName]);
@JS()
external Tensor getExactlyOneTensor(dynamic /*Tensor|List<Tensor>*/ xs);
@JS()
external List<num> getExactlyOneShape(
    List<dynamic> /*List<num>|List<List<num>>*/ shapes);
@JS()
external numberCompare(num a, num b);
@JS()
external num reverseNumberCompare(num a, num b);
@JS()
external num /*enum DType*/ stringToDType(String dtype);
@JS()
external bool stringsEqual(List<String> xs, List<String> ys);
@JS()
external List<dynamic/*=T*/ > unique/*<T>*/(List<dynamic/*=T*/ > xs);
@JS()
external bool isObjectEmpty(dynamic /*{}*/ obj);
