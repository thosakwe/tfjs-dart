@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.utils.test_utils;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
external void expectTensorsClose(
    dynamic /*Tensor|List<num>*/ actual, dynamic /*Tensor|List<num>*/ expected,
    [num epsilon]);
@JS()
external void expectTensorsValuesInRange(Tensor actual, num low, num high);
@JS()
external void describeMathCPUAndGPU(String testName, void tests());
@JS()
external void describeMathCPU(String testName, void tests());
@JS()
external void describeMathGPU(String testName, void tests());
