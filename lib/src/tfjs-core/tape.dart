@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.tape;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "types.dart" show NamedTensorMap;
import "package:func/func.dart";

@anonymous
@JS()
abstract class TapeNode {
  external num get id;
  external set id(num v);
  external String get name;
  external set name(String v);
  external Tensor get output;
  external set output(Tensor v);
  external NamedTensorMap get inputs;
  external set inputs(NamedTensorMap v);
  external Func1<Tensor /*Tensor|NamedTensorMap*/, NamedGradientMap>
      get gradient;
  external set gradient(
      Func1<Tensor /*Tensor|NamedTensorMap*/, NamedGradientMap> v);
  external factory TapeNode(
      {num id,
      String name,
      Tensor output,
      NamedTensorMap inputs,
      Func1<Tensor /*Tensor|NamedTensorMap*/, NamedGradientMap> gradient});
}

@anonymous
@JS()
abstract class NamedGradientMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

@JS()
external List<TapeNode> getFilteredNodesXToY(
    List<TapeNode> tape, List<Tensor> xs, Tensor y);
@JS()
external void backpropagateGradients(
    dynamic /*JSMap of <num,Tensor>*/ tensorAccumulatedGradientMap,
    List<TapeNode> filteredTape);
