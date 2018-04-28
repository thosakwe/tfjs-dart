@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.exports;

import "package:js/js.dart";
import "training.dart" show Model;
import "topology.dart"
    show ContainerConfig, InputConfig, Layer, InputLayerConfig, LayerConfig;
import "models.dart" show Sequential, SequentialConfig;
import "types.dart" show SymbolicTensor;
import "advanced_activations.dart"
    show
        ELULayerConfig,
        LeakyReLULayerConfig,
        SoftmaxLayerConfig,
        ThresholdedReLULayerConfig;
import "convolutional.dart" show ConvLayerConfig, SeparableConvLayerConfig;
import "convolutional_depthwise.dart" show DepthwiseConv2DLayerConfig;
import "core.dart"
    show
        ActivationLayerConfig,
        DenseLayerConfig,
        DropoutLayerConfig,
        RepeatVectorLayerConfig,
        ReshapeLayerConfig;
import "embeddings.dart" show EmbeddingLayerConfig;
import "merge.dart" show ConcatenateLayerConfig;
import "normalization.dart" show BatchNormalizationLayerConfig;
import "padding.dart" show ZeroPadding2DLayerConfig;
import "pooling.dart"
    show Pooling1DLayerConfig, Pooling2DLayerConfig, GlobalPooling2DLayerConfig;
import "recurrent.dart"
    show
        GRULayerConfig,
        RNNCell,
        GRUCellLayerConfig,
        LSTMLayerConfig,
        LSTMCellLayerConfig,
        SimpleRNNLayerConfig,
        SimpleRNNCellLayerConfig,
        RNNLayerConfig,
        StackedRNNCellsConfig;
import "wrappers.dart"
    show Wrapper, BidirectionalLayerConfig, WrapperLayerConfig;
import "constraints.dart"
    show Constraint, MaxNormConfig, UnitNormConfig, MinMaxNormConfig;
import "initializers.dart"
    show
        Zeros,
        Initializer,
        ConstantConfig,
        RandomUniformConfig,
        RandomNormalConfig,
        TruncatedNormalConfig,
        IdentityConfig,
        VarianceScalingConfig,
        SeedOnlyInitializerConfig,
        OrthogonalConfig;
import "tensor.dart" show Tensor;
import "regularizers.dart" show Regularizer, L1L2Config, L1Config, L2Config;

@JS()
class ModelExports {
  // @Ignore
  ModelExports.fakeConstructor$();
  external static Model model(ContainerConfig config);
  external static Sequential sequential([SequentialConfig config]);
  external static Promise<Model> loadModel(String modelConfigPath);
  external static SymbolicTensor input(InputConfig config);
}

