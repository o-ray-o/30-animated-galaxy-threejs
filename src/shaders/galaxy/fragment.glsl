varying vec3 vColor;

void main()
{
    // Disc
    // float strength = distance(gl_PointCoord,vec2(0.5));
    // strength =1.0-step(0.5,strength);

    // Diffuse Point
    // float strength = distance(gl_PointCoord,vec2(0.5));
    // strength *= 2.0;
    // strength =1.9 - strength;

    // Light point s
    float strength = distance(gl_PointCoord,vec2(0.5));
    strength = 1.0 - strength;
    strength = pow(strength,10.0);

    vec3 color = mix(vec3(0.0),vColor,strength);

    gl_FragColor = vec4(vec3(strength),1.0);
}