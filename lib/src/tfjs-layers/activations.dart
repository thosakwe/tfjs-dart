@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.activations;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

typedef Tensor ActivationFn(Tensor tensor,
    [num
        axis]); /*export declare type ActivationIdentifier = 'elu' | 'hardsigmoid' | 'linear' | 'relu' | 'relu6' | 'selu' | 'sigmoid' | 'softmax' | 'softplus' | 'softsign' | 'tanh' | string;*/
@JS()
external ActivationFn getActivation(
    String /*'elu'|'hardsigmoid'|'linear'|'relu'|'relu6'|'selu'|'sigmoid'|'softmax'|'softplus'|'softsign'|'tanh'|String*/ activationType);
@JS()
external Tensor elu(Tensor x, [num alpha]);
@JS()
external Tensor selu(Tensor x);
@JS()
external Tensor relu(Tensor x);
@JS()
external Tensor relu6(Tensor x);
@JS()
external Tensor linear(Tensor x);
@JS()
external Tensor sigmoid(Tensor x);
@JS()
external Tensor hardSigmoid(Tensor x);
@JS()
external Tensor softplus(Tensor x);
@JS()
external Tensor softsign(Tensor x);
@JS()
external Tensor tanh(Tensor x);
@JS()
external Tensor softmax(Tensor x, [num axis]);
@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ serializeActivation(
    ActivationFn activation);
