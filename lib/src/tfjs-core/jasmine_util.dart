@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.jasmine_util;

import "package:js/js.dart";
import "environment.dart" show Features;

@JS()
external void describeWithFlags(
    String name, Features constraints, void tests());
@JS()
external void setBeforeAll(void f(Features features));
@JS()
external void setAfterAll(void f(Features features));
@JS()
external void setBeforeEach(void f(Features features));
@JS()
external void setAfterEach(void f(Features features));
@JS()
external void setTestEnvFeatures(List<Features> features);
