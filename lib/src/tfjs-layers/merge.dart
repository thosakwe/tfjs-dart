@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.merge;

import "package:js/js.dart";
import "topology.dart" show Layer, LayerConfig;
import "tensor.dart" show Tensor;
import "types.dart" show SymbolicTensor;

@JS()
class Merge extends Layer {
  // @Ignore
  Merge.fakeConstructor$() : super.fakeConstructor$();
  external bool get reshapeRequired;
  external set reshapeRequired(bool v);
  external factory Merge([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
  external computeElementwiseOpOutputShape(shape1, shape2);
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
}

@JS()
class Add extends Merge {
  // @Ignore
  Add.fakeConstructor$() : super.fakeConstructor$();
  external factory Add([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ add(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|LayerConfig*/ config]);

@JS()
class Multiply extends Merge {
  // @Ignore
  Multiply.fakeConstructor$() : super.fakeConstructor$();
  external factory Multiply([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ multiply(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|LayerConfig*/ config]);

@JS()
class Average extends Merge {
  // @Ignore
  Average.fakeConstructor$() : super.fakeConstructor$();
  external factory Average([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ average(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|LayerConfig*/ config]);

@JS()
class Maximum extends Merge {
  // @Ignore
  Maximum.fakeConstructor$() : super.fakeConstructor$();
  external factory Maximum([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ maximum(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|LayerConfig*/ config]);

@JS()
class Minimum extends Merge {
  // @Ignore
  Minimum.fakeConstructor$() : super.fakeConstructor$();
  external factory Minimum([LayerConfig config]);
  external String getClassName();
  external Tensor mergeFunction(List<Tensor> inputs);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ minimum(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|LayerConfig*/ config]);

@anonymous
@JS()
abstract class ConcatenateLayerConfig implements LayerConfig {
  external num get axis;
  external set axis(num v);
  external factory ConcatenateLayerConfig(
      {num axis,
      List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

@JS()
class Concatenate extends Merge {
  // @Ignore
  Concatenate.fakeConstructor$() : super.fakeConstructor$();
  external num get DEFAULT_AXIS;
  external set DEFAULT_AXIS(num v);
  external get axis;
  external set axis(v);
  external factory Concatenate([ConcatenateLayerConfig config]);
  external String getClassName();
  external void build(List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external Tensor mergeFunction(List<Tensor> inputs);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
}

@JS()
external dynamic /*Layer|SymbolicTensor|Tensor*/ concatenate(
    [dynamic /*List<SymbolicTensor>|List<Tensor>|ConcatenateLayerConfig*/ config]);
