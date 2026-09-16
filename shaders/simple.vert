#version 430 core

in layout (location = 0) vec3 position;
in layout (location = 1) vec4 color;

out vec4 outColor;

mat4 matrix = transpose(mat4(
1, 0, 0, 0,  
0, 1, 0, 0.3,    
0, 0, 1, 0,   
0, 0, 0, 1     
));   


void main()
{
    gl_Position = matrix * vec4(position.xy, position.z, 1.0f);
    outColor = color;
}