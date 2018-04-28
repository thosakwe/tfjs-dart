@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.convolutional_depthwise;

import "package:js/js.dart";
import "convolutional.dart" show ConvLayerConfig, Conv2D;
import "initializers.dart" show Initializer;
import "constraints.dart" show Constraint;
import "regularizers.dart" show Regularizer;
import "tensor.dart" show Tensor;

@anonymous
@JS()
abstract class DepthwiseConv2DLayerConfig implements ConvLayerConfig {
  external dynamic /*num|Tuple of <num,num>*/ get kernelSize;
  external set kernelSize(dynamic /*num|Tuple of <num,num>*/ v);
  external num get depthMultiplier;
  external set depthMultiplier(num v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get depthwiseInitializer;
  external set depthwiseInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get depthwiseConstraint;
  external set depthwiseConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get depthwiseRegularizer;
  external set depthwiseRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external factory DepthwiseConv2DLayerConfig(
      {dynamic /*num|Tuple of <num,num>*/ kernelSize,
      num depthMultiplier,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ depthwiseInitializer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ depthwiseConstraint,
      dynamic /*'l1l2'|String|Regularizer*/ depthwiseRegularizer,
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
class DepthwiseConv2D extends Conv2D {
  // @Ignore
  DepthwiseConv2D.fakeConstructor$() : super.fakeConstructor$();
  external get depthMultiplier;
  external set depthMultiplier(v);
  external get depthwiseInitializer;
  external set depthwiseInitializer(v);
  external get depthwiseConstraint;
  external set depthwiseConstraint(v);
  external get depthwiseRegularizer;
  external set depthwiseRegularizer(v);
  external get depthwiseKernel;
  external set depthwiseKernel(v);
  external factory DepthwiseConv2D(DepthwiseConv2DLayerConfig config);
  external String getClassName();
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
}
