uniform mat4 textureTransform;
attribute vec2 inputTextureCoordinate;
attribute vec2 position;
varying   vec2 textureCoordinate;

void main() {
    gl_Position = position;
    textureCoordinate = (textureTransform * vec4(inputTextureCoordinate,1,1)).xy;
}