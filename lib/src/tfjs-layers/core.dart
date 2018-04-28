@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.core;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;
import "initializers.dart" show Initializer;
import "constraints.dart" show Constraint;
import "regularizers.dart" show Regularizer;
import "activations.dart" show ActivationFn;

@anonymous
@JS()
abstract class DropoutLayerConfig implements LayerConfig {
  external num get rate;
  external set rate(num v);
  external List<num> get noiseShape;
  external set noiseShape(List<num> v);
  external num get seed;
  external set seed(num v);
  external factory DropoutLayerConfig(
      {num rate,
      List<num> noiseShape,
      num seed,
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
class Dropout extends Layer {
  // @Ignore
  Dropout.fakeConstructor$() : super.fakeConstructor$();
  external get rate;
  external set rate(v);
  external get rateScalar;
  external set rateScalar(v);
  external get noiseShape;
  external set noiseShape(v);
  external get seed;
  external set seed(v);
  external factory Dropout(DropoutLayerConfig config);
  external getNoiseShape(input);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class DenseLayerConfig implements LayerConfig {
  external num get units;
  external set units(num v);
  external String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ get activation;
  external set activation(
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ v);
  external bool get useBias;
  external set useBias(bool v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get kernelInitializer;
  external set kernelInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get biasInitializer;
  external set biasInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external num get inputDim;
  external set inputDim(num v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get kernelConstraint;
  external set kernelConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get biasConstraint;
  external set biasConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get kernelRegularizer;
  external set kernelRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get biasRegularizer;
  external set biasRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get activityRegularizer;
  external set activityRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external factory DenseLayerConfig(
      {num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      num inputDim,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ activityRegularizer,
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
class Dense extends Layer {
  // @Ignore
  Dense.fakeConstructor$() : super.fakeConstructor$();
  external get units;
  external set units(v);
  external get activation;
  external set activation(v);
  external get useBias;
  external set useBias(v);
  external get kernelInitializer;
  external set kernelInitializer(v);
  external get biasInitializer;
  external set biasInitializer(v);
  external get kernel;
  external set kernel(v);
  external get bias;
  external set bias(v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_KERNEL_INITIALIZER;
  external set DEFAULT_KERNEL_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_BIAS_INITIALIZER;
  external set DEFAULT_BIAS_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external get kernelConstraint;
  external set kernelConstraint(v);
  external get biasConstraint;
  external set biasConstraint(v);
  external get kernelRegularizer;
  external set kernelRegularizer(v);
  external get biasRegularizer;
  external set biasRegularizer(v);
  external factory Dense(DenseLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
class Flatten extends Layer {
  // @Ignore
  Flatten.fakeConstructor$() : super.fakeConstructor$();
  external factory Flatten([LayerConfig config]);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}

@anonymous
@JS()
abstract class ActivationLayerConfig implements LayerConfig {
  external String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ get activation;
  external set activation(
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ v);
  external factory ActivationLayerConfig(
      {String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
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
class Activation extends Layer {
  // @Ignore
  Activation.fakeConstructor$() : super.fakeConstructor$();
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external factory Activation(ActivationLayerConfig config);
  external String getClassName();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}

@anonymous
@JS()
abstract class ReshapeLayerConfig implements LayerConfig {
  external List<num> get targetShape;
  external set targetShape(List<num> v);
  external factory ReshapeLayerConfig(
      {List<num> targetShape,
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

@anonymous
@JS()
abstract class RepeatVectorLayerConfig implements LayerConfig {
  external num get n;
  external set n(num v);
  external factory RepeatVectorLayerConfig(
      {num n,
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
class RepeatVector extends Layer {
  // @Ignore
  RepeatVector.fakeConstructor$() : super.fakeConstructor$();
  external num get n;
  external set n(num v);
  external factory RepeatVector(RepeatVectorLayerConfig config);
  external List<num> computeOutputShape(List<num> inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
class Reshape extends Layer {
  // @Ignore
  Reshape.fakeConstructor$() : super.fakeConstructor$();
  external get targetShape;
  external set targetShape(v);
  external factory Reshape(ReshapeLayerConfig config);
  external isUnknown(dim);
  external fixUnknownDimension(inputShape, outputShape);
  external List<num> computeOutputShape(List<num> inputShape);
  external String getClassName();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
}
