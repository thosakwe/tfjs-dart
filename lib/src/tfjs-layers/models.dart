@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.models;

import "package:js/js.dart";
import "training.dart"
    show
        Model,
        ModelEvaluateConfig,
        ModelPredictConfig,
        ModelCompileConfig,
        ModelFitConfig;
import "types.dart" show ConfigDict, JsonDict;
import "topology.dart" show Layer;
import "tensor.dart" show Tensor;
import "callbacks.dart" show History;

@JS()
external Promise<Model> modelFromJSON(
    ModelAndWeightsConfig modelAndWeightsConfig,
    [ConfigDict customObjects]);

@anonymous
@JS()
abstract class ModelAndWeightsConfig {
  external JsonDict get modelTopology;
  external set modelTopology(JsonDict v);
  external List<WeightsManifestGroupConfig> get weightsManifest;
  external set weightsManifest(List<WeightsManifestGroupConfig> v);
  external String get pathPrefix;
  external set pathPrefix(String v);
  external factory ModelAndWeightsConfig(
      {JsonDict modelTopology,
      List<WeightsManifestGroupConfig> weightsManifest,
      String pathPrefix});
}

@JS()
external Promise<Model> loadModelInternal(String modelConfigPath);

@anonymous
@JS()
abstract class SequentialConfig {
  external List<Layer> get layers;
  external set layers(List<Layer> v);
  external String get name;
  external set name(String v);
  external factory SequentialConfig({List<Layer> layers, String name});
}

@JS()
class Sequential extends Model {
  // @Ignore
  Sequential.fakeConstructor$() : super.fakeConstructor$();
  external get model;
  external set model(v);
  external get JS$_updatable;
  external set JS$_updatable(v);
  external factory Sequential([SequentialConfig config]);
  external String getClassName();
  external void add(Layer layer);
  external void pop();
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external void build([List<num> inputShape]);
  external void setWeights(List<Tensor> weights);
  external bool get updatable;
  external set updatable(bool v);
  external dynamic /*Tensor<Rank.R0>|List<Tensor<Rank.R0>>*/ evaluate(
      dynamic /*Tensor|List<Tensor>*/ x, dynamic /*Tensor|List<Tensor>*/ y,
      [ModelEvaluateConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ predict(
      dynamic /*Tensor|List<Tensor>*/ x,
      [ModelPredictConfig config]);
  external dynamic /*Tensor|List<Tensor>*/ predictOnBatch(Tensor x);
  external void compile(ModelCompileConfig config);
  external Promise<History> fit(
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ x,
      dynamic /*Tensor|List<Tensor>|JSMap of <String,Tensor>*/ y,
      [ModelFitConfig config]);
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
  external dynamic getConfig();
}
