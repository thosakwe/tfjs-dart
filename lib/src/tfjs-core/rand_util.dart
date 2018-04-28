@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.rand_util;

import "package:js/js.dart";
import "tensor.dart" show Tensor;

@JS()
external void jarqueBeraNormalityTest(
    dynamic /*Tensor|List<DataTypeMap>|List<num>*/ a);
@JS()
external void expectArrayInMeanStdRange(
    dynamic /*Tensor|List<DataTypeMap>|List<num>*/ actual,
    num expectedMean,
    num expectedStdDev,
    [num epsilon]);