@JS()
class LayerExports {
  // @Ignore
  LayerExports.fakeConstructor$();
  external static dynamic get Layer;
  external static set Layer(dynamic v);
  external static dynamic get RNNCell;
  external static set RNNCell(dynamic v);
  external static Layer inputLayer(InputLayerConfig config);
  external static dynamic get input;
  external static set input(dynamic v);
  external static Layer elu([ELULayerConfig config]);
  external static Layer leakyReLU([LeakyReLULayerConfig config]);
  external static Layer softmax([SoftmaxLayerConfig config]);
  external static Layer thresholdedReLU([ThresholdedReLULayerConfig config]);
  external static Layer conv1d(ConvLayerConfig config);
  external static Layer conv2d(ConvLayerConfig config);
  external static Layer conv2dTranspose(ConvLayerConfig config);
  external static Layer separableConv2d(SeparableConvLayerConfig config);
  external static Layer depthwiseConv2d(DepthwiseConv2DLayerConfig config);
  external static Layer activation(ActivationLayerConfig config);
  external static Layer dense(DenseLayerConfig config);
  external static Layer dropout(DropoutLayerConfig config);
  external static Layer flatten([LayerConfig config]);
  external static Layer repeatVector(RepeatVectorLayerConfig config);
  external static Layer reshape(ReshapeLayerConfig config);
  external static Layer embedding(EmbeddingLayerConfig config);
  external static Layer add([LayerConfig config]);
  external static Layer average([LayerConfig config]);
  external static Layer concatenate([ConcatenateLayerConfig config]);
  external static Layer maximum([LayerConfig config]);
  external static Layer minimum([LayerConfig config]);
  external static Layer multiply([LayerConfig config]);
  external static Layer batchNormalization(
      BatchNormalizationLayerConfig config);
  external static Layer zeroPadding2d([ZeroPadding2DLayerConfig config]);
  external static Layer averagePooling1d(Pooling1DLayerConfig config);
  external static Layer avgPool1d(Pooling1DLayerConfig config);
  external static Layer avgPooling1d(Pooling1DLayerConfig config);
  external static Layer averagePooling2d(Pooling2DLayerConfig config);
  external static Layer avgPool2d(Pooling2DLayerConfig config);
  external static Layer avgPooling2d(Pooling2DLayerConfig config);
  external static Layer globalAveragePooling1d(LayerConfig config);
  external static Layer globalAveragePooling2d(
      GlobalPooling2DLayerConfig config);
  external static Layer globalMaxPooling1d(LayerConfig config);
  external static Layer globalMaxPooling2d(GlobalPooling2DLayerConfig config);
  external static Layer maxPooling1d(Pooling1DLayerConfig config);
  external static Layer maxPooling2d(Pooling2DLayerConfig config);
  external static Layer gru(GRULayerConfig config);
  external static RNNCell gruCell(GRUCellLayerConfig config);
  external static Layer lstm(LSTMLayerConfig config);
  external static RNNCell lstmCell(LSTMCellLayerConfig config);
  external static Layer simpleRNN(SimpleRNNLayerConfig config);
  external static RNNCell simpleRNNCell(SimpleRNNCellLayerConfig config);
  external static Layer rnn(RNNLayerConfig config);
  external static RNNCell stackedRNNCells(StackedRNNCellsConfig config);
  external static Wrapper bidirectional(BidirectionalLayerConfig config);
  external static Layer timeDistributed(WrapperLayerConfig config);
}

@JS()
class ConstraintExports {
  // @Ignore
  ConstraintExports.fakeConstructor$();
  external static Constraint maxNorm(MaxNormConfig config);
  external static Constraint unitNorm(UnitNormConfig config);
  external static Constraint nonNeg();
  external static Constraint minMaxNorm(MinMaxNormConfig config);
}

@JS()
class InitializerExports {
  // @Ignore
  InitializerExports.fakeConstructor$();
  external static Zeros zeros();
  external static Initializer ones();
  external static Initializer constant(ConstantConfig config);
  external static Initializer randomUniform(RandomUniformConfig config);
  external static Initializer randomNormal(RandomNormalConfig config);
  external static Initializer truncatedNormal(TruncatedNormalConfig config);
  external static Initializer identity(IdentityConfig config);
  external static Initializer varianceScaling(VarianceScalingConfig config);
  external static Initializer glorotUniform(SeedOnlyInitializerConfig config);
  external static Initializer glorotNormal(SeedOnlyInitializerConfig config);
  external static Initializer heNormal(SeedOnlyInitializerConfig config);
  external static Initializer leCunNormal(SeedOnlyInitializerConfig config);
  external static Initializer orthogonal(OrthogonalConfig config);
}

@JS()
class MetricExports {
  // @Ignore
  MetricExports.fakeConstructor$();
  external static Tensor binaryAccuracy(Tensor yTrue, Tensor yPred);
  external static Tensor binaryCrossentropy(Tensor yTrue, Tensor yPred);
  external static Tensor categoricalAccuracy(Tensor yTrue, Tensor yPred);
  external static Tensor categoricalCrossentropy(Tensor yTrue, Tensor yPred);
  external static Tensor cosineProximity(Tensor yTrue, Tensor yPred);
  external Tensor meanAbsoluteError(Tensor yTrue, Tensor yPred);
  external Tensor meanAbsolutePercentageError(Tensor yTrue, Tensor yPred);
  external Tensor MAPE(Tensor yTrue, Tensor yPred);
  external Tensor mape(Tensor yTrue, Tensor yPred);
  external static Tensor meanSquaredError(Tensor yTrue, Tensor yPred);
  external static Tensor MSE(Tensor yTrue, Tensor yPred);
  external static Tensor mse(Tensor yTrue, Tensor yPred);
}

@JS()
class RegularizerExports {
  // @Ignore
  RegularizerExports.fakeConstructor$();
  external static Regularizer l1l2([L1L2Config config]);
  external static Regularizer l1([L1Config config]);
  external static Regularizer l2([L2Config config]);
}
