@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.utils.conv_utils;

import "package:js/js.dart";

@JS()
external List<num> normalizeArray(
    dynamic /*num|List<num>*/ value, num n, String name);
@JS()
external num convOutputLength(num inputLength, num fliterSize,
    String /*'valid'|'same'|'casual'*/ padding, num stride,
    [num dilation]);
@JS()
external num deconvLength(num dimSize, num strideSize, num kernelSize,
    String /*'valid'|'same'|'casual'*/ padding);
