@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.backend_webgl;

import "package:js/js.dart";
import "engine.dart" show TimingInfo;
import "backend.dart" show KernelBackend;
import "dart:html" show ImageData, ImageElement, CanvasElement, VideoElement;
import "dart:web_gl" show Texture;
import "tex_util.dart" show TextureData;
import "gpgpu_context.dart" show GPGPUContext;
import "tensor.dart" show Tensor;
import "conv_util.dart" show Conv2DInfo;
import "types.dart" show ShapeMap;
import "texture_manager.dart" show TextureManager;

@anonymous
@JS()
abstract class CPUTimerQuery {
  external num get startMs;
  external set startMs(num v);
  external num get endMs;
  external set endMs(num v);
  external factory CPUTimerQuery({num startMs, num endMs});
}

@anonymous
@JS()
abstract class WebGLTimingInfo implements TimingInfo {
  external num get uploadWaitMs;
  external set uploadWaitMs(num v);
  external num get downloadWaitMs;
  external set downloadWaitMs(num v);
  external factory WebGLTimingInfo(
      {num uploadWaitMs, num downloadWaitMs, num wallMs, num kernelMs});
}

@JS()
class MathBackendWebGL implements KernelBackend {
  // @Ignore
  MathBackendWebGL.fakeConstructor$();
  external get gpgpu;
  external set gpgpu(v);
  external get delayedStorage;
  external set delayedStorage(v);
  external get texData;
  external set texData(v);
  external get canvas;
  external set canvas(v);
  external get programTimersStack;
  external set programTimersStack(v);
  external get activeTimers;
  external set activeTimers(v);
  external get uploadWaitMs;
  external set uploadWaitMs(v);
  external get downloadWaitMs;
  external set downloadWaitMs(v);
  external void register(object dataId, List<num> shape, keyof dtype);
  external Tensor<Rank.R3> fromPixels(
      dynamic /*ImageData|ImageElement|CanvasElement|VideoElement*/ pixels,
      num numChannels);
  external void write(object dataId, List<DataTypeMap> values);
  external List<DataTypeMap> readSync(object dataId);
  external Promise<List<DataTypeMap>> read(object dataId);
  external Promise<WebGLTimingInfo> time(void f());
  external dynamic /*{
        unreliable: boolean;
    }*/
      memory();
  external startTimer();
  external endTimer(query);
  external getQueryTime(query);
  external void disposeData(object dataId);
  external Texture getTexture(object dataId);
  external TextureData getTextureData(object dataId);
  external get textureManager;
  external set textureManager(v);
  external get binaryCache;
  external set binaryCache(v);
  external get gpgpuCreatedLocally;
  external set gpgpuCreatedLocally(v);
  external factory MathBackendWebGL([GPGPUContext gpgpu, bool delayedStorage]);
  external GPGPUContext getGPGPUContext();
  external dynamic/*=T*/ slice/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<num> begin, List<num> size);
  external dynamic/*=T*/ reverse/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<num> axis);
  external Tensor<Rank.R2> concat(Tensor<Rank.R2> a, Tensor<Rank.R2> b);
  external dynamic/*=T*/ neg/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external Tensor<Rank.R2> matMul(
      Tensor<Rank.R2> a, Tensor<Rank.R2> b, bool transposeA, bool transposeB);
  external Tensor multiply(Tensor a, Tensor b);
  external Tensor<Rank.R4> batchNormalization(
      Tensor<Rank.R4> x,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ mean,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ variance,
      num varianceEpsilon,
      [Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ scale,
      Tensor /*Tensor<Rank.R4>|Tensor<Rank.R1>*/ offset]);
  external Tensor<Rank.R4> localResponseNormalization4D(
      Tensor<Rank.R4> x, num radius, num bias, num alpha, num beta);
  external dynamic/*=T*/ tile/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<num> reps);
  external dynamic/*=T*/ pad/*<T extends Tensor>*/(dynamic/*=T*/ x,
      List<List<num> /*Tuple of <num,num>*/ > paddings, num constantValue);
  external dynamic/*=T*/ transpose/*<T extends Tensor>*/(
      dynamic/*=T*/ x, List<num> perm);
  external dynamic/*=T*/ gather/*<T extends Tensor>*/(
      dynamic/*=T*/ x, Tensor<Rank.R1> indices, num axis);
  external reduce(x, reduceType, dtype);
  external argReduce(x, reduceType, [bestIndicesA]);
  external Tensor sum(Tensor x, List<num> axes);
  external Tensor argMin(Tensor x, num axis);
  external Tensor argMax(Tensor x, num axis);
  external Tensor equal(Tensor a, Tensor b);
  external Tensor notEqual(Tensor a, Tensor b);
  external Tensor less(Tensor a, Tensor b);
  external Tensor lessEqual(Tensor a, Tensor b);
  external Tensor greater(Tensor a, Tensor b);
  external Tensor greaterEqual(Tensor a, Tensor b);
  external dynamic/*=T*/ logicalNot/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external Tensor logicalAnd(Tensor a, Tensor b);
  external Tensor logicalOr(Tensor a, Tensor b);
  external Tensor where(Tensor condition, Tensor a, Tensor b, keyof dtype);
  external Tensor<Rank.R1> topKValues/*<T extends Tensor>*/(
      dynamic/*=T*/ x, num k);
  external Tensor<Rank.R1> topKIndices(Tensor x, num k);
  external Tensor min(Tensor x, List<num> axes);
  external Tensor minimum(Tensor a, Tensor b);
  external Tensor mod(Tensor a, Tensor b);
  external Tensor max(Tensor x, List<num> axes);
  external Tensor maximum(Tensor a, Tensor b);
  external Tensor squaredDifference(Tensor a, Tensor b);
  external Tensor divide(Tensor a, Tensor b);
  external Tensor add(Tensor a, Tensor b);
  external Tensor subtract(Tensor a, Tensor b);
  external dynamic/*=T*/ pow/*<T extends Tensor>*/(dynamic/*=T*/ a, Tensor b);
  external dynamic/*=T*/ ceil/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ floor/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ sign/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ round/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ exp/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ expm1/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ log/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ log1p/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ sqrt/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ rsqrt/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ square/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ reciprocal/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ relu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ elu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ eluDer/*<T extends Tensor>*/(
      dynamic/*=T*/ dy, dynamic/*=T*/ y);
  external dynamic/*=T*/ selu/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ int/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ clip/*<T extends Tensor>*/(
      dynamic/*=T*/ x, num min, num max);
  external dynamic/*=T*/ abs/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ sigmoid/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ softplus/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ sin/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ cos/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ tan/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ asin/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ acos/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ atan/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ atan2/*<T extends Tensor>*/(
      dynamic/*=T*/ a, dynamic/*=T*/ b);
  external dynamic/*=T*/ sinh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ cosh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ tanh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ asinh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ acosh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ atanh/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ erf/*<T extends Tensor>*/(dynamic/*=T*/ x);
  external dynamic/*=T*/ step/*<T extends Tensor>*/(dynamic/*=T*/ x, num alpha);
  external Tensor<Rank.R4> conv2d(
      Tensor<Rank.R4> x, Tensor<Rank.R4> filter, Conv2DInfo convInfo);
  external Tensor<Rank.R4> conv2dDerInput(
      Tensor<Rank.R4> dy, Tensor<Rank.R4> filter, Conv2DInfo convInfo);
  external Tensor<Rank.R4> conv2dDerFilter(
      Tensor<Rank.R4> x, Tensor<Rank.R4> dy, Conv2DInfo convInfo);
  external Tensor<Rank.R4> depthwiseConv2D(
      Tensor<Rank.R4> x, Tensor<Rank.R4> filter, Conv2DInfo convInfo);
  external Tensor<Rank.R4> maxPool(Tensor<Rank.R4> x, Conv2DInfo convInfo);
  external Tensor<Rank.R4> avgPool(Tensor<Rank.R4> x, Conv2DInfo convInfo);
  external Tensor<Rank.R4> maxPoolBackprop(Tensor<Rank.R4> dy,
      Tensor<Rank.R4> x, Tensor<Rank.R4> y, Conv2DInfo convInfo);
  external Tensor<Rank.R4> avgPoolBackprop(
      Tensor<Rank.R4> dy, Tensor<Rank.R4> x, Conv2DInfo convInfo);
  external dynamic/*=T*/ cast/*<T extends Tensor<enum types.Rank>>*/(
      dynamic/*=T*/ x, keyof dtype);
  external reshape/*<T extends Tensor<enum types.Rank>, R extends enum types.Rank>*/(
      dynamic/*=T*/ x,
      [List<ShapeMap> shape]);
  external Tensor/*<R>*/();
  external Tensor<Rank.R4> resizeBilinear(
      Tensor<Rank.R4> x, num newHeight, num newWidth, bool alignCorners);
  external Tensor<Rank.R4> resizeNearestNeighbor(
      Tensor<Rank.R4> x, num newHeight, num newWidth, bool alignCorners);
  external Tensor<Rank.R2> multinomial(
      Tensor<Rank.R2> logits, bool normalized, num numSamples, num seed);
  external Tensor<Rank.R2> oneHot(
      Tensor<Rank.R1> indices, num depth, num onValue, num offValue);
  external makeOutputArray/*<T>*/(shape, dtype);
  external compileAndRun/*<T, K>*/(program, inputs, [output, customSetup]);
  external getAndSaveBinary(key, getBinary);
  external TextureManager getTextureManager();
  external get disposed;
  external set disposed(v);
  external void dispose();
  external throwIfNoData(dataId);
  external uploadToGPU(dataId);
  external cacheOnCPU(dataId, [float32Values]);
}
