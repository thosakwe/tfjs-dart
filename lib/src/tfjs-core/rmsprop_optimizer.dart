@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.rmsprop_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedVariableMap;

@JS()
class RMSPropOptimizer extends Optimizer {
  // @Ignore
  RMSPropOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external get c;
  external set c(v);
  external get epsilon;
  external set epsilon(v);
  external get decay;
  external set decay(v);
  external get momentum;
  external set momentum(v);
  external get oneMinusDecay;
  external set oneMinusDecay(v);
  external get centered;
  external set centered(v);
  external get accumulatedMeanSquares;
  external set accumulatedMeanSquares(v);
  external get accumulatedMeanGrads;
  external set accumulatedMeanGrads(v);
  external get accumulatedMoments;
  external set accumulatedMoments(v);
  external factory RMSPropOptimizer(num learningRate,
      [num decay, num momentum, num epsilon, bool centered]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
}
