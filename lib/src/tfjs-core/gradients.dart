@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.gradients;

import "package:js/js.dart";
import "tensor.dart" show Tensor, Variable;
import "engine.dart" show ScopeFn, CustomGradientFunc;
import "package:func/func.dart";

@JS()
class Gradients {
  // @Ignore
  Gradients.fakeConstructor$();
  external static dynamic/*=T*/ gradScope/*<T extends Null|Tensor|String|num|bool|TensorContainerObject|TensorContainerArray>*/(
      String /*String|ScopeFn<T>*/ nameOrScopeFn,
      [ScopeFn<dynamic/*=T*/ > scopeFn]);
  external static Func2Opt1<dynamic/*=I*/, dynamic/*=O*/, dynamic/*=I*/ >
      grad/*<I extends Tensor, O extends Tensor>*/(
          dynamic/*=O*/ f(dynamic/*=I*/ x));
  external static Func2Opt1<List<Tensor>, dynamic/*=O*/, List<Tensor>>
      grads/*<O extends Tensor>*/(Function /*(...args: Tensor[]) => O*/ f);
  external static Func2Opt1<
          dynamic/*=I*/,
          dynamic/*=O*/,
          dynamic /*{
        value: O;
        grad: I;
    }*/
          >
      valueAndGrad/*<I extends Tensor, O extends Tensor>*/(
          dynamic/*=O*/ f(dynamic/*=I*/ x));
  external static Func2Opt1<
          List<Tensor>,
          dynamic/*=O*/,
          dynamic /*{
        grads: Tensor[];
        value: O;
    }*/
          >
      valueAndGrads/*<O extends Tensor>*/(
          Function /*(...args: Tensor[]) => O*/ f);
  external static dynamic
      /*{
        value: Scalar;
        grads: NamedTensorMap;
    }*/
      variableGrads(Tensor<Rank.R0> f(), [List<Variable> varList]);
  external static Function /*(...args: Tensor[]) => T*/ customGrad/*<T extends Tensor>*/(
      CustomGradientFunc<dynamic/*=T*/ > f);
}
