@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.optimizers.optimizer;

import "package:js/js.dart";
import "tensor.dart" show Variable;
import "types.dart" show NamedTensorMap;

@JS()
abstract class Optimizer {
  // @Ignore
  Optimizer.fakeConstructor$();
  external Tensor<Rank.R0> /*Tensor<Rank.R0>|Null*/ minimize(
      Tensor<Rank.R0> f(),
      [bool returnCost,
      List<Variable> varList]);
  external dynamic
      /*{
        value: Scalar;
        grads: NamedTensorMap;
    }*/
      computeGradients(Tensor<Rank.R0> f(), [List<Variable> varList]);
  external void applyGradients(NamedTensorMap variableGradients);
}
