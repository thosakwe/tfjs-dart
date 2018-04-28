@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.doc;

import "package:js/js.dart";

@anonymous
@JS()
abstract class HeadingMap {
  external String /*'Creation'|'Classes'|'Transformations'|'Slicing and Joining'*/ get String /*"Tensors"*/;
  external set String /*"Tensors"*/ (
      String /*'Creation'|'Classes'|'Transformations'|'Slicing and Joining'*/ v);
  external String /*'Arithmetic'|'Basic math'|'Matrices'|'Convolution'|'Normalization'|'Images'|'Logical'|'RNN'|'Reduction'|'Classification'*/ get String /*"Operations"*/;
  external set String /*"Operations"*/ (
      String /*'Arithmetic'|'Basic math'|'Matrices'|'Convolution'|'Normalization'|'Images'|'Logical'|'RNN'|'Reduction'|'Classification'*/ v);
  external String /*'Gradients'|'Optimizers'|'Losses'|'Classes'*/ get String /*"Training"*/;
  external set String /*"Training"*/ (
      String /*'Gradients'|'Optimizers'|'Losses'|'Classes'*/ v);
  external String /*'Memory'|'Timing'*/ get String /*"Performance"*/;
  external set String /*"Performance"*/ (String /*'Memory'|'Timing'*/ v);
  external String /*''*/ get String /*"Environment"*/;
  external set String /*"Environment"*/ (String /*''*/ v);
  external factory HeadingMap(
      {String /*'Creation'|'Classes'|'Transformations'|'Slicing and Joining'*/ String /*"Tensors"*/,
      String /*'Arithmetic'|'Basic math'|'Matrices'|'Convolution'|'Normalization'|'Images'|'Logical'|'RNN'|'Reduction'|'Classification'*/ String /*"Operations"*/,
      String /*'Gradients'|'Optimizers'|'Losses'|'Classes'*/ String /*"Training"*/,
      String /*'Memory'|'Timing'*/ String /*"Performance"*/,
      String /*''*/ String /*"Environment"*/});
}

/*export declare type Heading = keyof*/
/*export declare type Namespace = 'losses' | 'image' | 'train';*/
@anonymous
@JS()
abstract class DocInfo {
  external String get heading;
  external set heading(String v);
  external String get subheading;
  external set subheading(String v);
  external String get namespace;
  external set namespace(String v);
  external List<String> get subclasses;
  external set subclasses(List<String> v);
  external String get useDocsFrom;
  external set useDocsFrom(String v);
  external List<num> get configParamIndices;
  external set configParamIndices(List<num> v);
  external factory DocInfo(
      {String heading,
      String subheading,
      String namespace,
      List<String> subclasses,
      String useDocsFrom,
      List<num> configParamIndices});
}

@JS()
external Function /*(...args: any[]) => void*/ doc(DocInfo info);
