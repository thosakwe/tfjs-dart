@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.axis_util;

import "package:js/js.dart";

@JS()
external bool axesAreInnerMostDims(List<num> axes, num rank);
@JS()
external List<num> combineLocations(
    List<num> outputLoc, List<num> reduceLoc, List<num> axes);
@JS()
external List<
    List<
        num>> /*Tuple of <List<num>,List<num>>*/ computeOutAndReduceShapes(
    List<num> aShape, List<num> axes);
@JS()
external List<num> expandShapeToKeepDim(List<num> shape, List<num> axes);
@JS()
external List<num> parseAxisParam(
    dynamic /*num|List<num>*/ axis, List<num> shape);
@JS()
external void assertAxesAreInnerMostDims(String msg, List<num> axes, num rank);
@JS()
external List<num> /*List<num>|Null*/ getAxesPermutation(
    List<num> axes, num rank);
@JS()
external List<num> getUndoAxesPermutation(List<num> axes);
@JS()
external List<num> getInnerMostAxes(num numAxes, num rank);
