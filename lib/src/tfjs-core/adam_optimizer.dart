@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.adam_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedVariableMap;

@JS()
class AdamOptimizer extends Optimizer {
  // @Ignore
  AdamOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external get c;
  external set c(v);
  external get eps;
  external set eps(v);
  external get beta1;
  external set beta1(v);
  external get beta2;
  external set beta2(v);
  external get accBeta1;
  external set accBeta1(v);
  external get accBeta2;
  external set accBeta2(v);
  external get oneMinusBeta1;
  external set oneMinusBeta1(v);
  external get oneMinusBeta2;
  external set oneMinusBeta2(v);
  external get one;
  external set one(v);
  external get accumulatedFirstMoment;
  external set accumulatedFirstMoment(v);
  external get accumulatedSecondMoment;
  external set accumulatedSecondMoment(v);
  external factory AdamOptimizer(num learningRate, num beta1, num beta2,
      [num epsilon]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
}
