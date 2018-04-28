@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.utils.serialization_utils;

import "package:js/js.dart";

@JS()
external dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ convertPythonicToTs(
    dynamic /*bool|num|String|Null|JsonArray|JsonDict*/ pythonicConfig,
    [String key]);
@JS()
external dynamic /*bool|num|String|Null|JsonArray|JsonDict*/ convertTsToPythonic(
    dynamic /*bool|num|String|Null|ConfigDictArray|ConfigDict*/ tsConfig,
    [String key]);
