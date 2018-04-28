@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.environment;

import "package:js/js.dart";
import "engine.dart" show MemoryInfo, Engine;
import "backend.dart" show KernelBackend;

@JS()
class Type {
  external static num get NUMBER;
  external static num get BOOLEAN;
  external static num get STRING;
}

@anonymous
@JS()
abstract class Features {
  external bool get String /*"DEBUG"*/;
  external set String /*"DEBUG"*/ (bool v);
  external num get String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_VERSION"*/;
  external set String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_VERSION"*/ (
      num v);
  external bool get String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_RELIABLE"*/;
  external set String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_RELIABLE"*/ (
      bool v);
  external num get String /*"WEBGL_VERSION"*/;
  external set String /*"WEBGL_VERSION"*/ (num v);
  external bool get String /*"WEBGL_FLOAT_TEXTURE_ENABLED"*/;
  external set String /*"WEBGL_FLOAT_TEXTURE_ENABLED"*/ (bool v);
  external bool
      get String /*"WEBGL_GET_BUFFER_SUB_DATA_ASYNC_EXTENSION_ENABLED"*/;
  external set String /*"WEBGL_GET_BUFFER_SUB_DATA_ASYNC_EXTENSION_ENABLED"*/ (
      bool v);
  external String get String /*"BACKEND"*/;
  external set String /*"BACKEND"*/ (String v);
  external factory Features(
      {bool String /*"DEBUG"*/,
      num String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_VERSION"*/,
      bool String /*"WEBGL_DISJOINT_QUERY_TIMER_EXTENSION_RELIABLE"*/,
      num String /*"WEBGL_VERSION"*/,
      bool String /*"WEBGL_FLOAT_TEXTURE_ENABLED"*/,
      bool String /*"WEBGL_GET_BUFFER_SUB_DATA_ASYNC_EXTENSION_ENABLED"*/,
      String String /*"BACKEND"*/});
}

@JS()
external List<URLProperty> get URL_PROPERTIES;

@anonymous
@JS()
abstract class URLProperty {
  external keyof get name;
  external set name(keyof v);
  external get Features;
  external set Features(v);
  external num /*enum Type*/ get type;
  external set type(num /*enum Type*/ v);
  external factory URLProperty({keyof name, Features, num /*enum Type*/ type});
}

@JS()
class Environment {
  // @Ignore
  Environment.fakeConstructor$();
  external get features;
  external set features(v);
  external get globalEngine;
  external set globalEngine(v);
  external get registry;
  external set registry(v);
  external get currentBackend;
  external set currentBackend(v);
  external factory Environment([Features features]);
  external static void setBackend(String backendType, [bool safeMode]);
  external static String getBackend();
  external static MemoryInfo memory();
  external List<dynamic/*=Features*/ > JS$get/*<K extends keyof, Features>*/(
      dynamic/*=K*/ feature);
  external get K;
  external set K(v);
  external JS$set/*<K extends keyof, Features>*/(dynamic/*=K*/ feature,
      [List<dynamic/*=Features*/ > value]);
  external get JS$void;
  external set JS$void(v);
  external String getBestBackendType();
  external evaluateFeature/*<K>*/(feature);
  external void setFeatures(Features features);
  external void reset();
  external initBackend([backendType, safeMode]);
  external KernelBackend findBackend(String name);
  external bool registerBackend(String name, KernelBackend JS$factory(),
      [num priority]);
  external void removeBackend(String name);
  external Engine get engine;
  external set engine(Engine v);
  external initDefaultBackend();
}

@JS()
external Environment get ENV;
@JS()
external set ENV(Environment v);
