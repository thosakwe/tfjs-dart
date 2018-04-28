@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.engine.topology;

import "package:js/js.dart";
import "types.dart"
    show
        LayerVariable,
        SymbolicTensor,
        ConfigDict,
        Serializable,
        RegularizerFn,
        TensorInterface,
        JsonDict,
        NamedTensorMap;
import "tensor.dart" show Tensor;
import "regularizers.dart" show Regularizer;
import "initializers.dart" show Initializer;
import "constraints.dart" show Constraint;

typedef LayerVariable Op(LayerVariable x);

@anonymous
@JS()
abstract class InputSpecConfig {
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external num get ndim;
  external set ndim(num v);
  external num get maxNDim;
  external set maxNDim(num v);
  external num get minNDim;
  external set minNDim(num v);
  external dynamic /*JSMap of <num,num>*/ get axes;
  external set axes(dynamic /*JSMap of <num,num>*/ v);
  external factory InputSpecConfig(
      {num /*enum DType*/ dtype,
      List<num> shape,
      num ndim,
      num maxNDim,
      num minNDim,
      dynamic /*JSMap of <num,num>*/ axes});
}

@JS()
class InputSpec {
  // @Ignore
  InputSpec.fakeConstructor$();
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external num get ndim;
  external set ndim(num v);
  external num get maxNDim;
  external set maxNDim(num v);
  external num get minNDim;
  external set minNDim(num v);
  external dynamic /*JSMap of <num,num>*/ get axes;
  external set axes(dynamic /*JSMap of <num,num>*/ v);
  external factory InputSpec(InputSpecConfig config);
}

@anonymous
@JS()
abstract class NodeConfig {
  external Layer get outboundLayer;
  external set outboundLayer(Layer v);
  external List<Layer> get inboundLayers;
  external set inboundLayers(List<Layer> v);
  external List<num> get nodeIndices;
  external set nodeIndices(List<num> v);
  external List<num> get tensorIndices;
  external set tensorIndices(List<num> v);
  external List<SymbolicTensor> get inputTensors;
  external set inputTensors(List<SymbolicTensor> v);
  external List<SymbolicTensor> get outputTensors;
  external set outputTensors(List<SymbolicTensor> v);
  external List<Tensor> get inputMasks;
  external set inputMasks(List<Tensor> v);
  external List<Tensor> get outputMasks;
  external set outputMasks(List<Tensor> v);
  external List<dynamic> /*List<num>|List<List<num>>*/ get inputShapes;
  external set inputShapes(List<dynamic> /*List<num>|List<List<num>>*/ v);
  external List<dynamic> /*List<num>|List<List<num>>*/ get outputShapes;
  external set outputShapes(List<dynamic> /*List<num>|List<List<num>>*/ v);
  external factory NodeConfig(
      {Layer outboundLayer,
      List<Layer> inboundLayers,
      List<num> nodeIndices,
      List<num> tensorIndices,
      List<SymbolicTensor> inputTensors,
      List<SymbolicTensor> outputTensors,
      List<Tensor> inputMasks,
      List<Tensor> outputMasks,
      List<dynamic> /*List<num>|List<List<num>>*/ inputShapes,
      List<dynamic> /*List<num>|List<List<num>>*/ outputShapes});
}

