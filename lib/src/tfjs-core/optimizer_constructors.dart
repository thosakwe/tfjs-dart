@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.optimizer_constructors;

import "package:js/js.dart";
import "sgd_optimizer.dart" show SGDOptimizer;
import "momentum_optimizer.dart" show MomentumOptimizer;
import "rmsprop_optimizer.dart" show RMSPropOptimizer;
import "adam_optimizer.dart" show AdamOptimizer;
import "adadelta_optimizer.dart" show AdadeltaOptimizer;
import "adamax_optimizer.dart" show AdamaxOptimizer;
import "adagrad_optimizer.dart" show AdagradOptimizer;

@JS()
class OptimizerConstructors {
  // @Ignore
  OptimizerConstructors.fakeConstructor$();
  external static SGDOptimizer sgd(num learningRate);
  external static MomentumOptimizer momentum(num learningRate, num momentum,
      [bool useNesterov]);
  external static RMSPropOptimizer rmsprop(num learningRate,
      [num decay, num momentum, num epsilon, bool centered]);
  external static AdamOptimizer adam(
      [num learningRate, num beta1, num beta2, num epsilon]);
  external static AdadeltaOptimizer adadelta(
      [num learningRate, num rho, num epsilon]);
  external static AdamaxOptimizer adamax(
      [num learningRate, num beta1, num beta2, num epsilon, num decay]);
  external static AdagradOptimizer adagrad(num learningRate,
      [num initialAccumulatorValue]);
}
