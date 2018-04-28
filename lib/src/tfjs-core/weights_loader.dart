@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.weights_loader;

import "package:js/js.dart";
import "types.dart" show NamedTensorMap;

/*export declare type WeightsManifestConfig = WeightsManifestGroupConfig[];*/
@anonymous
@JS()
abstract class WeightsManifestGroupConfig {
  external List<String> get paths;
  external set paths(List<String> v);
  external List<WeightsManifestEntry> get weights;
  external set weights(List<WeightsManifestEntry> v);
  external factory WeightsManifestGroupConfig(
      {List<String> paths, List<WeightsManifestEntry> weights});
}

@anonymous
@JS()
abstract class WeightsManifestEntry {
  external String get name;
  external set name(String v);
  external List<num> get shape;
  external set shape(List<num> v);
  external String /*'float32'|'int32'*/ get dtype;
  external set dtype(String /*'float32'|'int32'*/ v);
  external factory WeightsManifestEntry(
      {String name, List<num> shape, String /*'float32'|'int32'*/ dtype});
}

@JS()
external Promise<NamedTensorMap> loadWeights(
    List<WeightsManifestGroupConfig> manifest,
    [String filePathPrefix,
    List<String> weightNames,
    RequestInit requestOptions]);
