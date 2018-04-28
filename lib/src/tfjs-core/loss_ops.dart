@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.loss_ops;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class Reduction {
  external static num get NONE;
  external static num get MEAN;
  external static num get SUM;
  external static num get SUM_BY_NONZERO_WEIGHTS;
}

@JS()
class LossOps {
  // @Ignore
  LossOps.fakeConstructor$();
  external static dynamic/*=O*/ computeWeightedLoss/*<T extends Tensor, O extends Tensor>*/(
      dynamic/*=T*/ losses,
      [Tensor weights,
      num /*enum Reduction*/ reduction]);
  external static dynamic/*=O*/ absoluteDifference/*<T extends Tensor, O extends Tensor>*/(
      dynamic/*=T*/ labels, dynamic/*=T*/ predictions,
      [Tensor weights, num /*enum Reduction*/ reduction]);
}
