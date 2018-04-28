@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.embeddings;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "initializers.dart" show Initializer;
import "regularizers.dart" show Regularizer;
import "constraints.dart" show Constraint;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;

@anonymous
@JS()
abstract class EmbeddingLayerConfig implements LayerConfig {
  external num get inputDim;
  external set inputDim(num v);
  external num get outputDim;
  external set outputDim(num v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get embeddingsInitializer;
  external set embeddingsInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get embeddingsRegularizer;
  external set embeddingsRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get activityRegularizer;
  external set activityRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get embeddingsConstraint;
  external set embeddingsConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external bool get maskZero;
  external set maskZero(bool v);
  external dynamic /*num|List<num>*/ get inputLength;
  external set inputLength(dynamic /*num|List<num>*/ v);
  external factory EmbeddingLayerConfig(
      {num inputDim,
      num outputDim,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ embeddingsInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ embeddingsRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ activityRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ embeddingsConstraint,
      bool maskZero,
      dynamic /*num|List<num>*/ inputLength,
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
class Embedding extends Layer {
  // @Ignore
  Embedding.fakeConstructor$() : super.fakeConstructor$();
  external get inputDim;
  external set inputDim(v);
  external get outputDim;
  external set outputDim(v);
  external get embeddingsInitializer;
  external set embeddingsInitializer(v);
  external get maskZero;
  external set maskZero(v);
  external get inputLength;
  external set inputLength(v);
  external get embeddings;
  external set embeddings(v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_EMBEDDINGS_INITIALIZER;
  external set DEFAULT_EMBEDDINGS_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external get embeddingsRegularizer;
  external set embeddingsRegularizer(v);
  external get embeddingsConstraint;
  external set embeddingsConstraint(v);
  external factory Embedding(EmbeddingLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external Tensor computeMask(dynamic /*Tensor|List<Tensor>*/ inputs,
      [dynamic /*Tensor|List<Tensor>*/ mask]);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}
