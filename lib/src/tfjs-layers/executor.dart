@JS()
library tfjs.node_modules._tensorflow.tfjs_layers.dist.engine.executor;

import "package:js/js.dart";
import "types.dart" show SymbolicTensor;
import "tensor.dart" show Tensor;

@anonymous
@JS()
abstract class Feed {
  external SymbolicTensor get key;
  external set key(SymbolicTensor v);
  external Tensor get value;
  external set value(Tensor v);
  external factory Feed({SymbolicTensor key, Tensor value});
}

@JS()
class FeedDict {
  // @Ignore
  FeedDict.fakeConstructor$();
  external get id2Value;
  external set id2Value(v);
  external factory FeedDict([dynamic /*List<Feed>|FeedDict*/ feeds]);
  external FeedDict add(SymbolicTensor key, Tensor value);
  external void addFeed(Feed feed);
  external bool hasKey(SymbolicTensor key);
  external Tensor getValue(SymbolicTensor key);
}

@JS()
external dynamic /*Tensor|List<Tensor>|Tuple of <Tensor|List<Tensor>>*/ execute(
    dynamic /*SymbolicTensor|List<SymbolicTensor>*/ fetches, FeedDict feedDict,
    [dynamic kwargs]);
