@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.backend.tfjs_backend;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "types.dart"
    show
        TensorInterface,
        SymbolicTensor,
        LayerVariable,
        ConcreteTensor,
        RnnStepFunction;
import "constraints.dart" show Constraint;

@JS()
external void disposeScalarCache();
@JS()
external void setBackend(String /*'cpu'|'webgl'*/ requestedBackend);
@JS()
external String /*'cpu'|'webgl'*/ getBackend();
@JS()
external Tensor keep(Tensor x);
@JS()
external Tensor<Rank.R0> getScalar(num value, [num /*enum DType*/ dtype]);
@JS()
external dynamic get epsilon;
@JS()
external bool isBackendSymbolic();
@JS()
external List<num> shape(dynamic /*Tensor|TensorInterface*/ x);
@JS()
external List<num> intShape(dynamic /*Tensor|TensorInterface*/ x);
@JS()
external num ndim(dynamic /*Tensor|TensorInterface*/ x);
@JS()
external num /*enum DType*/ dtype(dynamic /*Tensor|SymbolicTensor*/ x);
@JS()
external dynamic /*num|List<num>*/ normalizeAxis(
    dynamic /*Tensor|TensorInterface*/ x, dynamic /*num|List<num>*/ axis);
@JS()
external num countParams(dynamic /*Tensor|TensorInterface*/ x);
@JS()
external Tensor cast(Tensor x, String /*'float32'|'int32'|'bool'*/ dtype);
@JS()
external Tensor reshape(Tensor x, List<num> shape);
@JS()
external Tensor transpose(Tensor x, [List<num> perm]);
@JS()
external dynamic get permuteDimensions;
@JS()
external Tensor reverse(Tensor x, dynamic /*num|List<num>*/ axes);
@JS()
external Tensor expandDims(Tensor x, [num axis]);
@JS()
external Tensor squeeze(Tensor x, num axis);
@JS()
external Tensor temporalPadding(Tensor x,
    [List<num> /*Tuple of <num,num>*/ padding]);
@JS()
external Tensor spatial2dPadding(Tensor x,
    [List<
        List<
            num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat]);
@JS()
external Tensor repeat(Tensor x, num n);
@JS()
external Tensor flatten(Tensor x);
@JS()
external Tensor batchFlatten(Tensor x);
@JS()
external Tensor sliceAlongFirstAxis(Tensor array, num start, num size);
@JS()
external Tensor sliceAlongLastAxis(Tensor array, num start, num size);
@JS()
external List<Tensor> /*Tuple of <Tensor,Tensor,Tensor>*/ normalizeBatchInTraining(
    Tensor x, Tensor gamma, Tensor beta, List<num> reductionAxes,
    [num epsilon]);
@JS()
external Tensor concatenate(List<Tensor> tensors, [num axis]);
@JS()
external Tensor concatAlongFirstAxis(Tensor a, Tensor b);
@JS()
external Tensor tile(Tensor x, dynamic /*num|List<num>*/ n);
@JS()
external LayerVariable variable(Tensor x,
    [num /*enum DType*/ dtype, String name, Constraint constraint]);
@JS()
external List<Tensor> batchGetValue(List<LayerVariable> xs);
@JS()
external void batchSetValue(
    List<List<dynamic /*LayerVariable|Tensor*/ > /*Tuple of <LayerVariable,Tensor>*/ >
        variablesAndValues);
@JS()
external Tensor zeros(List<num> shape, [num /*enum DType*/ dtype]);
@JS()
external LayerVariable zerosVariable(List<num> shape,
    [num /*enum DType*/ dtype, String name]);
@JS()
external LayerVariable zerosLike(Tensor x,
    [num /*enum DType*/ dtype, String name]);
@JS()
external Tensor ones(List<num> shape, [num /*enum DType*/ dtype]);
@JS()
external LayerVariable onesVariable(List<num> shape,
    [num /*enum DType*/ dtype, String name]);
