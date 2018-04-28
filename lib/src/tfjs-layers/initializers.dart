@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.initializers;

import "package:js/js.dart";
import "types.dart" show Serializable, ConfigDict;
import "tensor.dart" show Tensor;

/*export declare type FanMode = 'fanIn' | 'fanOut' | 'fanAvg';*/
@JS()
external List<String> get VALID_FAN_MODE_VALUES;
@JS()
external void checkFanMode(
    [String
        value]); /*export declare type Distribution = 'normal' | 'uniform';*/
@JS()
external List<String> get VALID_DISTRIBUTION_VALUES;
@JS()
external void checkDistribution([String value]);

@JS()
abstract class Initializer extends Serializable {
  // @Ignore
  Initializer.fakeConstructor$() : super.fakeConstructor$();
  external static dynamic/*=T*/ fromConfig/*<T>*/(
      dynamic cls, ConfigDict config);
  external bool fromConfigUsesCustomObjects();
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external ConfigDict getConfig();
}

@JS()
class Zeros extends Initializer {
  // @Ignore
  Zeros.fakeConstructor$() : super.fakeConstructor$();
  external String getClassName();
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
}

@JS()
class Ones extends Initializer {
  // @Ignore
  Ones.fakeConstructor$() : super.fakeConstructor$();
  external String getClassName();
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
}

@anonymous
@JS()
abstract class ConstantConfig {
  external num get value;
  external set value(num v);
  external factory ConstantConfig({num value});
}

