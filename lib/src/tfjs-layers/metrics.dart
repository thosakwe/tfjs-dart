@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.metrics;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "types.dart" show LossOrMetricFn;

@JS()
external Tensor binaryAccuracy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor categoricalAccuracy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor binaryCrossentropy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor sparseCategoricalAccuracy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor topKCategoricalAccuracy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor sparseTopKCategoricalAccuracy(Tensor yTrue, Tensor yPred);
@JS()
external dynamic get mse;
@JS()
external dynamic get MSE;
@JS()
external dynamic get mae;
@JS()
external dynamic get MAE;
@JS()
external dynamic get mape;
@JS()
external dynamic get MAPE;
@JS()
external dynamic get categoricalCrossentropy;
@JS()
external dynamic get cosine;
@JS()
external dynamic get sparseCategoricalCrossentropy;
@JS()
external LossOrMetricFn JS$get(String /*String|LossOrMetricFn*/ identifier);