@JS()
external LayerVariable onesLike(Tensor x,
    [num /*enum DType*/ dtype, String name]);
@JS()
external Tensor identity(Tensor x);
@JS()
external Tensor eye(num size, [num /*enum DType*/ dtype, String name]);
@JS()
external LayerVariable eyeVariable(num size,
    [num /*enum DType*/ dtype, String name]);
@JS()
external Tensor neg(Tensor x);
@JS()
external Tensor add(Tensor x, Tensor y);
@JS()
external Tensor subtract(Tensor x, Tensor y);
@JS()
external Tensor multiply(Tensor x, Tensor y);
@JS()
external Tensor divide(Tensor x, Tensor y);
@JS()
external Tensor scalarTimesArray(Tensor<Rank.R0> c, Tensor x);
@JS()
external Tensor scalarPlusArray(Tensor<Rank.R0> c, Tensor x);
@JS()
external Tensor randomUniform(List<num> shape, num minval, num maxval,
    [num /*enum DType*/ dtype, num seed]);
@JS()
external LayerVariable randomUniformVariable(
    List<num> shape, num minval, num maxval,
    [num /*enum DType*/ dtype, num seed, String name]);
@JS()
external Tensor truncatedNormal(List<num> shape,
    [num mean, num stddev, num /*enum DType*/ dtype, num seed]);
@JS()
external LayerVariable truncatedNormalVariable(List<num> shape,
    [num mean, num stddev, num /*enum DType*/ dtype, num seed, String name]);
@JS()
external Tensor randomNormal(List<num> shape,
    [num mean, num stddev, num /*enum DType*/ dtype, num seed]);
@JS()
external LayerVariable randomNormalVariable(List<num> shape,
    [num mean, num stddev, num /*enum DType*/ dtype, num seed, String name]);
@JS()
external LayerVariable update(LayerVariable x, Tensor xNew);
@JS()
external LayerVariable updateAdd(LayerVariable x, Tensor increment);
@JS()
external LayerVariable updateSub(LayerVariable x, Tensor decrement);
@JS()
external Tensor dot(Tensor x, Tensor y);
@JS()
external Tensor sign(Tensor x);
@JS()
external List<Tensor> /*Tuple of <Tensor,Tensor>*/ qr(Tensor<Rank.R2> x);
@JS()
external Tensor oneHot(Tensor indices, num numClasses);
@JS()
external Tensor /*Tensor<Rank.R0>|Tensor*/ mean(Tensor x,
    [dynamic /*num|List<num>*/ axis, bool keepDims]);
@JS()
external Tensor argmax(Tensor x, [num axis]);
@JS()
external Tensor gather(
    Tensor reference, dynamic /*List<num>|Tensor<Rank.R1>*/ indices,
    [num axis]);
@JS()
external Tensor /*Tensor<Rank.R0>|Tensor*/ max(Tensor x,
    [dynamic /*num|List<num>*/ axis, bool keepDims]);
@JS()
external Tensor /*Tensor<Rank.R0>|Tensor*/ min(Tensor x,
    [dynamic /*num|List<num>*/ axis, bool keepDims]);
@JS()
external Tensor minimum(Tensor x, Tensor y);
@JS()
external Tensor sum(Tensor x, [dynamic /*num|List<num>*/ axis, bool keepDims]);
@JS()
external Tensor abs(Tensor x);
@JS()
external Tensor square(Tensor x);
@JS()
external Tensor sqrt(Tensor x);
@JS()
external Tensor exp(Tensor x);
@JS()
external Tensor log(Tensor x);
@JS()
external Tensor pow(Tensor x, dynamic /*Tensor|num*/ a);
@JS()
external Tensor clip(Tensor x, num minValue, num maxValue);
@JS()
external Tensor equal(Tensor x, Tensor y);
@JS()
external Tensor greater(Tensor x, Tensor y);
@JS()
external Tensor greaterEqual(Tensor x, Tensor y);
@JS()
external Tensor maximum(Tensor x, Tensor y);
@JS()
external Tensor sin(ConcreteTensor x);
@JS()
external Tensor cos(ConcreteTensor x);
@JS()
external Tensor batchNormalization(Tensor x, Tensor mean, Tensor variance,
    [Tensor beta, Tensor gamma, num epsilon]);
