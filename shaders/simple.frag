#version 430 core

in vec3 vertexNormal;
in vec4 outColor;

out vec4 fragColor;

void main()
{
    vec3 lightDirection = normalize(vec3(0.8, -0.5, 0.6));

    float lightIntensity = max(
        0.0,
        dot(vertexNormal, -lightDirection)
    );

    fragColor = vec4(
        outColor.rgb * lightIntensity,
        outColor.a);
}