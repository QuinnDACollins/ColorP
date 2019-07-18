#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif


uniform vec2 u_location;
uniform float u_size;
uniform vec3 u_Col;
uniform float u_time;
uniform float u_vel;

float map(float value, float istart, float istop, float ostart, float ostop) {
    return ostart + (ostop - ostart) * ((value - istart) / (istop - istart));
  }
float easeOutQuad(float t){
    return (--t)*t*t+1;
}
void main() {

 float dist = distance(u_location, gl_FragCoord.xy);
 dist = map(dist, 0., u_size + u_vel, 1., 0.);
 gl_FragColor = vec4(u_Col, dist);
}
