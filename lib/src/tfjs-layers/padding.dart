@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.layers.padding;

import "package:js/js.dart";
import "topology.dart" show LayerConfig, Layer;
import "tensor.dart" show Tensor;
import "types.dart" show ConfigDict;

@anonymous
@JS()
abstract class ZeroPadding2DLayerConfig implements LayerConfig {
  external dynamic /*num|Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ get padding;
  external set padding(
      dynamic /*num|Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ v);
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external factory ZeroPadding2DLayerConfig(
      {dynamic /*num|Tuple of <num,num>|Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ padding,
      String /*'channelsFirst'|'channelsLast'*/ dataFormat,
      List<num> inputShape,
      List<num> batchInputShape,
      num batchSize,
      num /*enum DType*/ dtype,
      String name,
      bool trainable,
      bool updatable,
      List<Tensor> weights,
      num /*enum DType*/ inputDType});
}

@JS()
class ZeroPadding2D extends Layer {
  // @Ignore
  ZeroPadding2D.fakeConstructor$() : super.fakeConstructor$();
  external String /*'channelsFirst'|'channelsLast'*/ get dataFormat;
  external set dataFormat(String /*'channelsFirst'|'channelsLast'*/ v);
  external List<
      List<
          num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ get padding;
  external set padding(
      List<
          List<
              num> /*Tuple of <num,num>*/ > /*Tuple of <Tuple of <num,num>,Tuple of <num,num>>*/ v);
  external factory ZeroPadding2D([ZeroPadding2DLayerConfig config]);
  external List<dynamic> /*List<num>|List<List<num>>*/ computeOutputShape(
      List<dynamic> /*List<num>|List<List<num>>*/ inputShape);
  external dynamic /*Tensor|List<Tensor>*/ JS$call(
      dynamic /*Tensor|List<Tensor>*/ inputs, dynamic kwargs);
  external String getClassName();
  external ConfigDict getConfig();
}
