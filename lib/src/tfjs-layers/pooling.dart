@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.pooling;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;

@anonymous
@JS()
abstract class Pooling1DLayerConfig implements LayerConfig {
  external num get poolSize;
  external set poolSize(num v);
  external num get strides;
  external set strides(num v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external factory Pooling1DLayerConfig(
      {num poolSize,
      num strides,
      String /*'valid'|'same'|'casual'*/ padding,
      List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

@JS()
abstract class Pooling1D extends Layer {
  // @Ignore
  Pooling1D.fakeConstructor$() : super.fakeConstructor$();
  external List<num> /*Tuple of <num>*/ get poolSize;
  external set poolSize(List<num> /*Tuple of <num>*/ v);
  external List<num> /*Tuple of <num>*/ get strides;
  external set strides(List<num> /*Tuple of <num>*/ v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external factory Pooling1D(Pooling1DLayerConfig config);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external ConfigDict getConfig();
}

@JS()
class MaxPooling1D extends Pooling1D {
  // @Ignore
  MaxPooling1D.fakeConstructor$() : super.fakeConstructor$();
  external factory MaxPooling1D(Pooling1DLayerConfig config);
  external String getClassName();
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
}

@JS()
class AveragePooling1D extends Pooling1D {
  // @Ignore
  AveragePooling1D.fakeConstructor$() : super.fakeConstructor$();
  external factory AveragePooling1D(Pooling1DLayerConfig config);
  external String getClassName();
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
}

@anonymous
@JS()
abstract class Pooling2DLayerConfig implements LayerConfig {
  external dynamic /*num|Tuple of <num,num>*/ get poolSize;
  external set poolSize(dynamic /*num|Tuple of <num,num>*/ v);
  external List<num> /*Tuple of <num,num>*/ get strides;
  external set strides(List<num> /*Tuple of <num,num>*/ v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external factory Pooling2DLayerConfig(
      {dynamic /*num|Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

@JS()
abstract class Pooling2D extends Layer {
  // @Ignore
  Pooling2D.fakeConstructor$() : super.fakeConstructor$();
  external List<num> /*Tuple of <num,num>*/ get poolSize;
  external set poolSize(List<num> /*Tuple of <num,num>*/ v);
  external List<num> /*Tuple of <num,num>*/ get strides;
  external set strides(List<num> /*Tuple of <num,num>*/ v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external factory Pooling2D(Pooling2DLayerConfig config);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external ConfigDict getConfig();
}

@JS()
class MaxPooling2D extends Pooling2D {
  // @Ignore
  MaxPooling2D.fakeConstructor$() : super.fakeConstructor$();
  external factory MaxPooling2D(Pooling2DLayerConfig config);
  external String getClassName();
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
}

@JS()
class AveragePooling2D extends Pooling2D {
  // @Ignore
  AveragePooling2D.fakeConstructor$() : super.fakeConstructor$();
  external factory AveragePooling2D(Pooling2DLayerConfig config);
  external String getClassName();
  external Tensor poolingFunction(
      Tensor inputs,
      List<num> /*Tuple of <num,num>*/ poolSize,
      List<num> /*Tuple of <num,num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat);
}

@JS()
abstract class GlobalPooling1D extends Layer {
  // @Ignore
  GlobalPooling1D.fakeConstructor$() : super.fakeConstructor$();
  external factory GlobalPooling1D(LayerConfig config);
  external List<num> computeOutputShape(List<num> inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}

@JS()
class GlobalAveragePooling1D extends GlobalPooling1D {
  // @Ignore
  GlobalAveragePooling1D.fakeConstructor$() : super.fakeConstructor$();
  external factory GlobalAveragePooling1D(LayerConfig config);
  external String getClassName();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}

@JS()
class GlobalMaxPooling1D extends GlobalPooling1D {
  // @Ignore
  GlobalMaxPooling1D.fakeConstructor$() : super.fakeConstructor$();
  external factory GlobalMaxPooling1D(LayerConfig config);
  external String getClassName();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}

@anonymous
@JS()
abstract class GlobalPooling2DLayerConfig implements LayerConfig {
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external factory GlobalPooling2DLayerConfig(
      {String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

@JS()
abstract class GlobalPooling2D extends Layer {
  // @Ignore
  GlobalPooling2D.fakeConstructor$() : super.fakeConstructor$();
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external factory GlobalPooling2D(GlobalPooling2DLayerConfig config);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external ConfigDict getConfig();
}

@JS()
class GlobalAveragePooling2D extends GlobalPooling2D {
  // @Ignore
  GlobalAveragePooling2D.fakeConstructor$() : super.fakeConstructor$();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
}

@JS()
class GlobalMaxPooling2D extends GlobalPooling2D {
  // @Ignore
  GlobalMaxPooling2D.fakeConstructor$() : super.fakeConstructor$();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
}
