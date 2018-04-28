@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.common;

import "package:js/js.dart";

/*export declare type DataFormat = 'channelsFirst' | 'channelsLast';*/
@JS()
external List<String> get VALID_DATA_FORMAT_VALUES;
@JS()
external void checkDataFormat(
    [String
        value]); /*export declare type PaddingMode = 'valid' | 'same' | 'casual';*/
@JS()
external List<String> get VALID_PADDING_MODE_VALUES;
@JS()
external void checkPaddingMode(
    [String value]); /*export declare type PoolMode = 'max' | 'avg';*/
@JS()
external List<String> get VALID_POOL_MODE_VALUES;
@JS()
external void checkPoolMode([String value]);
@JS()
external dynamic/*=T*/ nameScope/*<T>*/(String name, dynamic/*=T*/ fn());
@JS()
external String getScopedTensorName(String tensorName);
@JS()
external String getUniqueTensorName(String scopedName);
@JS()
external bool isValidTensorName(String name);
