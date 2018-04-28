@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.callbacks;

import "package:js/js.dart";
import "tensor.dart" show Tensor;
import "training.dart" show Model;
import "package:func/func.dart";

@anonymous
@JS()
abstract class UnresolvedLogs {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Logs {
  /* Index signature is not yet supported by JavaScript interop. */
}

@anonymous
@JS()
abstract class Params {
  /* Index signature is not yet supported by JavaScript interop. */
}

@JS()
abstract class Callback {
  // @Ignore
  Callback.fakeConstructor$();
  external dynamic /*Tensor|List<Tensor>*/ get validationData;
  external set validationData(dynamic /*Tensor|List<Tensor>*/ v);
  external Model get model;
  external set model(Model v);
  external Params get params;
  external set params(Params v);
  external void setParams(Params params);
  external void setModel(Model model);
  external Promise<Null> onEpochBegin(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onEpochEnd(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchBegin(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchEnd(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onTrainBegin([UnresolvedLogs logs]);
  external Promise<Null> onTrainEnd([UnresolvedLogs logs]);
}

@JS()
class CallbackList {
  // @Ignore
  CallbackList.fakeConstructor$();
  external List<Callback> get callbacks;
  external set callbacks(List<Callback> v);
  external num get queueLength;
  external set queueLength(num v);
  external factory CallbackList([List<Callback> callbacks, num queueLength]);
  external void append(Callback callback);
  external void setParams(Params params);
  external void setModel(Model model);
  external Promise<Null> onEpochBegin(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onEpochEnd(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchBegin(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchEnd(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onTrainBegin([UnresolvedLogs logs]);
  external Promise<Null> onTrainEnd([UnresolvedLogs logs]);
}

@JS()
class BaseLogger extends Callback {
  // @Ignore
  BaseLogger.fakeConstructor$() : super.fakeConstructor$();
  external get seen;
  external set seen(v);
  external get totals;
  external set totals(v);
  external factory BaseLogger();
  external Promise<Null> onEpochBegin(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchEnd(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onEpochEnd(num epoch, [UnresolvedLogs logs]);
}

@JS()
external Promise<Null> resolveScalarsInLogs(UnresolvedLogs logs);
@JS()
external void disposeTensorsInLogs(UnresolvedLogs logs);

@JS()
class History extends Callback {
  // @Ignore
  History.fakeConstructor$() : super.fakeConstructor$();
  external List<num> get epoch;
  external set epoch(List<num> v);
  external dynamic /*JSMap of <String,List<num|Tensor>>*/ get history;
  external set history(dynamic /*JSMap of <String,List<num|Tensor>>*/ v);
  external Promise<Null> onTrainBegin([UnresolvedLogs logs]);
  external Promise<Null> onEpochEnd(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> syncData();
}

@anonymous
@JS()
abstract class CustomCallbackConfig {
  external Func1Opt1<Logs, Promise<Null>> get onTrainBegin;
  external set onTrainBegin(Func1Opt1<Logs, Promise<Null>> v);
  external Func1Opt1<Logs, Promise<Null>> get onTrainEnd;
  external set onTrainEnd(Func1Opt1<Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get onEpochBegin;
  external set onEpochBegin(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get onEpochEnd;
  external set onEpochEnd(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get onBatchBegin;
  external set onBatchBegin(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get onBatchEnd;
  external set onBatchEnd(Func2Opt1<num, Logs, Promise<Null>> v);
  external factory CustomCallbackConfig(
      {Func1Opt1<Logs, Promise<Null>> onTrainBegin,
      Func1Opt1<Logs, Promise<Null>> onTrainEnd,
      Func2Opt1<num, Logs, Promise<Null>> onEpochBegin,
      Func2Opt1<num, Logs, Promise<Null>> onEpochEnd,
      Func2Opt1<num, Logs, Promise<Null>> onBatchBegin,
      Func2Opt1<num, Logs, Promise<Null>> onBatchEnd});
}

@JS()
class CustomCallback extends Callback {
  // @Ignore
  CustomCallback.fakeConstructor$() : super.fakeConstructor$();
  external Func1Opt1<Logs, Promise<Null>> get trainBegin;
  external set trainBegin(Func1Opt1<Logs, Promise<Null>> v);
  external Func1Opt1<Logs, Promise<Null>> get trainEnd;
  external set trainEnd(Func1Opt1<Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get epochBegin;
  external set epochBegin(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get epochEnd;
  external set epochEnd(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get batchBegin;
  external set batchBegin(Func2Opt1<num, Logs, Promise<Null>> v);
  external Func2Opt1<num, Logs, Promise<Null>> get batchEnd;
  external set batchEnd(Func2Opt1<num, Logs, Promise<Null>> v);
  external factory CustomCallback(CustomCallbackConfig config);
  external Promise<Null> onEpochBegin(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onEpochEnd(num epoch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchBegin(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onBatchEnd(num batch, [UnresolvedLogs logs]);
  external Promise<Null> onTrainBegin([UnresolvedLogs logs]);
  external Promise<Null> onTrainEnd([UnresolvedLogs logs]);
}

@JS()
external List<Callback> standardizeCallbacks(
    dynamic /*Callback|List<Callback>|CustomCallbackConfig|List<CustomCallbackConfig>*/ callbacks);
