@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.webgl_types;

import "package:js/js.dart";
import "dart:web_gl" show RenderingContext;
import "package:func/func.dart";

@anonymous
@JS()
abstract class WebGLQuery {}

@anonymous
@JS()
abstract class WebGL2RenderingContext implements RenderingContext {
  external num get QUERY_RESULT;
  external set QUERY_RESULT(num v);
  external num get QUERY_RESULT_AVAILABLE;
  external set QUERY_RESULT_AVAILABLE(num v);
  external Func0<WebGLQuery> get createQuery;
  external set createQuery(Func0<WebGLQuery> v);
  external VoidFunc2<num, WebGLQuery> get beginQuery;
  external set beginQuery(VoidFunc2<num, WebGLQuery> v);
  external VoidFunc1<num> get endQuery;
  external set endQuery(VoidFunc1<num> v);
  external Func2<WebGLQuery, num, num> get getQueryParameter;
  external set getQueryParameter(Func2<WebGLQuery, num, num> v);
}

@anonymous
@JS()
abstract class WebGL2DisjointQueryTimerExtension {
  external num get TIME_ELAPSED_EXT;
  external set TIME_ELAPSED_EXT(num v);
  external num get GPU_DISJOINT_EXT;
  external set GPU_DISJOINT_EXT(num v);
  external factory WebGL2DisjointQueryTimerExtension(
      {num TIME_ELAPSED_EXT, num GPU_DISJOINT_EXT});
}

@anonymous
@JS()
abstract class WebGL1DisjointQueryTimerExtension {
  external num get TIME_ELAPSED_EXT;
  external set TIME_ELAPSED_EXT(num v);
  external num get QUERY_RESULT_AVAILABLE_EXT;
  external set QUERY_RESULT_AVAILABLE_EXT(num v);
  external num get GPU_DISJOINT_EXT;
  external set GPU_DISJOINT_EXT(num v);
  external num get QUERY_RESULT_EXT;
  external set QUERY_RESULT_EXT(num v);
  external Func0<dynamic /*{}*/ > get createQueryEXT;
  external set createQueryEXT(Func0<dynamic /*{}*/ > v);
  external VoidFunc2<num, WebGLQuery> get beginQueryEXT;
  external set beginQueryEXT(VoidFunc2<num, WebGLQuery> v);
  external VoidFunc1<num> get endQueryEXT;
  external set endQueryEXT(VoidFunc1<num> v);
  external VoidFunc1<WebGLQuery> get deleteQueryEXT;
  external set deleteQueryEXT(VoidFunc1<WebGLQuery> v);
  external Func1<WebGLQuery, bool> get isQueryEXT;
  external set isQueryEXT(Func1<WebGLQuery, bool> v);
  external Func2<WebGLQuery, num, num> get getQueryObjectEXT;
  external set getQueryObjectEXT(Func2<WebGLQuery, num, num> v);
  external factory WebGL1DisjointQueryTimerExtension(
      {num TIME_ELAPSED_EXT,
      num QUERY_RESULT_AVAILABLE_EXT,
      num GPU_DISJOINT_EXT,
      num QUERY_RESULT_EXT,
      Func0<dynamic /*{}*/ > createQueryEXT,
      VoidFunc2<num, WebGLQuery> beginQueryEXT,
      VoidFunc1<num> endQueryEXT,
      VoidFunc1<WebGLQuery> deleteQueryEXT,
      Func1<WebGLQuery, bool> isQueryEXT,
      Func2<WebGLQuery, num, num> getQueryObjectEXT});
}

@anonymous
@JS()
abstract class WebGLContextAttributes {
  external bool get alpha;
  external set alpha(bool v);
  external bool get antialias;
  external set antialias(bool v);
  external bool get premultipliedAlpha;
  external set premultipliedAlpha(bool v);
  external bool get preserveDrawingBuffer;
  external set preserveDrawingBuffer(bool v);
  external bool get depth;
  external set depth(bool v);
  external bool get stencil;
  external set stencil(bool v);
  external bool get failIfMajorPerformanceCaveat;
  external set failIfMajorPerformanceCaveat(bool v);
  external factory WebGLContextAttributes(
      {bool alpha,
      bool antialias,
      bool premultipliedAlpha,
      bool preserveDrawingBuffer,
      bool depth,
      bool stencil,
      bool failIfMajorPerformanceCaveat});
}

@anonymous
@JS()
abstract class WebGLLoseContextExtension {
  external void loseContext();
}
