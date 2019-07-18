class Nodes {
  float x, y;
  String NN;
  int o;
  PVector c;
  PShader radialGrad;
  PShape node;
  float easeVel;
  float vel;
  float targVel;
  Nodes(String noteName, int octave, float nodeY, float nodeX, PVector col) {
    y = nodeY;
    x = nodeX;
    o = octave;
    NN = noteName;

    c = col;
    node = createShape(ELLIPSE, 0, 0, 1000, 1000);
    
    radialGrad = loadShader("shaders/radialGrad.frag");
  
    radialGrad.set("u_Col", c);
    radialGrad.set("u_time", millis()/1000.0);
    radialGrad.set("u_location", x, height - y);
    radialGrad.set("u_size", width* .0052);
    
  }
 
  void draw() {
/*
(Kinda Pastel for all) : The Teddy
C: Yellow 
D: Green
E: Light Blue
F: ^ Little bit darker than this blue
G: Purple
A: Reddish-Pink
B: Orange
*/


  radialGrad.set("u_vel", vel);
  shader(radialGrad);
  pushMatrix();
  translate(x, y);
  shape(node);
  resetShader();
  popMatrix();
  
  
  
    
}



void updateVel(){
   float velDist = targVel - vel;
   if(sustain == false || targVel > 0){
   vel += velDist * 0.7;
   }else{
     vel += velDist * 0.09;
   }
   
}

  
  

  }
