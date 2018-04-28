@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.adadelta_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedVariableMap;

@JS()
class AdadeltaOptimizer extends Optimizer {
  // @Ignore
  AdadeltaOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external get c;
  external set c(v);
  external get epsilon;
  external set epsilon(v);
  external get rho;
  external set rho(v);
  external get oneMinusRho;
  external set oneMinusRho(v);
  external get accumulatedGrads;
  external set accumulatedGrads(v);
  external get accumulatedUpdates;
  external set accumulatedUpdates(v);
  external factory AdadeltaOptimizer(num learningRate, num rho, [num epsilon]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
}
