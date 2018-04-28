@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.conv_util;

import "package:js/js.dart";

@anonymous
@JS()
abstract class PadInfo {
  external num get top;
  external set top(num v);
  external num get left;
  external set left(num v);
  external num get right;
  external set right(num v);
  external num get bottom;
  external set bottom(num v);
  external String get type;
  external set type(String v);
  external factory PadInfo(
      {num top, num left, num right, num bottom, String type});
}

@anonymous
@JS()
abstract class Conv2DInfo {
  external num get batchSize;
  external set batchSize(num v);
  external num get inHeight;
  external set inHeight(num v);
  external num get inWidth;
  external set inWidth(num v);
  external num get inChannels;
  external set inChannels(num v);
  external num get outHeight;
  external set outHeight(num v);
  external num get outWidth;
  external set outWidth(num v);
  external num get outChannels;
  external set outChannels(num v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external num get strideHeight;
  external set strideHeight(num v);
  external num get strideWidth;
  external set strideWidth(num v);
  external num get dilationHeight;
  external set dilationHeight(num v);
  external num get dilationWidth;
  external set dilationWidth(num v);
  external num get filterHeight;
  external set filterHeight(num v);
  external num get filterWidth;
  external set filterWidth(num v);
  external PadInfo get padInfo;
  external set padInfo(PadInfo v);
  external List<num> /*Tuple of <num,num,num,num>*/ get inShape;
  external set inShape(List<num> /*Tuple of <num,num,num,num>*/ v);
  external List<num> /*Tuple of <num,num,num,num>*/ get outShape;
  external set outShape(List<num> /*Tuple of <num,num,num,num>*/ v);
  external List<num> /*Tuple of <num,num,num,num>*/ get filterShape;
  external set filterShape(List<num> /*Tuple of <num,num,num,num>*/ v);
  external factory Conv2DInfo(
      {num batchSize,
      num inHeight,
      num inWidth,
      num inChannels,
      num outHeight,
      num outWidth,
      num outChannels,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      num strideHeight,
      num strideWidth,
      num dilationHeight,
      num dilationWidth,
      num filterHeight,
      num filterWidth,
      PadInfo padInfo,
      List<num> /*Tuple of <num,num,num,num>*/ inShape,
      List<num> /*Tuple of <num,num,num,num>*/ outShape,
      List<num> /*Tuple of <num,num,num,num>*/ filterShape});
}

@JS()
external Conv2DInfo computePool2DInfo(
    List<num> /*Tuple of <num,num,num,num>*/ inShape,
    dynamic /*Tuple of <num,num>|num*/ filterSize,
    dynamic /*num|Tuple of <num,num>*/ strides,
    dynamic /*'same'|'valid'|num*/ pad,
    [String /*'floor'|'round'|'ceil'*/ roundingMode,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat]);
@JS()
external Conv2DInfo computeConv2DInfo(
    List<num> /*Tuple of <num,num,num,num>*/ inShape,
    List<num> /*Tuple of <num,num,num,num>*/ filterShape,
    dynamic /*num|Tuple of <num,num>*/ strides,
    dynamic /*num|Tuple of <num,num>*/ dilations,
    dynamic /*'same'|'valid'|num*/ pad,
    [String /*'floor'|'round'|'ceil'*/ roundingMode,
    bool depthwise,
    String /*'channelsFirst'|'channelsLast'*/ dataFormat]);
@JS()
external num computeDefaultPad(
    List<num> /*Tuple of <num,num,num>*/ inputShape, num fieldSize, num stride,
    [num dilation]);
