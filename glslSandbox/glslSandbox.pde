PShader radialGrad;
void setup(){
  radialGrad = loadShader("radialGrad.frag");
  fullScreen(P2D);
}

void draw(){
  background(#000000);
  radialGrad.set("u_resolution", float(50), float(50));
  shader(radialGrad);
  rect(width/2, height/2, float(50), float(50));
}
