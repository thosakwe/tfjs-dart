@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.test_util;

import "package:js/js.dart";
import "environment.dart" show Features;
import "tensor.dart" show Tensor;
import "package:func/func.dart";

@JS()
external Features get WEBGL_ENVS;
@JS()
external Features get CPU_ENVS;
@JS()
external dynamic /*{}*/ get ALL_ENVS;
@JS()
external get TEST_EPSILON;
@JS()
external void expectArraysClose(
    dynamic /*Tensor|List<DataTypeMap>|List<num>*/ actual,
    dynamic /*Tensor|List<DataTypeMap>|List<num>|List<bool>*/ expected,
    [num epsilon]);

@anonymous
@JS()
abstract class DoneFn {
  external void call();
  external VoidFunc1Opt1<dynamic /*Error|String*/ > get fail;
  external set fail(VoidFunc1Opt1<dynamic /*Error|String*/ > v);
}

@JS()
external void expectPromiseToFail(Promise<dynamic /*{}*/ > fn(), DoneFn done);
@JS()
external void expectArraysEqual(
    dynamic /*Tensor|List<DataTypeMap>|List<num>*/ actual,
    dynamic /*Tensor|List<DataTypeMap>|List<num>|List<bool>*/ expected);
@JS()
external void expectNumbersClose(num a, num e, [num epsilon]);
@JS()
external void expectValuesInRange(
    dynamic /*Tensor|List<DataTypeMap>|List<num>*/ actual, num low, num high);
