@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.shader_compiler;

import "package:js/js.dart";

@anonymous
@JS()
abstract class ShapeInfo {
  external List<num> get logicalShape;
  external set logicalShape(List<num> v);
  external List<num> /*Tuple of <num,num>*/ get texShape;
  external set texShape(List<num> /*Tuple of <num,num>*/ v);
  external factory ShapeInfo(
      {List<num> logicalShape, List<num> /*Tuple of <num,num>*/ texShape});
}

@anonymous
@JS()
abstract class InputInfo {
  external String get name;
  external set name(String v);
  external ShapeInfo get shapeInfo;
  external set shapeInfo(ShapeInfo v);
  external factory InputInfo({String name, ShapeInfo shapeInfo});
}

@JS()
external String makeShader(List<InputInfo> inputsInfo, ShapeInfo outputShape,
    String userCode, bool broadcast);
@JS()
external String getCoordsDataType(num rank);
