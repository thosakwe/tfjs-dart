@JS()
library tfjs.node_modules._tensorflow.tfjs_core.dist.kernels.webgl.texture_manager;

import "package:js/js.dart";
import "gpgpu_context.dart" show GPGPUContext;
import "dart:web_gl" show Texture;

@JS()
class TextureManager {
  // @Ignore
  TextureManager.fakeConstructor$();
  external get gpgpu;
  external set gpgpu(v);
  external get numUsedTextures;
  external set numUsedTextures(v);
  external get numFreeTextures;
  external set numFreeTextures(v);
  external get freeTextures;
  external set freeTextures(v);
  external get logEnabled;
  external set logEnabled(v);
  external get allocatedTextures;
  external set allocatedTextures(v);
  external get usedTextureCount;
  external set usedTextureCount(v);
  external factory TextureManager(GPGPUContext gpgpu);
  external Texture acquireTexture(List<num> /*Tuple of <num,num>*/ shapeRC,
      [num /*enum TextureType*/ texType]);
  external void releaseTexture(
      Texture texture, List<num> /*Tuple of <num,num>*/ shape,
      [num /*enum TextureType*/ texType]);
  external log();
  external num getNumUsedTextures();
  external num getNumFreeTextures();
  external void dispose();
}
