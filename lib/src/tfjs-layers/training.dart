@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.engine.training;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "callbacks.dart" show Callback, CustomCallbackConfig, History;
import "optimizer.dart" show Optimizer;
import "types.dart" show LossOrMetricFn;
import "topology.dart" show Container, ContainerConfig;

@JS()
external bool isDataTensor(
    dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>|JSMap of <String,List<Tensor>>*/ x);
@JS()
external bool isDataArray(
    dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ x);
@JS()
external bool isDataDict(
    dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ x);
@JS()
external List<Tensor> standardizeInputData(
    dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ data,
    List<String> names,
    [List<List<num>> shapes,
    bool checkBatchAxis,
    String exceptionPrefix]);
@JS()
external void checkArrayLengths(List<Tensor> inputs, List<Tensor> targets,
    [List<Tensor> weights]);
@JS()
external List<List<num> /*Tuple of <num,num>*/ > makeBatches(
    num size, num batchSize);
@JS()
external dynamic /*Tensor|List<Tensor>*/ sliceArraysByIndices(
    dynamic /*Tensor|List<Tensor>*/ arrays, Tensor<Rank.R1> indices);

@JS()
class ModelLoggingVerbosity {
  external static num get SILENT;
  external static num get VERBOSE;
}

@anonymous
@JS()
abstract class ModelPredictConfig {
  external num get batchSize;
  external set batchSize(num v);
  external bool get verbose;
  external set verbose(bool v);
  external factory ModelPredictConfig({num batchSize, bool verbose});
}

@anonymous
@JS()
abstract class ModelEvaluateConfig {
  external num get batchSize;
  external set batchSize(num v);
  external num /*enum ModelLoggingVerbosity*/ get verbose;
  external set verbose(num /*enum ModelLoggingVerbosity*/ v);
  external Tensor get sampleWeight;
  external set sampleWeight(Tensor v);
  external num get steps;
  external set steps(num v);
  external factory ModelEvaluateConfig(
      {num batchSize,
      num /*enum ModelLoggingVerbosity*/ verbose,
      Tensor sampleWeight,
      num steps});
}

@anonymous
@JS()
abstract class ModelFitConfig {
  external num get batchSize;
  external set batchSize(num v);
  external num get epochs;
  external set epochs(num v);
  external num /*enum ModelLoggingVerbosity*/ get verbose;
  external set verbose(num /*enum ModelLoggingVerbosity*/ v);
  external dynamic /*List<Callback>|CustomCallbackConfig|List<CustomCallbackConfig>*/ get callbacks;
  external set callbacks(
      dynamic /*List<Callback>|CustomCallbackConfig|List<CustomCallbackConfig>*/ v);
  external num get validationSplit;
  external set validationSplit(num v);
  external List<
      dynamic> /*Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>>|Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>,Tensor|List<Tensor>>*/ get validationData;
  external set validationData(
      List<
          dynamic> /*Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>>|Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>,Tensor|List<Tensor>>*/ v);
  external bool get shuffle;
  external set shuffle(bool v);
  external dynamic /*JSMap of <String,num>*/ get classWeight;
  external set classWeight(dynamic /*JSMap of <String,num>*/ v);
  external Tensor get sampleWeight;
  external set sampleWeight(Tensor v);
  external num get initialEpoch;
  external set initialEpoch(num v);
  external num get stepsPerEpoch;
  external set stepsPerEpoch(num v);
  external num get validationSteps;
  external set validationSteps(num v);
  external factory ModelFitConfig(
      {num batchSize,
      num epochs,
      num /*enum ModelLoggingVerbosity*/ verbose,
      dynamic /*List<Callback>|CustomCallbackConfig|List<CustomCallbackConfig>*/ callbacks,
      num validationSplit,
      List<
          dynamic> /*Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>>|Tuple of <Tensor|List<Tensor>,Tensor|List<Tensor>,Tensor|List<Tensor>>*/ validationData,
      bool shuffle,
      dynamic /*JSMap of <String,num>*/ classWeight,
      Tensor sampleWeight,
      num initialEpoch,
      num stepsPerEpoch,
      num validationSteps});
}

