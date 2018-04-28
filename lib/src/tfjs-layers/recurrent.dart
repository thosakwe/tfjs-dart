@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.recurrent;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer, InputSpec;
import "tensor.dart" show Tensor;
import "types.dart" show SymbolicTensor, LayerVariable, ConfigDict;
import "initializers.dart" show Initializer;
import "regularizers.dart" show Regularizer;
import "constraints.dart" show Constraint;
import "activations.dart" show ActivationFn;

@anonymous
@JS()
abstract class BaseRNNLayerConfig implements LayerConfig {
  external dynamic /*RNNCell|List<RNNCell>*/ get cell;
  external set cell(dynamic /*RNNCell|List<RNNCell>*/ v);
  external bool get returnSequences;
  external set returnSequences(bool v);
  external bool get returnState;
  external set returnState(bool v);
  external bool get goBackwards;
  external set goBackwards(bool v);
  external bool get stateful;
  external set stateful(bool v);
  external bool get unroll;
  external set unroll(bool v);
  external num get inputDim;
  external set inputDim(num v);
  external num get inputLength;
  external set inputLength(num v);
  external factory BaseRNNLayerConfig(
      {dynamic /*RNNCell|List<RNNCell>*/ cell,
      bool returnSequences,
      bool returnState,
      bool goBackwards,
      bool stateful,
      bool unroll,
      num inputDim,
      num inputLength,
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
abstract class RNNLayerConfig implements BaseRNNLayerConfig {
  external dynamic /*RNNCell|List<RNNCell>*/ get cell;
  external set cell(dynamic /*RNNCell|List<RNNCell>*/ v);
  external factory RNNLayerConfig(
      {dynamic /*RNNCell|List<RNNCell>*/ cell,
      bool returnSequences,
      bool returnState,
      bool goBackwards,
      bool stateful,
      bool unroll,
      num inputDim,
      num inputLength,
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
class RNN extends Layer {
  // @Ignore
  RNN.fakeConstructor$() : super.fakeConstructor$();
  external RNNCell get cell;
  external set cell(RNNCell v);
  external bool get returnSequences;
  external set returnSequences(bool v);
  external bool get returnState;
  external set returnState(bool v);
  external bool get goBackwards;
  external set goBackwards(bool v);
  external bool get unroll;
  external set unroll(bool v);
  external List<InputSpec> get stateSpec;
  external set stateSpec(List<InputSpec> v);
  external List<Tensor> get states;
  external set states(List<Tensor> v);
  external get numConstants;
  external set numConstants(v);
  external factory RNN(RNNLayerConfig config);
  external List<Tensor> getStates();
  external void setStates(List<Tensor> states);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external Tensor computeMask(dynamic /*Tensor|List<Tensor>*/ inputs,
      [dynamic /*Tensor|List<Tensor>*/ mask]);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external void resetStates([dynamic /*Tensor|List<Tensor>*/ states]);
  external dynamic
      /*{
        inputs: Tensor | SymbolicTensor;
        initialState: Tensor[] | SymbolicTensor[];
        constants: Tensor[] | SymbolicTensor[];
    }*/
      standardizeArgs(
          dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs,
          dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ initialState,
          dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ constants);
  external dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ apply(
      dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs,
      [dynamic kwargs]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<Tensor> getInitialState(Tensor inputs);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
abstract class RNNCell extends Layer {
  // @Ignore
  RNNCell.fakeConstructor$() : super.fakeConstructor$();
  external dynamic /*num|List<num>*/ get stateSize;
  external set stateSize(dynamic /*num|List<num>*/ v);
}

@anonymous
@JS()
abstract class SimpleRNNCellLayerConfig implements LayerConfig {
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
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get recurrentInitializer;
  external set recurrentInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get biasInitializer;
  external set biasInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get kernelRegularizer;
  external set kernelRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get recurrentRegularizer;
  external set recurrentRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get biasRegularizer;
  external set biasRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get kernelConstraint;
  external set kernelConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get recurrentConstraint;
  external set recurrentConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get biasConstraint;
  external set biasConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external factory SimpleRNNCellLayerConfig(
      {num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
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
class SimpleRNNCell extends RNNCell {
  // @Ignore
  SimpleRNNCell.fakeConstructor$() : super.fakeConstructor$();
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external num get stateSize;
  external set stateSize(num v);
  external LayerVariable get kernel;
  external set kernel(LayerVariable v);
  external LayerVariable get recurrentKernel;
  external set recurrentKernel(LayerVariable v);
  external LayerVariable get bias;
  external set bias(LayerVariable v);
  external String get DEFAULT_ACTIVATION;
  external set DEFAULT_ACTIVATION(String v);
  external String get DEFAULT_KERNEL_INITIALIZER;
  external set DEFAULT_KERNEL_INITIALIZER(String v);
  external String get DEFAULT_RECURRENT_INITIALIZER;
  external set DEFAULT_RECURRENT_INITIALIZER(String v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_BIAS_INITIALIZER;
  external set DEFAULT_BIAS_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external factory SimpleRNNCell(SimpleRNNCellLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class SimpleRNNLayerConfig implements BaseRNNLayerConfig {
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
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get recurrentInitializer;
  external set recurrentInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ get biasInitializer;
  external set biasInitializer(
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get kernelRegularizer;
  external set kernelRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get recurrentRegularizer;
  external set recurrentRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'l1l2'|String|Regularizer*/ get biasRegularizer;
  external set biasRegularizer(dynamic /*'l1l2'|String|Regularizer*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get kernelConstraint;
  external set kernelConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get recurrentConstraint;
  external set recurrentConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ get biasConstraint;
  external set biasConstraint(
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external factory SimpleRNNLayerConfig(
      {num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
      dynamic /*RNNCell|List<RNNCell>*/ cell,
      bool returnSequences,
      bool returnState,
      bool goBackwards,
      bool stateful,
      bool unroll,
      num inputDim,
      num inputLength,
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
class SimpleRNN extends RNN {
  // @Ignore
  SimpleRNN.fakeConstructor$() : super.fakeConstructor$();
  external factory SimpleRNN(SimpleRNNLayerConfig config);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class GRUCellLayerConfig implements SimpleRNNCellLayerConfig {
  external String get recurrentActivation;
  external set recurrentActivation(String v);
  external num get implementation;
  external set implementation(num v);
  external factory GRUCellLayerConfig(
      {String recurrentActivation,
      num implementation,
      num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
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
class GRUCell extends RNNCell {
  // @Ignore
  GRUCell.fakeConstructor$() : super.fakeConstructor$();
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external ActivationFn get recurrentActivation;
  external set recurrentActivation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external num get stateSize;
  external set stateSize(num v);
  external num get implementation;
  external set implementation(num v);
  external String get DEFAULT_ACTIVATION;
  external set DEFAULT_ACTIVATION(String v);
  external String get DEFAULT_RECURRENT_ACTIVATION;
  external set DEFAULT_RECURRENT_ACTIVATION(String v);
  external String get DEFAULT_KERNEL_INITIALIZER;
  external set DEFAULT_KERNEL_INITIALIZER(String v);
  external String get DEFAULT_RECURRENT_INITIALIZER;
  external set DEFAULT_RECURRENT_INITIALIZER(String v);
  external String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ get DEFAULT_BIAS_INITIALIZER;
  external set DEFAULT_BIAS_INITIALIZER(
      String /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String*/ v);
  external LayerVariable get kernel;
  external set kernel(LayerVariable v);
  external LayerVariable get recurrentKernel;
  external set recurrentKernel(LayerVariable v);
  external LayerVariable get bias;
  external set bias(LayerVariable v);
  external factory GRUCell(GRUCellLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class GRULayerConfig implements SimpleRNNLayerConfig {
  external num get implementation;
  external set implementation(num v);
  external factory GRULayerConfig(
      {num implementation,
      num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
      dynamic /*RNNCell|List<RNNCell>*/ cell,
      bool returnSequences,
      bool returnState,
      bool goBackwards,
      bool stateful,
      bool unroll,
      num inputDim,
      num inputLength,
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
class GRU extends RNN {
  // @Ignore
  GRU.fakeConstructor$() : super.fakeConstructor$();
  external factory GRU(GRULayerConfig config);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external num get implementation;
  external set implementation(num v);
  external String getClassName();
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
}

@anonymous
@JS()
abstract class LSTMCellLayerConfig implements SimpleRNNCellLayerConfig {
  external String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ get recurrentActivation;
  external set recurrentActivation(
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ v);
  external bool get unitForgetBias;
  external set unitForgetBias(bool v);
  external get implementation;
  external set implementation(v);
  external factory LSTMCellLayerConfig(
      {String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ recurrentActivation,
      bool unitForgetBias,
      implementation,
      num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
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
class LSTMCell extends RNNCell {
  // @Ignore
  LSTMCell.fakeConstructor$() : super.fakeConstructor$();
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external ActivationFn get recurrentActivation;
  external set recurrentActivation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external bool get unitForgetBias;
  external set unitForgetBias(bool v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external List<num> get stateSize;
  external set stateSize(List<num> v);
  external num get implementation;
  external set implementation(num v);
  external String get DEFAULT_ACTIVATION;
  external set DEFAULT_ACTIVATION(String v);
  external String get DEFAULT_RECURRENT_ACTIVATION;
  external set DEFAULT_RECURRENT_ACTIVATION(String v);
  external String get DEFAULT_KERNEL_INITIALIZER;
  external set DEFAULT_KERNEL_INITIALIZER(String v);
  external String get DEFAULT_RECURRENT_INITIALIZER;
  external set DEFAULT_RECURRENT_INITIALIZER(String v);
  external String get DEFAULT_BIAS_INITIALIZER;
  external set DEFAULT_BIAS_INITIALIZER(String v);
  external LayerVariable get kernel;
  external set kernel(LayerVariable v);
  external LayerVariable get recurrentKernel;
  external set recurrentKernel(LayerVariable v);
  external LayerVariable get bias;
  external set bias(LayerVariable v);
  external factory LSTMCell(LSTMCellLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class LSTMLayerConfig implements SimpleRNNLayerConfig {
  external bool get unitForgetBias;
  external set unitForgetBias(bool v);
  external get implementation;
  external set implementation(v);
  external factory LSTMLayerConfig(
      {bool unitForgetBias,
      implementation,
      num units,
      String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activation,
      bool useBias,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ kernelInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ recurrentInitializer,
      dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer*/ biasInitializer,
      dynamic /*'l1l2'|String|Regularizer*/ kernelRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ recurrentRegularizer,
      dynamic /*'l1l2'|String|Regularizer*/ biasRegularizer,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ kernelConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ recurrentConstraint,
      dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|Constraint*/ biasConstraint,
      num dropout,
      num recurrentDropout,
      dynamic /*RNNCell|List<RNNCell>*/ cell,
      bool returnSequences,
      bool returnState,
      bool goBackwards,
      bool stateful,
      bool unroll,
      num inputDim,
      num inputLength,
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
class LSTM extends RNN {
  // @Ignore
  LSTM.fakeConstructor$() : super.fakeConstructor$();
  external factory LSTM(LSTMLayerConfig config);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external num get units;
  external set units(num v);
  external ActivationFn get activation;
  external set activation(ActivationFn v);
  external bool get useBias;
  external set useBias(bool v);
  external Initializer get kernelInitializer;
  external set kernelInitializer(Initializer v);
  external Initializer get recurrentInitializer;
  external set recurrentInitializer(Initializer v);
  external Initializer get biasInitializer;
  external set biasInitializer(Initializer v);
  external bool get unitForgetBias;
  external set unitForgetBias(bool v);
  external Regularizer get kernelRegularizer;
  external set kernelRegularizer(Regularizer v);
  external Regularizer get recurrentRegularizer;
  external set recurrentRegularizer(Regularizer v);
  external Regularizer get biasRegularizer;
  external set biasRegularizer(Regularizer v);
  external Constraint get kernelConstraint;
  external set kernelConstraint(Constraint v);
  external Constraint get recurrentConstraint;
  external set recurrentConstraint(Constraint v);
  external Constraint get biasConstraint;
  external set biasConstraint(Constraint v);
  external num get dropout;
  external set dropout(num v);
  external num get recurrentDropout;
  external set recurrentDropout(num v);
  external num get implementation;
  external set implementation(num v);
  external String getClassName();
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
}

@anonymous
@JS()
abstract class StackedRNNCellsConfig implements LayerConfig {
  external List<RNNCell> get cells;
  external set cells(List<RNNCell> v);
  external factory StackedRNNCellsConfig(
      {List<RNNCell> cells,
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
class StackedRNNCells extends RNNCell {
  // @Ignore
  StackedRNNCells.fakeConstructor$() : super.fakeConstructor$();
  external List<RNNCell> get cells;
  external set cells(List<RNNCell> v);
  external factory StackedRNNCells(StackedRNNCellsConfig config);
  external List<num> get stateSize;
  external set stateSize(List<num> v);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external String getClassName();
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config,
      [ConfigDict customObjects]);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external List<Tensor> getWeights();
  external void setWeights(List<Tensor> weights);
}
