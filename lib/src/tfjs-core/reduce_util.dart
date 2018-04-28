@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.reduce_util;

import "package:js/js.dart";

@JS()
external get PARALLELIZE_THRESHOLD;

@anonymous
@JS()
abstract class ReduceInfo {
  external num get windowSize;
  external set windowSize(num v);
  external num get batchSize;
  external set batchSize(num v);
  external num get inSize;
  external set inSize(num v);
  external factory ReduceInfo({num windowSize, num batchSize, num inSize});
}

@JS()
external num computeOptimalWindowSize(num inSize);
