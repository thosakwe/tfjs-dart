@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.momentum_optimizer;

import "package:js/js.dart";
import "sgd_optimizer.dart" show SGDOptimizer;
import "types.dart" show NamedVariableMap;

@JS()
class MomentumOptimizer extends SGDOptimizer {
  // @Ignore
  MomentumOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external get momentum;
  external set momentum(v);
  external get useNesterov;
  external set useNesterov(v);
  external get m;
  external set m(v);
  external get accumulations;
  external set accumulations(v);
  external factory MomentumOptimizer(num learningRate, num momentum,
      [bool useNesterov]);
  external void applyGradients(NamedVariableMap variableGradients);
  external void dispose();
  external void setMomentum(num momentum);
}
