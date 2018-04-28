@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.concat_util;

import "package:js/js.dart";

@JS()
external void assertParams(List<num> aShape, List<num> bShape, num axis);
@JS()
external List<num> computeOutShape1D(List<num> x1Shape, List<num> x2Shape);
@JS()
external List<num> computeOutShape(
    List<num> x1Shape, List<num> x2Shape, num axis);
@JS()
external dynamic
    /*{
    aBegin: [number, number];
    aSize: [number, number];
    bBegin: [number, number];
    bSize: [number, number];
}*/
    computeGradientSliceShapes(List<num> /*Tuple of <num,num>*/ aShape,
        List<num> /*Tuple of <num,num>*/ bShape);
