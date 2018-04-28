@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.webgl_util;

import "package:js/js.dart";
import "dart:web_gl"
    show
        RenderingContext,
        ContextAttributes,
        Shader,
        Program,
        Buffer,
        Texture,
        Framebuffer,
        UniformLocation;
import "dart:html" show CanvasElement;
import "dart:typed_data" show Float32List, Uint16List;

@JS()
external RenderingContext createWebGLRenderingContext(
    ContextAttributes attributes);
@JS()
external RenderingContext createWebGLRenderingContextFromCanvas(
    CanvasElement canvas, ContextAttributes attributes);
@JS()
external dynamic/*=T*/ callAndCheck/*<T>*/(
    RenderingContext gl, dynamic/*=T*/ func());
@JS()
external void enableDebugWebGLErrorChecking(bool enabled);
@JS()
external void checkWebGLError(RenderingContext gl);
@JS()
external String getWebGLErrorMessage(RenderingContext gl, num status);
@JS()
external dynamic /*{}*/ getExtensionOrThrow(
    RenderingContext gl, String extensionName);
@JS()
external Shader createVertexShader(
    RenderingContext gl, String vertexShaderSource);
@JS()
external Shader createFragmentShader(
    RenderingContext gl, String fragmentShaderSource);
@JS()
external Program createProgram(RenderingContext gl);
@JS()
external void linkProgram(RenderingContext gl, Program program);
@JS()
external void validateProgram(RenderingContext gl, Program program);
@JS()
external Buffer createStaticVertexBuffer(RenderingContext gl, Float32List data);
@JS()
external Buffer createStaticIndexBuffer(RenderingContext gl, Uint16List data);
@JS()
external num queryMaxTextureSize(RenderingContext gl);
@JS()
external num getChannelsPerTexture();
@JS()
external Texture createTexture(RenderingContext gl);
@JS()
external void validateTextureSize(RenderingContext gl, num width, num height);
@JS()
external Framebuffer createFramebuffer(RenderingContext gl);
@JS()
external bool bindVertexBufferToProgramAttribute(
    RenderingContext gl,
    Program program,
    String attribute,
    Buffer buffer,
    num arrayEntriesPerItem,
    num itemStrideInBytes,
    num itemOffsetInBytes);
@JS()
external void bindTextureUnit(
    RenderingContext gl, Texture texture, num textureUnit);
@JS()
external void unbindTextureUnit(RenderingContext gl, num textureUnit);
@JS()
external UniformLocation getProgramUniformLocationOrThrow(
    RenderingContext gl, Program program, String uniformName);
@JS()
external UniformLocation getProgramUniformLocation(
    RenderingContext gl, Program program, String uniformName);
@JS()
external void bindTextureToProgramUniformSampler(
    RenderingContext gl,
    Program program,
    Texture texture,
    UniformLocation uniformSamplerLocation,
    num textureUnit);
@JS()
external void bindCanvasToFramebuffer(RenderingContext gl);
@JS()
external void bindColorTextureToFramebuffer(
    RenderingContext gl, Texture texture, Framebuffer framebuffer);
@JS()
external void unbindColorTextureFromFramebuffer(
    RenderingContext gl, Framebuffer framebuffer);
@JS()
external void validateFramebuffer(RenderingContext gl);
@JS()
external String getFramebufferErrorMessage(RenderingContext gl, num status);
@JS()
external List<num> /*Tuple of <num,num>*/ getTextureShapeFromLogicalShape(
    RenderingContext gl, List<num> logShape);