@JS()
class Constant extends Initializer {
  // @Ignore
  Constant.fakeConstructor$() : super.fakeConstructor$();
  external get value;
  external set value(v);
  external factory Constant(ConstantConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class RandomUniformConfig {
  external num get minval;
  external set minval(num v);
  external num get maxval;
  external set maxval(num v);
  external num get seed;
  external set seed(num v);
  external factory RandomUniformConfig({num minval, num maxval, num seed});
}

@JS()
class RandomUniform extends Initializer {
  // @Ignore
  RandomUniform.fakeConstructor$() : super.fakeConstructor$();
  external num get DEFAULT_MINVAL;
  external set DEFAULT_MINVAL(num v);
  external num get DEFAULT_MAXVAL;
  external set DEFAULT_MAXVAL(num v);
  external get minval;
  external set minval(v);
  external get maxval;
  external set maxval(v);
  external get seed;
  external set seed(v);
  external factory RandomUniform(RandomUniformConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class RandomNormalConfig {
  external num get mean;
  external set mean(num v);
  external num get stddev;
  external set stddev(num v);
  external num get seed;
  external set seed(num v);
  external factory RandomNormalConfig({num mean, num stddev, num seed});
}

@JS()
class RandomNormal extends Initializer {
  // @Ignore
  RandomNormal.fakeConstructor$() : super.fakeConstructor$();
  external num get DEFAULT_MEAN;
  external set DEFAULT_MEAN(num v);
  external num get DEFAULT_STDDEV;
  external set DEFAULT_STDDEV(num v);
  external get mean;
  external set mean(v);
  external get stddev;
  external set stddev(v);
  external get seed;
  external set seed(v);
  external factory RandomNormal(RandomNormalConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class TruncatedNormalConfig {
  external num get mean;
  external set mean(num v);
  external num get stddev;
  external set stddev(num v);
  external num get seed;
  external set seed(num v);
  external factory TruncatedNormalConfig({num mean, num stddev, num seed});
}

@JS()
class TruncatedNormal extends Initializer {
  // @Ignore
  TruncatedNormal.fakeConstructor$() : super.fakeConstructor$();
  external num get DEFAULT_MEAN;
  external set DEFAULT_MEAN(num v);
  external num get DEFAULT_STDDEV;
  external set DEFAULT_STDDEV(num v);
  external get mean;
  external set mean(v);
  external get stddev;
  external set stddev(v);
  external get seed;
  external set seed(v);
  external factory TruncatedNormal(TruncatedNormalConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class IdentityConfig {
  external num get gain;
  external set gain(num v);
  external factory IdentityConfig({num gain});
}

@JS()
class Identity extends Initializer {
  // @Ignore
  Identity.fakeConstructor$() : super.fakeConstructor$();
  external get gain;
  external set gain(v);
  external factory Identity(IdentityConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class VarianceScalingConfig {
  external num get scale;
  external set scale(num v);
  external String /*'fanIn'|'fanOut'|'fanAvg'*/ get mode;
  external set mode(String /*'fanIn'|'fanOut'|'fanAvg'*/ v);
  external String /*'normal'|'uniform'*/ get distribution;
  external set distribution(String /*'normal'|'uniform'*/ v);
  external num get seed;
  external set seed(num v);
  external factory VarianceScalingConfig(
      {num scale,
      String /*'fanIn'|'fanOut'|'fanAvg'*/ mode,
      String /*'normal'|'uniform'*/ distribution,
      num seed});
}

@JS()
class VarianceScaling extends Initializer {
  // @Ignore
  VarianceScaling.fakeConstructor$() : super.fakeConstructor$();
  external get scale;
  external set scale(v);
  external get mode;
  external set mode(v);
  external get distribution;
  external set distribution(v);
  external get seed;
  external set seed(v);
  external factory VarianceScaling(VarianceScalingConfig config);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class SeedOnlyInitializerConfig {
  external num get seed;
  external set seed(num v);
  external factory SeedOnlyInitializerConfig({num seed});
}

@JS()
class GlorotUniform extends VarianceScaling {
  // @Ignore
  GlorotUniform.fakeConstructor$() : super.fakeConstructor$();
  external factory GlorotUniform([SeedOnlyInitializerConfig config]);
}

@JS()
class GlorotNormal extends VarianceScaling {
  // @Ignore
  GlorotNormal.fakeConstructor$() : super.fakeConstructor$();
  external factory GlorotNormal([SeedOnlyInitializerConfig config]);
}

@JS()
class HeNormal extends VarianceScaling {
  // @Ignore
  HeNormal.fakeConstructor$() : super.fakeConstructor$();
  external factory HeNormal([SeedOnlyInitializerConfig config]);
}

@JS()
class LeCunNormal extends VarianceScaling {
  // @Ignore
  LeCunNormal.fakeConstructor$() : super.fakeConstructor$();
  external factory LeCunNormal([SeedOnlyInitializerConfig config]);
}

@anonymous
@JS()
abstract class OrthogonalConfig implements SeedOnlyInitializerConfig {
  external num get gain;
  external set gain(num v);
  external factory OrthogonalConfig({num gain, num seed});
}

@JS()
class Orthogonal extends Initializer {
  // @Ignore
  Orthogonal.fakeConstructor$() : super.fakeConstructor$();
  external num get DEFAULT_GAIN;
  external set DEFAULT_GAIN(num v);
  external num get gain;
  external set gain(num v);
  external num get seed;
  external set seed(num v);
  external factory Orthogonal([OrthogonalConfig config]);
  external Tensor apply(List<num> shape, [num /*enum DType*/ dtype]);
  external String getClassName();
  external ConfigDict getConfig();
}

/*export declare type InitializerIdentifier = 'constant' | 'glorotNormal' | 'glorotUniform' | 'heNormal' | 'identity' | 'leCunNormal' | 'ones' | 'orthogonal' | 'randomNormal' | 'randomUniform' | 'truncatedNormal' | 'varianceScaling' | 'zeros' | string;*/
@JS()
external dynamic /*{
    [identifier in InitializerIdentifier]: string;
}*/
    get INITIALIZER_IDENTIFIER_REGISTRY_SYMBOL_MAP;
@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ serializeInitializer(
    Initializer initializer);
@JS()
external Initializer getInitializer(
    dynamic /*'constant'|'glorotNormal'|'glorotUniform'|'heNormal'|'identity'|'leCunNormal'|'ones'|'orthogonal'|'randomNormal'|'randomUniform'|'truncatedNormal'|'varianceScaling'|'zeros'|String|Initializer|ConfigDict*/ identifier);
