varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPos;
uniform float iter;


void main()
{
	float alphaWave =  0.5;
	alphaWave += 0.4*sin(radians(iter*10.0));
	
	vec4 v_alteredColor = vec4(v_vColour.r,v_vColour.g,v_vColour.b,alphaWave);
	
    gl_FragColor = v_alteredColor * texture2D( gm_BaseTexture, v_vTexcoord );
}
