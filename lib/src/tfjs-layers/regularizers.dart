@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.regularizers;

import "package:js/js.dart";
import "types.dart" show Serializable, ConfigDict;
import "tensor.dart" show Tensor;

@JS()
abstract class Regularizer extends Serializable {
  // @Ignore
  Regularizer.fakeConstructor$() : super.fakeConstructor$();
  external Tensor<Rank.R0> apply(Tensor x);
}

@anonymous
@JS()
abstract class L1L2Config {
  external num get l1;
  external set l1(num v);
  external num get l2;
  external set l2(num v);
  external factory L1L2Config({num l1, num l2});
}

@anonymous
@JS()
abstract class L1Config {
  external num get l1;
  external set l1(num v);
  external factory L1Config({num l1});
}

@anonymous
@JS()
abstract class L2Config {
  external num get l2;
  external set l2(num v);
  external factory L2Config({num l2});
}

@JS()
class L1L2 extends Regularizer {
  // @Ignore
  L1L2.fakeConstructor$() : super.fakeConstructor$();
  external get l1;
  external set l1(v);
  external get l2;
  external set l2(v);
  external get hasL1;
  external set hasL1(v);
  external get hasL2;
  external set hasL2(v);
  external factory L1L2([L1L2Config config]);
  external Tensor<Rank.R0> apply(Tensor x);
  external String getClassName();
  external ConfigDict getConfig();
  external static L1L2 fromConfig(dynamic cls, ConfigDict config);
}

@JS()
external L1L2 l1([L1Config config]);
@JS()
external L1L2 l2(
    L2Config
        config); /*export declare type RegularizerIdentifier = 'l1l2' | string;*/
@JS()
external dynamic /*{
    [identifier in RegularizerIdentifier]: string;
}*/
    get REGULARIZER_IDENTIFIER_REGISTRY_SYMBOL_MAP;
@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ serializeRegularizer(
    Regularizer constraint);
@JS()
external Regularizer deserializeRegularizer(ConfigDict config,
    [ConfigDict customObjects]);
@JS()
external Regularizer getRegularizer(
    dynamic /*'l1l2'|String|ConfigDict|Regularizer*/ identifier);
