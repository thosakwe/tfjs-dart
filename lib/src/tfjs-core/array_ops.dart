@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.array_ops;

import "package:js/js.dart";
import "types.dart" show ShapeMap;
import "tensor.dart" show Tensor;
import "package:func/func.dart";
import "dart:html" show ImageData, ImageElement, CanvasElement, VideoElement;
import "dart:typed_data" show Uint8ClampedList;

@JS()
class ArrayOps {
  // @Ignore
  ArrayOps.fakeConstructor$();
  external static tensor/*<R extends enum Rank>*/(
      dynamic /*List<DataTypeMap>|num|bool|List<num>|List<List<num>>|List<List<List<num>>>|List<List<List<List<num>>>>|List<bool>|List<List<bool>>|List<List<List<bool>>>|List<List<List<List<bool>>>>*/ values,
      [List<ShapeMap> shape]);
  external keyof get dtype;
  external set dtype(keyof v);
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R>();*/
  /*external Tensor<R2>();*/
  external Tensor/*<R, R2>*/();
  external static Tensor<Rank.R0> scalar(dynamic /*num|bool*/ value,
      [keyof dtype]);
  external static Tensor<Rank.R1> tensor1d(
      List<bool> /*List<DataTypeMap>|List<num>|List<bool>*/ values,
      [keyof dtype]);
  external static Tensor<Rank.R2> tensor2d(
      List<
          List<
              bool>> /*List<DataTypeMap>|List<num>|List<List<num>>|List<bool>|List<List<bool>>*/ values,
      [List<num> /*Tuple of <num,num>*/ shape,
      keyof dtype]);
  external static Tensor<Rank.R3> tensor3d(
      List<
          List<
              List<
                  bool>>> /*List<DataTypeMap>|List<num>|List<List<List<num>>>|List<bool>|List<List<List<bool>>>*/ values,
      [List<num> /*Tuple of <num,num,num>*/ shape,
      keyof dtype]);
  external static Tensor<Rank.R4> tensor4d(
      List<
          List<
              List<
                  List<
                      bool>>>> /*List<DataTypeMap>|List<num>|List<List<List<List<num>>>>|List<bool>|List<List<List<List<bool>>>>*/ values,
      [List<num> /*Tuple of <num,num,num,num>*/ shape,
      keyof dtype]);
  external static ones/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external keyof get dtype;
  external set dtype(keyof v);
  external static zeros/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external keyof get dtype;
  external set dtype(keyof v);
  external static fill/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external num get value;
  external set value(num v);
  external keyof get dtype;
  external set dtype(keyof v);
  external static dynamic/*=T*/ onesLike/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static dynamic/*=T*/ zerosLike/*<T extends Tensor>*/(
      dynamic/*=T*/ x);
  external static dynamic/*=T*/ clone/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external static randomNormal/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external num get mean;
  external set mean(num v);
  external num get stdDev;
  external set stdDev(num v);
  external String /*'float32'|'int32'*/ get dtype;
  external set dtype(String /*'float32'|'int32'*/ v);
  external num get seed;
  external set seed(num v);
  external static truncatedNormal/*<R extends enum Rank>*/(
      [List<ShapeMap> shape]);
  external num get mean;
  external set mean(num v);
  external num get stdDev;
  external set stdDev(num v);
  external String /*'float32'|'int32'*/ get dtype;
  external set dtype(String /*'float32'|'int32'*/ v);
  external num get seed;
  external set seed(num v);
  external static randomUniform/*<R extends enum Rank>*/(
      [List<ShapeMap> shape]);
  external num get minval;
  external set minval(num v);
  external num get maxval;
  external set maxval(num v);
  external keyof get dtype;
  external set dtype(keyof v);
  external static rand/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external Func0<num> get randFunction;
  external set randFunction(Func0<num> v);
  external keyof get dtype;
  external set dtype(keyof v);
  external static Tensor /*Tensor<Rank.R1>|Tensor<Rank.R2>*/ multinomial(
      Tensor /*Tensor<Rank.R1>|Tensor<Rank.R2>*/ logits, num numSamples,
      [num seed, bool normalized]);
  external static Tensor<Rank.R2> oneHot(Tensor<Rank.R1> indices, num depth,
      [num onValue, num offValue]);
  external static Tensor<Rank.R3> fromPixels(
      dynamic /*ImageData|ImageElement|CanvasElement|VideoElement*/ pixels,
      [num numChannels]);
  external static Promise<Uint8ClampedList> toPixels(
      Tensor /*Tensor<Rank.R2>|Tensor<Rank.R3>*/ img,
      [CanvasElement canvas]);
  external static reshape/*<R2 extends enum Rank>*/(Tensor x,
      [List<ShapeMap> shape]);
  external static dynamic/*=T*/ squeeze/*<T extends Tensor>*/(Tensor x,
      [List<num> axis]);
  external static dynamic/*=T*/ cast/*<T extends Tensor>*/(
      dynamic/*=T*/ x, keyof dtype);
  external static dynamic/*=T*/ tile/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<num> reps);
  external static dynamic/*=T*/ gather/*<T extends Tensor>*/(
      dynamic/*=T*/ x, Tensor<Rank.R1> indices,
      [num axis]);
  external static Tensor<Rank.R1> pad1d(
      Tensor<Rank.R1> x, List<num> /*Tuple of <num,num>*/ paddings,
      [num constantValue]);
  external static Tensor<Rank.R2> pad2d(
      Tensor<Rank.R2> x,
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ paddings,
      [num constantValue]);
  external static Tensor<Rank.R3> pad3d(
      Tensor<Rank.R3> x,
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>,Tuple of <num,num>>*/ paddings,
      [num constantValue]);
  external static Tensor<Rank.R4> pad4d(
      Tensor<Rank.R4> x,
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>,Tuple of <num,num>,Tuple of <num,num>>*/ paddings,
      [num constantValue]);
  external static dynamic/*=T*/ pad/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<List<num> /*Tuple of <num,num>*/ > paddings,
      [num constantValue]);
  external static Tensor stack/*<T extends Tensor>*/(
      List<dynamic/*=T*/ > tensors,
      [num axis]);
  external static List<dynamic/*=T*/ > split/*<T extends Tensor>*/(
      dynamic/*=T*/ x, dynamic /*List<num>|num*/ numOrSizeSplits,
      [num axis]);
  external static Tensor<dynamic/*=R2*/ > expandDims/*<R2 extends enum Rank>*/(
      Tensor x,
      [num axis]);
  external static Tensor<Rank.R1> linspace(num start, num stop, num num);
  external static Tensor<Rank.R1> range(num start, num stop,
      [num step, String /*'float32'|'int32'*/ dtype]);
  external static buffer/*<R extends enum Rank>*/([List<ShapeMap> shape]);
  external keyof get dtype;
  external set dtype(keyof v);
  external List<DataTypeMap> get values;
  external set values(List<DataTypeMap> v);
  external TensorBuffer/*<R>*/();
  external static void print/*<T extends Tensor>*/(dynamic/*=T*/ x,
      [bool verbose]);
}
