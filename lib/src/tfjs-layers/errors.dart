@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.errors;

import "package:js/js.dart";

@JS()
class AttributeError extends Error {
  // @Ignore
  AttributeError.fakeConstructor$() : super.fakeConstructor$();
  external factory AttributeError([String message]);
}

@JS()
class RuntimeError extends Error {
  // @Ignore
  RuntimeError.fakeConstructor$() : super.fakeConstructor$();
  external factory RuntimeError([String message]);
}

@JS()
class ValueError extends Error {
  // @Ignore
  ValueError.fakeConstructor$() : super.fakeConstructor$();
  external factory ValueError([String message]);
}

@JS()
class NotImplementedError extends Error {
  // @Ignore
  NotImplementedError.fakeConstructor$() : super.fakeConstructor$();
  external factory NotImplementedError([String message]);
}

@JS()
class AssertionError extends Error {
  // @Ignore
  AssertionError.fakeConstructor$() : super.fakeConstructor$();
  external factory AssertionError([String message]);
}

@JS()
class IndexError extends Error {
  // @Ignore
  IndexError.fakeConstructor$() : super.fakeConstructor$();
  external factory IndexError([String message]);
}
