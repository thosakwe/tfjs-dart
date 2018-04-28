@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.sgd_optimizer;

import "package:js/js.dart";
import "optimizer.dart" show Optimizer;
import "types.dart" show NamedTensorMap;

@JS()
class SGDOptimizer extends Optimizer {
  // @Ignore
  SGDOptimizer.fakeConstructor$() : super.fakeConstructor$();
  external num get learningRate;
  external set learningRate(num v);
  external Tensor<Rank.R0> get c;
  external set c(Tensor<Rank.R0> v);
  external factory SGDOptimizer(num learningRate);
  external void applyGradients(NamedTensorMap variableGradients);
  external void setLearningRate(num learningRate);
  external void dispose();
}