@JS()
external Tensor biasAdd(Tensor x, Tensor bias,
    [String /*'channelsFirst'|'channelsLast'*/ dataFormat]);
@JS()
external Tensor elu(Tensor x, [num alpha]);
@JS()
external Tensor selu(Tensor x);
@JS()
external Tensor relu(Tensor x);
@JS()
external Tensor softplus(Tensor x);
@JS()
external Tensor softsign(Tensor x);
@JS()
external Tensor tanh(Tensor x);
@JS()
external Tensor dropout(Tensor x, Tensor<Rank.R0> level,
    [List<num> noiseShape, num seed]);
@JS()
external Tensor l2Normalize(Tensor x, [num axis]);
@JS()
external Tensor conv1dWithBias(Tensor x, Tensor kernel, Tensor bias,
    [num strides,
    String padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    num dilationRate]);
@JS()
external Tensor conv1d(Tensor x, Tensor kernel,
    [num strides,
    String padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    num dilationRate]);
@JS()
external Tensor conv2d(Tensor x, Tensor kernel,
    [List<num> strides,
    String padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    List<num> /*Tuple of <num,num>*/ dilationRate]);
@JS()
external Tensor conv2dWithBias(Tensor x, Tensor kernel, Tensor bias,
    [List<num> strides,
    String padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    List<num> /*Tuple of <num,num>*/ dilationRate]);
@JS()
external Tensor depthwiseConv2d(Tensor x, Tensor depthwiseKernel,
    [List<num> /*Tuple of <num,num>*/ strides,
    String padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    List<num> /*Tuple of <num,num>*/ dilationRate]);
@JS()
external Tensor pool2d(Tensor x, List<num> /*Tuple of <num,num>*/ poolSize,
    [List<num> /*Tuple of <num,num>*/ strides,
    String /*'valid'|'same'|'casual'*/ padding,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat,
    String /*'max'|'avg'*/ poolMode]);
@JS()
external dynamic/*=T*/ nameScope/*<T>*/(String name, dynamic/*=T*/ fn());
@JS()
external num /*enum DType*/ floatx();
@JS()
external String getUid([String prefix]);
@JS()
external Tensor softmax(Tensor x, [num axis]);
@JS()
external Tensor categoricalCrossentropy(Tensor target, Tensor output,
    [bool fromLogits]);
@JS()
external Tensor sparseCategoricalCrossentropy(Tensor target, Tensor output,
    [bool fromLogits]);
@JS()
external Tensor binaryCrossentropy(Tensor target, Tensor output,
    [bool fromLogits]);
@JS()
external Tensor sigmoidCrossEntropyWithLogits(Tensor target, Tensor output);
@JS()
external Tensor sigmoid(Tensor x);
@JS()
external Tensor hardSigmoid(Tensor x);
@JS()
external dynamic/*=T*/ inTrainPhase/*<T>*/(
    dynamic/*=T*/ x(), dynamic/*=T*/ alt(),
    [bool training]);
@JS()
external List<dynamic /*Tensor|List<Tensor>*/ > /*Tuple of <Tensor,Tensor,List<Tensor>>*/ rnn(
    RnnStepFunction stepFunction, Tensor inputs, List<Tensor> initialStates,
    [bool goBackwards,
    Tensor mask,
    List<Tensor> constants,
    bool unroll,
    num inputLength]);
@JS()
external List<Tensor> gradients(
    Tensor<Rank.R0> lossFn(), List<LayerVariable> variables);
