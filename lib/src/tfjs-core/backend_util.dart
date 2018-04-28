@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.backend_util;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "backend.dart" show KernelBackend;
import "types.dart" show ShapeMap;

@JS()
external dynamic/*=T*/ castTensor/*<T extends Tensor<enum Rank>>*/(
    dynamic/*=T*/ x, keyof dtype, KernelBackend backend);
@JS()
external reshapeTensor/*<T extends Tensor<enum Rank>, R extends enum Rank>*/(
    dynamic/*=T*/ x,
    [List<ShapeMap> shape]);
