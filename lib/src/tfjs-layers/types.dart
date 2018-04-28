@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.types;

import "package:js/js.dart";
import "topology.dart" show Layer;
import "tensor.dart" show Tensor, Variable;
import "constraints.dart" show Constraint;

@JS()
class DType {
  external static num get float32;
  external static num get int32;
  external static num get bool;
} /*export declare type Shape = number[];*/

@anonymous
@JS()
abstract class TensorInterface {
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external factory TensorInterface({num /*enum DType*/ dtype, List<num> shape});
}

@JS()
class SymbolicTensor implements TensorInterface {
  // @Ignore
  SymbolicTensor.fakeConstructor$();
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external Layer get sourceLayer;
  external set sourceLayer(Layer v);
  external List<SymbolicTensor> get inputs;
  external set inputs(List<SymbolicTensor> v);
  external dynamic get callArgs;
  external set callArgs(dynamic v);
  external num get outputTensorIndex;
  external set outputTensorIndex(num v);
  external num get id;
  external set id(num v);
  external String get name;
  external set name(String v);
  external String get originalName;
  external set originalName(String v);
  external num get nodeIndex;
  external set nodeIndex(num v);
  external num get tensorIndex;
  external set tensorIndex(num v);
  external factory SymbolicTensor(num /*enum DType*/ dtype, List<num> shape,
      Layer sourceLayer, List<SymbolicTensor> inputs, dynamic callArgs,
      [String name, num outputTensorIndex]);
}

@JS()
class ConcreteTensor implements TensorInterface {
  // @Ignore
  ConcreteTensor.fakeConstructor$();
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external num get id;
  external set id(num v);
  external String get name;
  external set name(String v);
  external String get originalName;
  external set originalName(String v);
  external Tensor get val;
  external set val(Tensor v);
  external factory ConcreteTensor(Tensor val, [String name]);
  external Tensor value();
}

@JS()
class LayerVariable {
  // @Ignore
  LayerVariable.fakeConstructor$();
  external num /*enum DType*/ get dtype;
  external set dtype(num /*enum DType*/ v);
  external List<num> get shape;
  external set shape(List<num> v);
  external num get id;
  external set id(num v);
  external String get name;
  external set name(String v);
  external String get originalName;
  external set originalName(String v);
  external bool get trainable;
  external set trainable(bool v);
  external Variable get val;
  external set val(Variable v);
  external Constraint get constraint;
  external set constraint(Constraint v);
  external factory LayerVariable(dynamic /*Tensor|ConcreteTensor*/ val,
      [num /*enum DType*/ dtype,
      String name,
      bool trainable,
      Constraint constraint]);
  external Tensor read();
  external LayerVariable write(dynamic /*Tensor|ConcreteTensor*/ newVal);
}

typedef Tensor LossOrMetricFn(Tensor yTrue, Tensor yPred);
typedef Tensor<Rank.R0> RegularizerFn();
typedef List<dynamic /*Tensor|List<Tensor>*/ > /*Tuple of <Tensor,List<Tensor>>*/ RnnStepFunction(
    Tensor inputs,
    List<Tensor>
        states); /*export declare type JsonValue = boolean | number | string | null | JsonArray | JsonDict;*/

@anonymous
@JS()
abstract class JsonDict {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class JsonArray
    implements List<dynamic /*bool|num|String|Null|JsonArray|JsonDict*/ > {}

/*export declare type ConfigDictValue = boolean | number | string | null | ConfigDictArray | ConfigDict;*/
@anonymous
@JS()
abstract class ConfigDict {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class ConfigDictArray
    implements
        List<dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ > {}

@anonymous
@JS()
abstract class NamedTensorMap {
  /* Index signature is not yet supported by JavaScript interop. */
}

@JS()
abstract class Serializable {
  // @Ignore
  Serializable.fakeConstructor$();
  external String getClassName();
  external ConfigDict getConfig();
}
