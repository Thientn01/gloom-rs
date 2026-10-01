#version 430 core

in layout (location = 0) vec3 position;
in layout (location = 1) vec3 normal;
in layout (location = 2) vec4 color;

out vec3 vertexNormal;
out vec4 outColor;

layout (location = 3) uniform mat4 matrix;
layout(location = 4) uniform mat4 modelMatrix;

mat4 matrix0 = transpose(mat4(
1, 0, 0, 0,  
0, 1, 0, 0.3,    
0, 0, 1, 0,   
0, 0, 0, 1     
));   


void main()
{
    gl_Position = matrix * vec4(position.xy, position.z, 1.0f);
    outColor = color;
    vertexNormal = normalize(mat3(modelMatrix) * normal);
}