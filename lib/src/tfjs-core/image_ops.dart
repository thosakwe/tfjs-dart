@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.image_ops;

import "package:js/js.dart";

@JS()
class ImageOps {
  // @Ignore
  ImageOps.fakeConstructor$();
  external static dynamic/*=T*/ resizeBilinear/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ images, List<num> /*Tuple of <num,num>*/ size,
      [bool alignCorners]);
  external static dynamic/*=T*/ resizeNearestNeighbor/*<T extends Tensor<Rank.R3>|Tensor<Rank.R4>>*/(
      dynamic/*=T*/ images, List<num> /*Tuple of <num,num>*/ size,
      [bool alignCorners]);
}
