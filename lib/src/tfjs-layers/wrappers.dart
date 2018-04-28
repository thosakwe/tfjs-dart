@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.wrappers;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "tensor.dart" show Tensor;
import "types.dart"
    show
        LayerVariable,
        TensorInterface,
        RegularizerFn,
        ConfigDict,
        SymbolicTensor;
import "recurrent.dart" show RNN;

@anonymous
@JS()
abstract class WrapperLayerConfig implements LayerConfig {
  external Layer get layer;
  external set layer(Layer v);
  external factory WrapperLayerConfig(
      {Layer layer,
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
abstract class Wrapper extends Layer {
  // @Ignore
  Wrapper.fakeConstructor$() : super.fakeConstructor$();
  external Layer get layer;
  external set layer(Layer v);
  external factory Wrapper(WrapperLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external bool get trainable;
  external set trainable(bool v);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external List<TensorInterface> get updates;
  external set updates(List<TensorInterface> v);
  external List<RegularizerFn> get losses;
  external set losses(List<RegularizerFn> v);
  external List<Tensor> getWeights();
  external void setWeights(List<Tensor> weights);
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config,
      [ConfigDict customObjects]);
}

@JS()
class TimeDistributed extends Wrapper {
  // @Ignore
  TimeDistributed.fakeConstructor$() : super.fakeConstructor$();
  external factory TimeDistributed(WrapperLayerConfig config);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
}

@JS()
class BidirectionalMergeMode {
  external static num get SUM;
  external static num get MUL;
  external static num get CONCAT;
  external static num get AVE;
}

@anonymous
@JS()
abstract class BidirectionalLayerConfig implements WrapperLayerConfig {
  external RNN get layer;
  external set layer(RNN v);
  external num /*enum BidirectionalMergeMode*/ get mergeMode;
  external set mergeMode(num /*enum BidirectionalMergeMode*/ v);
  external factory BidirectionalLayerConfig(
      {RNN layer,
      num /*enum BidirectionalMergeMode*/ mergeMode,
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
class Bidirectional extends Wrapper {
  // @Ignore
  Bidirectional.fakeConstructor$() : super.fakeConstructor$();
  external get forwardLayer;
  external set forwardLayer(v);
  external get backwardLayer;
  external set backwardLayer(v);
  external get mergeMode;
  external set mergeMode(v);
  external get returnSequences;
  external set returnSequences(v);
  external get returnState;
  external set returnState(v);
  external get JS$_trainable;
  external set JS$_trainable(v);
  external factory Bidirectional(BidirectionalLayerConfig config);
  external bool get trainable;
  external set trainable(bool v);
  external List<Tensor> getWeights();
  external void setWeights(List<Tensor> weights);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ apply(
      dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs,
      [dynamic kwargs]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external void resetStates([dynamic /*Tensor|List<Tensor>*/ states]);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external String getClassName();
}
