@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.gpgpu_util;

import "package:js/js.dart";
import "dart:web_gl"
    show ContextAttributes, RenderingContext, Shader, Buffer, Texture, Program;
import "dart:html" show CanvasElement, ImageData, ImageElement, VideoElement;
import "dart:typed_data" show Float32List;

@JS()
external ContextAttributes getWebGLContextAttributes();
@JS()
external RenderingContext createWebGLContext([CanvasElement canvas]);
@JS()
external Shader createVertexShader(RenderingContext gl);
@JS()
external Buffer createVertexBuffer(RenderingContext gl);
@JS()
external Buffer createIndexBuffer(RenderingContext gl);
@JS()
external Texture createMatrixTexture(
    RenderingContext gl, num rows, num columns);
@JS()
external Texture createColorMatrixTexture(
    RenderingContext gl, num rows, num columns);
@JS()
external Texture createPackedMatrixTexture(
    RenderingContext gl, num rows, num columns);
@JS()
external bool bindVertexProgramAttributeStreams(
    RenderingContext gl, Program program, Buffer vertexBuffer);
@JS()
external void uploadPixelDataToTexture(RenderingContext gl, Texture texture,
    dynamic /*ImageData|ImageElement|CanvasElement|VideoElement*/ pixels);
@JS()
external void uploadMatrixToTexture(RenderingContext gl, Texture texture,
    num rows, num columns, Float32List matrix, num numChannels);
@JS()
external void uploadMatrixToPackedTexture(RenderingContext gl, Texture texture,
    num rows, num columns, Float32List matrix);
@JS()
external Promise<Float32List> downloadMatrixFromOutputTextureAsync(
    RenderingContext gl,
    dynamic getBufferSubDataAsyncExtension,
    num rows,
    num columns);
@JS()
external Float32List downloadMatrixFromOutputTexture(
    RenderingContext gl, num rows, num columns);
@JS()
external Float32List downloadMatrixFromRGBAColorTexture(
    RenderingContext gl, num rows, num columns, num channels);
@JS()
external Float32List downloadMatrixFromPackedOutputTexture(
    RenderingContext gl, num rows, num columns);
