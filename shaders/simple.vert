#version 430 core

in layout (location = 0) vec3 position;
in layout (location = 1) vec4 color;

out vec4 outColor;

void main()
{
    gl_Position = vec4(position.xy, position.z, 1.0f);
    outColor = color;
}