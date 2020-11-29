//
// Simple passthrough fragment shader
//

varying vec2 pos;
uniform vec3 u_color;

uniform vec2 u_pos;
uniform vec2 u_lpos;

uniform float u_coneAngle;
uniform float u_strength;

const float zz =10.0;

void main()
{
	vec2 dis = pos - u_pos;
	vec2 look = normalize(u_lpos - u_pos);
	
	float str = 0.0;
	if(dot(normalize(dis), look) >= u_coneAngle){
		str = 1./(sqrt(dis.x * dis.x + dis.y * dis.y + u_strength*u_strength)-u_strength);
	}
	
	str = (float(str>=.3)*.3) + (float(str<.3) * str);
    gl_FragColor = vec4(u_color,str);
}