@anonymous
@JS()
abstract class ModelCompileConfig {
  external dynamic /*String|Optimizer*/ get optimizer;
  external set optimizer(dynamic /*String|Optimizer*/ v);
  external dynamic /*String|List<String>|JSMap of <String,String>|LossOrMetricFn|List<LossOrMetricFn>|JSMap of <String,LossOrMetricFn>*/ get loss;
  external set loss(
      dynamic /*String|List<String>|JSMap of <String,String>|LossOrMetricFn|List<LossOrMetricFn>|JSMap of <String,LossOrMetricFn>*/ v);
  external dynamic /*List<String>|JSMap of <String,String>*/ get metrics;
  external set metrics(dynamic /*List<String>|JSMap of <String,String>*/ v);
  external factory ModelCompileConfig(
      {dynamic /*String|Optimizer*/ optimizer,
      dynamic /*String|List<String>|JSMap of <String,String>|LossOrMetricFn|List<LossOrMetricFn>|JSMap of <String,LossOrMetricFn>*/ loss,
      dynamic /*List<String>|JSMap of <String,String>*/ metrics});
}

@JS()
class Model extends Container {
  // @Ignore
  Model.fakeConstructor$() : super.fakeConstructor$();
  external Optimizer get optimizer;
  external set optimizer(Optimizer v);
  external dynamic /*String|List<String>|JSMap of <String,String>|LossOrMetricFn|List<LossOrMetricFn>|JSMap of <String,LossOrMetricFn>*/ get loss;
  external set loss(
      dynamic /*String|List<String>|JSMap of <String,String>|LossOrMetricFn|List<LossOrMetricFn>|JSMap of <String,LossOrMetricFn>*/ v);
  external List<LossOrMetricFn> get lossFunctions;
  external set lossFunctions(List<LossOrMetricFn> v);
  external get feedOutputShapes;
  external set feedOutputShapes(v);
  external get feedLossFns;
  external set feedLossFns(v);
  external get collectedTrainableWeights;
  external set collectedTrainableWeights(v);
  external get testFunction;
  external set testFunction(v);
  external History get history;
  external set history(History v);
  external dynamic /*List<String>|JSMap of <String,String>*/ get metrics;
  external set metrics(dynamic /*List<String>|JSMap of <String,String>*/ v);
  external List<String> get metricsNames;
  external set metricsNames(List<String> v);
  external List<List<num> /*Tuple of <LossOrMetricFn,num>*/ >
      get metricsTensors;
  external set metricsTensors(
      List<List<num> /*Tuple of <LossOrMetricFn,num>*/ > v);
  external factory Model(ContainerConfig config);
  external String getClassName();
  external void compile(ModelCompileConfig config);
  external checkTrainableWeightsConsistency();
  external dynamic /*Tensor<Rank.R0>|List<Tensor<Rank.R0>>*/ evaluate(
      dynamic /*Tensor|List<Tensor>*/ x, dynamic /*Tensor|List<Tensor>*/ y,
      [ModelEvaluateConfig config]);
  external checkNumSamples(ins, [batchSize, steps, stepsName]);
  external predictLoop(ins, [batchSize, verbose]);
  external dynamic /*Tensor|List<Tensor>*/ predict(
      dynamic /*Tensor|List<Tensor>*/ x,
      [ModelPredictConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ predictOnBatch(Tensor x);
  external List<
      List<
          Tensor>> /*Tuple of <List<Tensor>,List<Tensor>,List<Tensor>>*/ standardizeUserData(
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ x,
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ y,
      [bool checkBatchAxis,
      num batchSize]);
  external fitLoop(f, ins,
      [outLabels,
      batchSize,
      epochs,
      verbose,
      callbacks,
      valF,
      valIns,
      shuffle,
      callbackMetrics,
      initialEpoch,
      stepsPerEpoch,
      validationSteps]);
  external testLoop(f, ins, [batchSize, verbose, steps]);
  external getDedupedMetricsNames();
  external makeTestFunction();
  external Promise<History> fit(
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ x,
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ y,
      [ModelFitConfig config]);
}
