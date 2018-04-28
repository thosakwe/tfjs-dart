@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.advanced_activations;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;

@anonymous
@JS()
abstract class LeakyReLULayerConfig implements LayerConfig {
  external num get alpha;
  external set alpha(num v);
  external factory LeakyReLULayerConfig(
      {num alpha,
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
class LeakyReLU extends Layer {
  // @Ignore
  LeakyReLU.fakeConstructor$() : super.fakeConstructor$();
  external num get alpha;
  external set alpha(num v);
  external num get DEFAULT_ALPHA;
  external set DEFAULT_ALPHA(num v);
  external factory LeakyReLU([LeakyReLULayerConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class ELULayerConfig implements LayerConfig {
  external num get alpha;
  external set alpha(num v);
  external factory ELULayerConfig(
      {num alpha,
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
class ELU extends Layer {
  // @Ignore
  ELU.fakeConstructor$() : super.fakeConstructor$();
  external num get alpha;
  external set alpha(num v);
  external num get DEFAULT_ALPHA;
  external set DEFAULT_ALPHA(num v);
  external factory ELU([ELULayerConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class ThresholdedReLULayerConfig implements LayerConfig {
  external num get theta;
  external set theta(num v);
  external factory ThresholdedReLULayerConfig(
      {num theta,
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
class ThresholdedReLU extends Layer {
  // @Ignore
  ThresholdedReLU.fakeConstructor$() : super.fakeConstructor$();
  external num get theta;
  external set theta(num v);
  external get thetaTensor;
  external set thetaTensor(v);
  external num get DEFAULT_THETA;
  external set DEFAULT_THETA(num v);
  external factory ThresholdedReLU([ThresholdedReLULayerConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class SoftmaxLayerConfig implements LayerConfig {
  external num get axis;
  external set axis(num v);
  external factory SoftmaxLayerConfig(
      {num axis,
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
class Softmax extends Layer {
  // @Ignore
  Softmax.fakeConstructor$() : super.fakeConstructor$();
  external num get axis;
  external set axis(num v);
  external num get DEFAULT_AXIS;
  external set DEFAULT_AXIS(num v);
  external factory Softmax([ThresholdedReLULayerConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external ConfigDict getConfig();
}
