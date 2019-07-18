#ifdef GL_ES
precision mediump float;
#endif


uniform vec2 u_resolution;
uniform float u_time;
void main(){

	float pct = 0.0;
	vec2 st = gl_FragCoord.xy/u_resolution;

	vec2 tC = vec2(0.5)-st;
    pct = sqrt(tC.x*tC.x+tC.y*tC.y);
	pct = smoothstep(0.0, abs(sin(u_time)), pct);
	vec3 color = vec3(pct, abs(sin(u_time)), 0.3);
	gl_FragColor = vec4(color, 1.0);
}
