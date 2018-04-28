@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.convolutional;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer, InputSpec;
import "initializers.dart" show Initializer;
import "constraints.dart" show Constraint;
import "regularizers.dart" show Regularizer;
import "tensor.dart" show Tensor;
import "activations.dart" show ActivationFn;
import "types.dart" show LayerVariable, ConfigDict;

@anonymous
@JS()
abstract class ConvLayerConfig implements LayerConfig {
  external dynamic /*num|List<num>*/ get kernelSize;
  external set kernelSize(dynamic /*num|List<num>*/ v);
  external num get filters;
  external set filters(num v);
  external dynamic /*num|List<num>*/ get strides;
  external set strides(dynamic /*num|List<num>*/ v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ get dilationRate;
  external set dilationRate(
      dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ v);
  external String get activation;
  external set activation(String v);
  external bool get useBias;
  external set useBias(bool v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get kernelInitializer;
  external set kernelInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get biasInitializer;
  external set biasInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
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
  external factory ConvLayerConfig(
      {dynamic /*num|List<num>*/ kernelSize,
      num filters,
      dynamic /*num|List<num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ dilationRate,
      String activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
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
abstract class Conv extends Layer {
  // @Ignore
  Conv.fakeConstructor$() : super.fakeConstructor$();
  external num get rank;
  external set rank(num v);
  external num get filters;
  external set filters(num v);
  external List<num> get kernelSize;
  external set kernelSize(List<num> v);
  external List<num> get strides;
  external set strides(List<num> v);
  external String /*'valid'|'same'|'casual'*/ get padding;
  external set padding(String /*'valid'|'same'|'casual'*/ v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ get dilationRate;
  external set dilationRate(
      dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external LayerVariable get kernel;
  external set kernel(LayerVariable v);
  external LayerVariable get bias;
  external set bias(LayerVariable v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_KERNEL_INITIALIZER;
  external set DEFAULT_KERNEL_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_BIAS_INITIALIZER;
  external set DEFAULT_BIAS_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external factory Conv(num rank, ConvLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external ConfigDict getConfig();
}

@JS()
class Conv2D extends Conv {
  // @Ignore
  Conv2D.fakeConstructor$() : super.fakeConstructor$();
  external factory Conv2D(ConvLayerConfig config);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
class Conv2DTranspose extends Conv2D {
  // @Ignore
  Conv2DTranspose.fakeConstructor$() : super.fakeConstructor$();
  external List<InputSpec> get inputSpec;
  external set inputSpec(List<InputSpec> v);
  external factory Conv2DTranspose(ConvLayerConfig config);
  external String getClassName();
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class SeparableConvLayerConfig implements ConvLayerConfig {
  external num get depthMultiplier;
  external set depthMultiplier(num v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get depthwiseInitializer;
  external set depthwiseInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get pointwiseInitializer;
  external set pointwiseInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get depthwiseRegularizer;
  external set depthwiseRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get pointwiseRegularizer;
  external set pointwiseRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get depthwiseConstraint;
  external set depthwiseConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get pointwiseConstraint;
  external set pointwiseConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external factory SeparableConvLayerConfig(
      {num depthMultiplier,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ depthwiseInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ pointwiseInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ depthwiseRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ pointwiseRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ depthwiseConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ pointwiseConstraint,
      dynamic /*num|List<num>*/ kernelSize,
      num filters,
      dynamic /*num|List<num>*/ strides,
      String /*'valid'|'same'|'casual'*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      dynamic /*num|Tuple of <num>|Tuple of <num,num>*/ dilationRate,
      String activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
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
class SeparableConv extends Conv {
  // @Ignore
  SeparableConv.fakeConstructor$() : super.fakeConstructor$();
  external num get depthMultiplier;
  external set depthMultiplier(num v);
  external Initializer get depthwiseInitializer;
  external set depthwiseInitializer(Initializer v);
  external Regularizer get depthwiseRegularizer;
  external set depthwiseRegularizer(Regularizer v);
  external Constraint get depthwiseConstraint;
  external set depthwiseConstraint(Constraint v);
  external Initializer get pointwiseInitializer;
  external set pointwiseInitializer(Initializer v);
  external Regularizer get pointwiseRegularizer;
  external set pointwiseRegularizer(Regularizer v);
  external Constraint get pointwiseConstraint;
  external set pointwiseConstraint(Constraint v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_DEPTHWISE_INITIALIZER;
  external set DEFAULT_DEPTHWISE_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_POINTWISE_INITIALIZER;
  external set DEFAULT_POINTWISE_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external LayerVariable get depthwiseKernel;
  external set depthwiseKernel(LayerVariable v);
  external LayerVariable get pointwiseKernel;
  external set pointwiseKernel(LayerVariable v);
  external factory SeparableConv(num rank, [SeparableConvLayerConfig config]);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
class SeparableConv2D extends SeparableConv {
  // @Ignore
  SeparableConv2D.fakeConstructor$() : super.fakeConstructor$();
  external factory SeparableConv2D([SeparableConvLayerConfig config]);
  external String getClassName();
}

@JS()
class Conv1D extends Conv {
  // @Ignore
  Conv1D.fakeConstructor$() : super.fakeConstructor$();
  external factory Conv1D(ConvLayerConfig config);
  external String getClassName();
  external ConfigDict getConfig();
}
