@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.normalization;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "initializers.dart" show Initializer;
import "constraints.dart" show Constraint;
import "regularizers.dart" show Regularizer;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;

@anonymous
@JS()
abstract class BatchNormalizationLayerConfig implements LayerConfig {
  external num get axis;
  external set axis(num v);
  external num get momentum;
  external set momentum(num v);
  external num get epsilon;
  external set epsilon(num v);
  external bool get center;
  external set center(bool v);
  external bool get scale;
  external set scale(bool v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get betaInitializer;
  external set betaInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get gammaInitializer;
  external set gammaInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get movingMeanInitializer;
  external set movingMeanInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get movingVarianceInitializer;
  external set movingVarianceInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get betaConstraint;
  external set betaConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get gammaConstraint;
  external set gammaConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get betaRegularizer;
  external set betaRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get gammaRegularizer;
  external set gammaRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external factory BatchNormalizationLayerConfig(
      {num axis,
      num momentum,
      num epsilon,
      bool center,
      bool scale,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ betaInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ gammaInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ movingMeanInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ movingVarianceInitializer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ betaConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ gammaConstraint,
      dynamic /*'l1l2'|String|Regularizer*/ betaRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ gammaRegularizer,
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
class BatchNormalization extends Layer {
  // @Ignore
  BatchNormalization.fakeConstructor$() : super.fakeConstructor$();
  external get axis;
  external set axis(v);
  external get momentum;
  external set momentum(v);
  external get epsilon;
  external set epsilon(v);
  external get center;
  external set center(v);
  external get scale;
  external set scale(v);
  external get betaInitializer;
  external set betaInitializer(v);
  external get gammaInitializer;
  external set gammaInitializer(v);
  external get movingMeanInitializer;
  external set movingMeanInitializer(v);
  external get movingVarianceInitializer;
  external set movingVarianceInitializer(v);
  external get betaConstraint;
  external set betaConstraint(v);
  external get gammaConstraint;
  external set gammaConstraint(v);
  external get betaRegularizer;
  external set betaRegularizer(v);
  external get gammaRegularizer;
  external set gammaRegularizer(v);
  external get gamma;
  external set gamma(v);
  external get beta;
  external set beta(v);
  external get movingMean;
  external set movingMean(v);
  external get movingVariance;
  external set movingVariance(v);
  external get stepCount;
  external set stepCount(v);
  external factory BatchNormalization(BatchNormalizationLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}
