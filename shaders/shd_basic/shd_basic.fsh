//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_alpha;

void main()
{
	bool b_alpha = u_alpha != -1.0;
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	//(float(b_alpha) * u_alpha) + (float(!b_alpha) * color.a)
	gl_FragColor = v_vColour * vec4(color.rgb,(float(b_alpha) * u_alpha) + (float(!b_alpha) * color.a));	
	//gl_FragColor = v_vColour * vec4(color.rgb,color.a);
}
