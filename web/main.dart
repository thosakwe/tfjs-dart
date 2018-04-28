import 'package:js/js.dart' show allowInterop;
import 'package:tfjs/tfjs.dart' as tf;

void main() {
  // Define a model for linear regression.
  var model = tf.sequential() as tf.Sequential;
  model.add(tf.layers.dense({'units': 1, 'inputShape': [1]}));

  // Prepare the model for training.
  model.compile(
      new tf.ModelCompileConfig(loss: 'meanSquaredError', optimizer: 'sgd'));

  // Generate training data.
  var xs = tf.tensor2d([1, 2, 3, 4], [4, 1]);
  var ys = tf.tensor2d([1, 3, 5, 7], [4, 1]);

  // Train the model using the data.
  model.fit(xs, ys).then(allowInterop(() {
    model.predict(tf.tensor2d([5], [1, 1])).print();
  }));
}
