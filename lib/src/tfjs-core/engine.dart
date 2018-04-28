@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.engine;

import "package:js/js.dart";
import "tensor.dart" show Tensor, Variable;
import "backend.dart" show KernelBackend, BackendTimingInfo;
import "types.dart" show NamedVariableMap, NamedTensorMap;

typedef T ForwardFunc<T extends Tensor>(KernelBackend backend,
    [dynamic/*=S*/ save(dynamic/*=S*/ tensor)]);
typedef dynamic /*{
    value: T;
    gradFunc: (dy: T) => Tensor | Tensor[];
}*/
    CustomGradientFunc<T extends Tensor>(
        [Tensor args1, Tensor args2, Tensor args3, Tensor args4, Tensor args5]);

@anonymous
@JS()
abstract class TensorManager {
  external void registerTensor(Tensor a);
  external void registerVariable(Variable v);
  external void disposeTensor(Tensor a);
  external dynamic
      /*{
        numDataBuffers: number;
        numBytes: number;
    }*/
      memory();
}

@anonymous
@JS()
abstract class MemoryInfo {
  external num get numTensors;
  external set numTensors(num v);
  external num get numDataBuffers;
  external set numDataBuffers(num v);
  external num get numBytes;
  external set numBytes(num v);
  external bool get unreliable;
  external set unreliable(bool v);
  external factory MemoryInfo(
      {num numTensors, num numDataBuffers, num numBytes, bool unreliable});
}

@anonymous
@JS()
abstract class TimingInfo implements BackendTimingInfo {
  external num get wallMs;
  external set wallMs(num v);
  external factory TimingInfo({num wallMs, num kernelMs});
}

@JS()
class Engine implements TensorManager {
  // @Ignore
  Engine.fakeConstructor$();
  external get backend;
  external set backend(v);
  external bool get safeMode;
  external set safeMode(bool v);
  external NamedVariableMap get registeredVariables;
  external set registeredVariables(NamedVariableMap v);
  external get refCounter;
  external set refCounter(v);
  external get nextTapeNodeId;
  external set nextTapeNodeId(v);
  external get numBytes;
  external set numBytes(v);
  external get numTensors;
  external set numTensors(v);
  external get numDataBuffers;
  external set numDataBuffers(v);
  external get activeTape;
  external set activeTape(v);
  external get gradientScopeCount;
  external set gradientScopeCount(v);
  external get customGradientDepth;
  external set customGradientDepth(v);
  external get activeScope;
  external set activeScope(v);
  external get scopeStack;
  external set scopeStack(v);
  external get profiler;
  external set profiler(v);
  external factory Engine(KernelBackend backend, bool safeMode);
  external runKernel/*<T extends Tensor, I extends NamedTensorMap>*/(
      ForwardFunc<dynamic/*=T*/ > forwardFunc, dynamic/*=I*/ inputs,
      [dynamic /*{
        [P in keyof*/
      backwardsFunc(dynamic/*=T*/ dy, List<Tensor> saved)]);
}

typedef T ScopeFn<
    T extends dynamic /*Null|Tensor|String|num|bool|TensorContainerObject|TensorContainerArray*/ >();
