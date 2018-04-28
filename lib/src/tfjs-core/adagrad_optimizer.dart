@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.adagrad_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedVariableMap;

@JS()
class AdagradOptimizer extends Optimizer {
  // @Ignore
  AdagradOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external get initialAccumulatorValue;
  external set initialAccumulatorValue(v);
  external get c;
  external set c(v);
  external get epsilon;
  external set epsilon(v);
  external get accumulatedGrads;
  external set accumulatedGrads(v);
  external factory AdagradOptimizer(num learningRate,
      [num initialAccumulatorValue]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
}
