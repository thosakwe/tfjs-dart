@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.losses;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "types.dart" show LossOrMetricFn;

@JS()
external Tensor meanSquaredError(Tensor yTrue, Tensor yPred);
@JS()
external Tensor meanAbsoluteError(Tensor yTrue, Tensor yPred);
@JS()
external Tensor meanAbsolutePercentageError(Tensor yTrue, Tensor yPred);
@JS()
external Tensor meanSquaredLogarithmicError(Tensor yTrue, Tensor yPred);
@JS()
external Tensor squaredHinge(Tensor yTrue, Tensor yPred);
@JS()
external Tensor hinge(Tensor yTrue, Tensor yPred);
@JS()
external Tensor categoricalHinge(Tensor yTrue, Tensor yPred);
@JS()
external Tensor logcosh(Tensor yTrue, Tensor yPred);
@JS()
external Tensor categoricalCrossentropy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor sparseCategoricalCrossentropy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor binaryCrossentropy(Tensor yTrue, Tensor yPred);
@JS()
external Tensor kullbackLeiblerDivergence(Tensor yTrue, Tensor yPred);
@JS()
external Tensor poisson(Tensor yTrue, Tensor yPred);
@JS()
external Tensor cosineProximity(Tensor yTrue, Tensor yPred);
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
external dynamic get msle;
@JS()
external dynamic get MSLE;
@JS()
external dynamic get kld;
@JS()
external dynamic get KLD;
@JS()
external dynamic get cosine;
@JS()
external LossOrMetricFn JS$get(String /*String|LossOrMetricFn*/ identifierOrFn);
