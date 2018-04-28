@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.rand;

import "package:js/js.dart";
import "dart:typed_data" show Float32List, Int32List;

@anonymous
@JS()
abstract class RandGauss {
  external num nextValue();
}

@anonymous
@JS()
abstract class RandNormalDataTypes {
  external Float32List get float32;
  external set float32(Float32List v);
  external Int32List get int32;
  external set int32(Int32List v);
  external factory RandNormalDataTypes({Float32List float32, Int32List int32});
}

@JS()
class MPRandGauss implements RandGauss {
  // @Ignore
  MPRandGauss.fakeConstructor$();
  external get mean;
  external set mean(v);
  external get stdDev;
  external set stdDev(v);
  external get nextVal;
  external set nextVal(v);
  external get dtype;
  external set dtype(v);
  external get truncated;
  external set truncated(v);
  external get upper;
  external set upper(v);
  external get lower;
  external set lower(v);
  external get random;
  external set random(v);
  external factory MPRandGauss(num mean, num stdDeviation,
      [keyof dtype, bool truncated, num seed]);
  external num nextValue();
  external convertValue(value);
  external isValidTruncated(value);
}