@JS()
class Node {
  // @Ignore
  Node.fakeConstructor$();
  external dynamic get callArgs;
  external set callArgs(dynamic v);
  external Layer get outboundLayer;
  external set outboundLayer(Layer v);
  external List<Layer> get inboundLayers;
  external set inboundLayers(List<Layer> v);
  external List<num> get nodeIndices;
  external set nodeIndices(List<num> v);
  external List<num> get tensorIndices;
  external set tensorIndices(List<num> v);
  external List<SymbolicTensor> get inputTensors;
  external set inputTensors(List<SymbolicTensor> v);
  external List<SymbolicTensor> get outputTensors;
  external set outputTensors(List<SymbolicTensor> v);
  external List<Tensor> get inputMasks;
  external set inputMasks(List<Tensor> v);
  external List<Tensor> get outputMasks;
  external set outputMasks(List<Tensor> v);
  external List<dynamic> /*List<num>|List<List<num>>*/ get inputShapes;
  external set inputShapes(List<dynamic> /*List<num>|List<List<num>>*/ v);
  external List<dynamic> /*List<num>|List<List<num>>*/ get outputShapes;
  external set outputShapes(List<dynamic> /*List<num>|List<List<num>>*/ v);
  external num get id;
  external set id(num v);
  external factory Node(NodeConfig config, [dynamic callArgs]);
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class LayerConfig {
  external List<num> get inputShape;
  external set inputShape(List<num> v);
  external List<num> get batchInputShape;
  external set batchInputShape(List<num> v);
  external num get batchSize;
  external set batchSize(num v);
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external String get name;
  external set name(String v);
  external bool get trainable;
  external set trainable(bool v);
  external bool get updatable;
  external set updatable(bool v);
  external List<Tensor> get weights;
  external set weights(List<Tensor> v);
  external num /*enum DType*/ get inputDType;
  external set inputDType(num /*enum DType*/ v);
  external factory LayerConfig(
      {List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

typedef void CallHook(dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);

@JS()
abstract class Layer extends Serializable {
  // @Ignore
  Layer.fakeConstructor$() : super.fakeConstructor$();
  external String get name;
  external set name(String v);
  external List<InputSpec> get inputSpec;
  external set inputSpec(List<InputSpec> v);
  external bool get supportsMasking;
  external set supportsMasking(bool v);
  external bool get trainable;
  external set trainable(bool v);
  external bool get updatable;
  external set updatable(bool v);
  external List<num> get batchInputShape;
  external set batchInputShape(List<num> v);
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<Tensor> get initialWeights;
  external set initialWeights(List<Tensor> v);
  external List<Node> get inboundNodes;
  external set inboundNodes(List<Node> v);
  external List<Node> get outboundNodes;
  external set outboundNodes(List<Node> v);
  external Regularizer get activityRegularizer;
  external set activityRegularizer(Regularizer v);
  external List<LayerVariable> get JS$_trainableWeights;
  external set JS$_trainableWeights(List<LayerVariable> v);
  external get JS$_nonTrainableWeights;
  external set JS$_nonTrainableWeights(v);
  external get JS$_losses;
  external set JS$_losses(v);
  external get JS$_updates;
  external set JS$_updates(v);
  external get JS$_built;
  external set JS$_built(v);
  external get JS$_callHook;
  external set JS$_callHook(v);
  external get JS$_addedWeightNames;
  external set JS$_addedWeightNames(v);
  external num get id;
  external set id(num v);
  external bool get JS$_stateful;
  external set JS$_stateful(bool v);
  external factory Layer(LayerConfig config);
  external static String nodeKey(Layer layer, num nodeIndex);
  external getNodeAtIndex(nodeIndex, attrName);
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ getInputAt(
      num nodeIndex);
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ getOutputAt(
      num nodeIndex);
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ get input;
  external set input(dynamic /*SymbolicTensor|List<SymbolicTensor>*/ v);
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ get output;
  external set output(dynamic /*SymbolicTensor|List<SymbolicTensor>*/ v);
  external List<RegularizerFn> get losses;
  external set losses(List<RegularizerFn> v);
  external List<Tensor<Rank.R0>> calculateLosses();
  external List<TensorInterface> get updates;
  external set updates(List<TensorInterface> v);
  external bool get built;
  external set built(bool v);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get weights;
  external set weights(List<LayerVariable> v);
  external bool get stateful;
  external set stateful(bool v);
  external void assertInputCompatibility(
      dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external void invokeCallHook(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external void setCallHook(CallHook callHook);
  external void clearCallHook();
  external dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ apply(
      dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs,
      [dynamic kwargs]);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external List<Tensor> getWeights();
  external void setWeights(List<Tensor> weights);
  external LayerVariable addWeight(String name, List<num> shape,
      [num /*enum DType*/ dtype,
      Initializer initializer,
      Regularizer regularizer,
      bool trainable,
      Constraint constraint]);
  external void addLoss(
      List<RegularizerFn> /*RegularizerFn|List<RegularizerFn>*/ losses);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ computeMask(
      dynamic /*Tensor|List<Tensor>*/ inputs,
      [dynamic /*Tensor|List<Tensor>*/ mask]);
  external addInboundNode(inputTensors, outputTensors, inputMasks, outputMasks,
      inputShapes, outputShapes,
      [kwargs]);
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
}

@anonymous
@JS()
abstract class InputLayerConfig {
  external List<num> get inputShape;
  external set inputShape(List<num> v);
  external num get batchSize;
  external set batchSize(num v);
  external List<num> get batchInputShape;
  external set batchInputShape(List<num> v);
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external bool get sparse;
  external set sparse(bool v);
  external String get name;
  external set name(String v);
  external factory InputLayerConfig(
      {List<num> inputShape,
      num batchSize,
      List<num> batchInputShape,
      num /*enum DType*/ dtype,
      bool sparse,
      String name});
}

@JS()
class InputLayer extends Layer {
  // @Ignore
  InputLayer.fakeConstructor$() : super.fakeConstructor$();
  external bool get sparse;
  external set sparse(bool v);
  external factory InputLayer(InputLayerConfig config);
  external dynamic /*Tensor|List<Tensor>|SymbolicTensor*/ apply(
      dynamic /*Tensor|List<Tensor>|SymbolicTensor|List<SymbolicTensor>*/ inputs,
      [dynamic kwargs]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class InputConfig {
  external List<num> get shape;
  external set shape(List<num> v);
  external List<num> get batchShape;
  external set batchShape(List<num> v);
  external String get name;
  external set name(String v);
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external bool get sparse;
  external set sparse(bool v);
  external factory InputConfig(
      {List<num> shape,
      List<num> batchShape,
      String name,
      num /*enum DType*/ dtype,
      bool sparse});
}

@JS()
external SymbolicTensor Input(InputConfig config);

@anonymous
@JS()
abstract class ContainerConfig {
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ get inputs;
  external set inputs(dynamic /*SymbolicTensor|List<SymbolicTensor>*/ v);
  external dynamic /*SymbolicTensor|List<SymbolicTensor>*/ get outputs;
  external set outputs(dynamic /*SymbolicTensor|List<SymbolicTensor>*/ v);
  external String get name;
  external set name(String v);
  external factory ContainerConfig(
      {dynamic /*SymbolicTensor|List<SymbolicTensor>*/ inputs,
      dynamic /*SymbolicTensor|List<SymbolicTensor>*/ outputs,
      String name});
}

@JS()
abstract class Container extends Layer {
  // @Ignore
  Container.fakeConstructor$() : super.fakeConstructor$();
  external List<SymbolicTensor> get inputs;
  external set inputs(List<SymbolicTensor> v);
  external List<SymbolicTensor> get outputs;
  external set outputs(List<SymbolicTensor> v);
  external List<Layer> get inputLayers;
  external set inputLayers(List<Layer> v);
  external List<num> get inputLayersNodeIndices;
  external set inputLayersNodeIndices(List<num> v);
  external List<num> get inputLayersTensorIndices;
  external set inputLayersTensorIndices(List<num> v);
  external List<Layer> get outputLayers;
  external set outputLayers(List<Layer> v);
  external List<num> get outputLayersNodeIndices;
  external set outputLayersNodeIndices(List<num> v);
  external List<num> get outputLayersTensorIndices;
  external set outputLayersTensorIndices(List<num> v);
  external List<Layer> get layers;
  external set layers(List<Layer> v);
  external dynamic /*JSMap of <String,List<Layer>>*/ get layersByDepth;
  external set layersByDepth(dynamic /*JSMap of <String,List<Layer>>*/ v);
  external dynamic /*JSMap of <String,List<Node>>*/ get nodesByDepth;
  external set nodesByDepth(dynamic /*JSMap of <String,List<Node>>*/ v);
  external Set<String> get containerNodes;
  external set containerNodes(Set<String> v);
  external List<String> get inputNames;
  external set inputNames(List<String> v);
  external List<String> get outputNames;
  external set outputNames(List<String> v);
  external List<List<num>> get feedInputShapes;
  external set feedInputShapes(List<List<num>> v);
  external List<List<num>> get internalInputShapes;
  external set internalInputShapes(List<List<num>> v);
  external List<List<num>> get internalOutputShapes;
  external set internalOutputShapes(List<List<num>> v);
  external List<String> get feedInputNames;
  external set feedInputNames(List<String> v);
  external List<String> get feedOutputNames;
  external set feedOutputNames(List<String> v);
  external factory Container(ContainerConfig config);
  external List<LayerVariable> get trainableWeights;
  external set trainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get nonTrainableWeights;
  external set nonTrainableWeights(List<LayerVariable> v);
  external List<LayerVariable> get weights;
  external set weights(List<LayerVariable> v);
  external void loadWeights(JsonDict /*JsonDict|NamedTensorMap*/ weightsJSON,
      [bool skipMismatch, bool isNamedTensorMap]);
  external updatedConfig();
  external String toJSON([dynamic unused]);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external dynamic /*Tensor|List<Tensor>*/ computeMask(
      dynamic /*Tensor|List<Tensor>*/ inputs,
      [dynamic /*Tensor|List<Tensor>*/ mask]);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external List<
      List<
          dynamic> /*List<Tensor>|List<List<num>>*/ > /*Tuple of <List<Tensor>,List<Tensor>,List<List<num>>>*/ runInternalGraph(
      List<Tensor> inputs,
      [List<Tensor> masks]);
  external buildNodeConversionMap(layers);
  external Layer getLayer([String name, num index]);
  external List<Tensor<Rank.R0>> calculateLosses();
  external ConfigDict getConfig();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
  external bool get stateful;
  external set stateful(bool v);
}

@JS()
external List<SymbolicTensor> getSourceInputs(SymbolicTensor tensor,
    [Layer layer, num nodeIndex]);
@JS()
external void loadWeightsFromNamedTensorMap(
    NamedTensorMap weights, List<Layer> layers);
@JS()
external void loadWeightsFromJson(JsonDict weightsJSON, List<Layer> layers,
    [bool skipMismatch]);
