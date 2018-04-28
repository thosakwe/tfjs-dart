@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.constraints;

import "package:js/js.dart";
import "types.dart" show Serializable, ConfigDict;
import "tensor.dart" show Tensor;

@JS()
abstract class Constraint extends Serializable {
  // @Ignore
  Constraint.fakeConstructor$() : super.fakeConstructor$();
  external Tensor apply(Tensor w);
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class MaxNormConfig {
  external num get maxValue;
  external set maxValue(num v);
  external num get axis;
  external set axis(num v);
  external factory MaxNormConfig({num maxValue, num axis});
}

@JS()
class MaxNorm extends Constraint {
  // @Ignore
  MaxNorm.fakeConstructor$() : super.fakeConstructor$();
  external get maxValue;
  external set maxValue(v);
  external get axis;
  external set axis(v);
  external get defaultMaxValue;
  external set defaultMaxValue(v);
  external get defaultAxis;
  external set defaultAxis(v);
  external factory MaxNorm(MaxNormConfig config);
  external Tensor apply(Tensor w);
  external String getClassName();
  external ConfigDict getConfig();
}

@anonymous
@JS()
abstract class UnitNormConfig {
  external num get axis;
  external set axis(num v);
  external factory UnitNormConfig({num axis});
}

@JS()
class UnitNorm extends Constraint {
  // @Ignore
  UnitNorm.fakeConstructor$() : super.fakeConstructor$();
  external get axis;
  external set axis(v);
  external get defaultAxis;
  external set defaultAxis(v);
  external factory UnitNorm(UnitNormConfig config);
  external Tensor apply(Tensor w);
  external String getClassName();
  external ConfigDict getConfig();
}

@JS()
class NonNeg extends Constraint {
  // @Ignore
  NonNeg.fakeConstructor$() : super.fakeConstructor$();
  external Tensor apply(Tensor w);
  external String getClassName();
}

@anonymous
@JS()
abstract class MinMaxNormConfig {
  external num get minValue;
  external set minValue(num v);
  external num get maxValue;
  external set maxValue(num v);
  external num get axis;
  external set axis(num v);
  external num get rate;
  external set rate(num v);
  external factory MinMaxNormConfig(
      {num minValue, num maxValue, num axis, num rate});
}

@JS()
class MinMaxNorm extends Constraint {
  // @Ignore
  MinMaxNorm.fakeConstructor$() : super.fakeConstructor$();
  external get minValue;
  external set minValue(v);
  external get maxValue;
  external set maxValue(v);
  external get rate;
  external set rate(v);
  external get axis;
  external set axis(v);
  external get defaultMinValue;
  external set defaultMinValue(v);
  external get defaultMaxValue;
  external set defaultMaxValue(v);
  external get defaultRate;
  external set defaultRate(v);
  external get defaultAxis;
  external set defaultAxis(v);
  external factory MinMaxNorm(MinMaxNormConfig config);
  external Tensor apply(Tensor w);
  external String getClassName();
  external ConfigDict getConfig();
}

/*export declare type ConstraintIdentifier = 'maxNorm' | 'minMaxNorm' | 'nonNeg' | 'unitNorm' | string;*/
@JS()
external dynamic /*{
    [identifier in ConstraintIdentifier]: string;
}*/
    get CONSTRAINT_IDENTIFIER_REGISTRY_SYMBOL_MAP;
@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ serializeConstraint(
    Constraint constraint);
@JS()
external Constraint deserializeConstraint(ConfigDict config,
    [ConfigDict customObjects]);
@JS()
external Constraint getConstraint(
    dynamic /*'maxNorm'|'minMaxNorm'|'nonNeg'|'unitNorm'|String|ConfigDict|Constraint*/ identifier);
