@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.ops.lstm;

import "package:js/js.dart";

@anonymous
@JS()
abstract class LSTMCellFunc {
  external List<
      Tensor<
          Rank.R2>> /*Tuple of <Tensor<Rank.R2>,Tensor<Rank.R2>>*/ call(
      Tensor<Rank.R2> data, Tensor<Rank.R2> c, Tensor<Rank.R2> h);
}

@JS()
class LSTMOps {
  // @Ignore
  LSTMOps.fakeConstructor$();
  external static List<
      List<
          Tensor<
              Rank.R2>>> /*Tuple of <List<Tensor<Rank.R2>>,List<Tensor<Rank.R2>>>*/ multiRNNCell(
      List<LSTMCellFunc> lstmCells,
      Tensor<Rank.R2> data,
      List<Tensor<Rank.R2>> c,
      List<Tensor<Rank.R2>> h);
  external static List<
      Tensor<
          Rank.R2>> /*Tuple of <Tensor<Rank.R2>,Tensor<Rank.R2>>*/ basicLSTMCell(
      Tensor<Rank.R0> forgetBias,
      Tensor<Rank.R2> lstmKernel,
      Tensor<Rank.R1> lstmBias,
      Tensor<Rank.R2> data,
      Tensor<Rank.R2> c,
      Tensor<Rank.R2> h);
}
