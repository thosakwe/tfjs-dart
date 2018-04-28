@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.utils.math_utils;

import "package:js/js.dart";
import "dart:typed_data" show Uint8List, Int32List, Float32List;

/*export declare type ArrayTypes = Uint8Array | Int32Array | Float32Array;*/
@JS()
external bool isInteger(num x);
@JS()
external num arrayProd(
    dynamic /*List<num>|Uint8List|Int32List|Float32List*/ array,
    [num begin,
    num end]);
@JS()
external num min(dynamic /*List<num>|Float32List*/ array);
@JS()
external num max(dynamic /*List<num>|Float32List*/ array);
@JS()
external num sum(dynamic /*List<num>|Float32List*/ array);
@JS()
external num mean(dynamic /*List<num>|Float32List*/ array);
@JS()
external num variance(dynamic /*List<num>|Float32List*/ array);
@JS()
external List<num> range(num begin, num end);
