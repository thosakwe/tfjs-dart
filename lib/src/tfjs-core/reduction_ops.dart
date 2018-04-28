@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.reduction_ops;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
class ReductionOps {
  // @Ignore
  ReductionOps.fakeConstructor$();
  external static dynamic/*=T*/ logSumExp/*<T extends Tensor>*/(Tensor x,
      [dynamic /*num|List<num>*/ axis, bool keepDims]);
  external static dynamic/*=T*/ sum/*<T extends Tensor>*/(Tensor x,
      [dynamic /*num|List<num>*/ axis, bool keepDims]);
  external static dynamic/*=T*/ mean/*<T extends Tensor>*/(Tensor x,
      [dynamic /*num|List<num>*/ axis, bool keepDims]);
  external static dynamic/*=T*/ min/*<T extends Tensor>*/(Tensor x,
      [dynamic /*num|List<num>*/ axis, bool keepDims]);
  external static dynamic/*=T*/ max/*<T extends Tensor>*/(Tensor x,
      [dynamic /*num|List<num>*/ axis, bool keepDims]);
  external static dynamic/*=T*/ argMin/*<T extends Tensor>*/(Tensor x,
      [num axis]);
  external static dynamic/*=T*/ argMax/*<T extends Tensor>*/(Tensor x,
      [num axis]);
  external static dynamic
      /*{
        mean: Tensor;
        variance: Tensor;
    }*/
      moments(Tensor x, [dynamic /*num|List<num>*/ axis, bool keepDims]);
}
