@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.gpgpu_context;

import "package:js/js.dart";
import "dart:web_gl"
    show
        RenderingContext,
        Buffer,
        Framebuffer,
        Texture,
        Program,
        UniformLocation;
import "webgl_types.dart"
    show
        WebGLLoseContextExtension,
        WebGL2DisjointQueryTimerExtension,
        WebGL1DisjointQueryTimerExtension,
        WebGLQuery;
import "dart:html" show ImageData, ImageElement, CanvasElement;
import "dart:typed_data" show Float32List;

@JS()
class GPGPUContext {
  // @Ignore
  GPGPUContext.fakeConstructor$();
  external RenderingContext get gl;
  external set gl(RenderingContext v);
  external dynamic /*{}*/ get textureFloatExtension;
  external set textureFloatExtension(dynamic /*{}*/ v);
  external dynamic /*{}*/ get colorBufferFloatExtension;
  external set colorBufferFloatExtension(dynamic /*{}*/ v);
  external dynamic /*{}*/ get getBufferSubDataAsyncExtension;
  external set getBufferSubDataAsyncExtension(dynamic /*{}*/ v);
  external WebGLLoseContextExtension get loseContextExtension;
  external set loseContextExtension(WebGLLoseContextExtension v);
  external dynamic /*WebGL2DisjointQueryTimerExtension|WebGL1DisjointQueryTimerExtension*/ get disjointQueryTimerExtension;
  external set disjointQueryTimerExtension(
      dynamic /*WebGL2DisjointQueryTimerExtension|WebGL1DisjointQueryTimerExtension*/ v);
  external Buffer get vertexBuffer;
  external set vertexBuffer(Buffer v);
  external Buffer get indexBuffer;
  external set indexBuffer(Buffer v);
  external Framebuffer get framebuffer;
  external set framebuffer(Framebuffer v);
  external Texture /*Texture|Null*/ get outputTexture;
  external set outputTexture(Texture /*Texture|Null*/ v);
  external Program /*Program|Null*/ get program;
  external set program(Program /*Program|Null*/ v);
  external get disposed;
  external set disposed(v);
  external get autoDebugValidate;
  external set autoDebugValidate(v);
  external factory GPGPUContext([RenderingContext gl]);
  external void dispose();
  external void enableAutomaticDebugValidation(bool enabled);
  external Texture createMatrixTexture(num rows, num columns);
  external void uploadPixelDataToTexture(
      Texture texture, dynamic /*ImageData|ImageElement|CanvasElement*/ pixels);
  external Texture createPackedMatrixTexture(num rows, num columns);
  external void deleteMatrixTexture(Texture texture);
  external void uploadMatrixToTexture(
      Texture texture, num rows, num columns, Float32List matrix);
  external void uploadMatrixToPackedTexture(
      Texture texture, num rows, num columns, Float32List matrix);
  external Float32List downloadMatrixFromTexture(
      Texture texture, num rows, num columns);
  external Promise<Float32List> downloadMatrixFromTextureAsync(
      Texture texture, num rows, num columns);
  external Float32List downloadMatrixFromRGBAColorTexture(
      Texture texture, num rows, num columns, num channels);
  external Float32List downloadMatrixFromPackedTexture(
      Texture texture, num rows, num columns);
  external get vertexAttrsAreBound;
  external set vertexAttrsAreBound(v);
  external Program createProgram(String fragmentShaderSource);
  external void deleteProgram(Program program);
  external void setProgram(Program /*Program|Null*/ program);
  external UniformLocation getUniformLocation(
      Program program, String uniformName,
      [bool shouldThrow]);
  external num getAttributeLocation(Program program, String attribute);
  external UniformLocation getUniformLocationNoThrow(
      Program program, String uniformName);
  external void setInputMatrixTexture(Texture inputMatrixTexture,
      UniformLocation uniformLocation, num textureUnit);
  external void setOutputMatrixTexture(
      Texture outputMatrixTexture, num rows, num columns);
  external void setOutputPackedMatrixTexture(
      Texture outputPackedMatrixTexture, num rows, num columns);
  external void setOutputMatrixWriteRegion(
      num startRow, num numRows, num startColumn, num numColumns);
  external void setOutputPackedMatrixWriteRegion(
      num startRow, num numRows, num startColumn, num numColumns);
  external void debugValidate();
  external void executeProgram();
  external void blockUntilAllProgramsCompleted();
  external getQueryTimerExtension();
  external getQueryTimerExtensionWebGL2();
  external getQueryTimerExtensionWebGL1();
  external Promise<num> runQuery(void queryFn());
  external WebGLQuery beginQuery();
  external void endQuery();
  external isQueryAvailable(query, queryTimerVersion);
  external Promise<num> pollQueryTime(WebGLQuery query);
  external getQueryTime(query, queryTimerVersion);
  external downloadMatrixDriverSetup(texture);
  external downloadMatrixDriverTeardown();
  external downloadMatrixDriver(texture, downloadAndDecode);
  external downloadMatrixDriverAsync(texture, downloadAndDecode);
  external setOutputMatrixTextureDriver(
      outputMatrixTextureMaybePacked, width, height);
  external setOutputMatrixWriteRegionDriver(x, y, width, height);
  external throwIfDisposed();
  external throwIfNoProgram();
}
