@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.adamax_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedVariableMap;

@JS()
class AdamaxOptimizer extends Optimizer {
  // @Ignore
  AdamaxOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external get c;
  external set c(v);
  external get eps;
  external set eps(v);
  external get accBeta1;
  external set accBeta1(v);
  external get beta1;
  external set beta1(v);
  external get beta2;
  external set beta2(v);
  external get decay;
  external set decay(v);
  external get oneMinusBeta1;
  external set oneMinusBeta1(v);
  external get one;
  external set one(v);
  external get iteration;
  external set iteration(v);
  external get accumulatedFirstMoment;
  external set accumulatedFirstMoment(v);
  external get accumulatedWeightedInfNorm;
  external set accumulatedWeightedInfNorm(v);
  external factory AdamaxOptimizer(num learningRate, num beta1, num beta2,
      [num epsilon, num decay]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
}
