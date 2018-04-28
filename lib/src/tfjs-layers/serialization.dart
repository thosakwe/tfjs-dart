@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.serialization;

import "package:js/js.dart";
import "types.dart" show Serializable, ConfigDict;

@JS()
external Serializable deserialize(ConfigDict config,
    [ConfigDict customObjects]);
