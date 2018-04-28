@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.broadcast_util;

import "package:js/js.dart";

@JS()
external List<num> getBroadcastDims(List<num> inShape, List<num> outShape);
@JS()
external List<num> getReductionAxes(List<num> inShape, List<num> outShape);
@JS()
external bool broadcastDimsAreOuter(List<num> dims);
@JS()
external List<num> assertAndGetBroadcastShape(
    List<num> shapeA, List<num> shapeB);
