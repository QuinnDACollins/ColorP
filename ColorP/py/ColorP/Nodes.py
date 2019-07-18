class Nodes(self, String noteName, int octave, float nodeY, float nodeX, PVector col):
    def __init__(self):
        float x, y = nodeX, nodeY
        String NN = noteName
        int o = octave
        PVector c = col
        PShape node = createShape(ELLIPSE, 0, 0, 1000, 1000)
        float easeVel = 0
        float vel = 0
        float targVel =0 
        radialGrad = loadShader("shaders/radialGrad.frag")
        radialGrad.set("u_Col", c)
        radialGrad.set("u_time", millis()/1000.0)
        radialGrad.set("u_location", x, height - y)
        radialGrad.set("u_size", width* .0052)
            
        }
 
    def draw():
  
# (Kinda Pastel for all) : The Teddy
# C: Yellow 
# D: Green
# E: Light Blue
# F: ^ Little bit darker than this blue
# G: Purple
# A: Reddish-Pink
# B: Orange

        radialGrad.set("u_vel", vel)
        shader(radialGrad)
        pushMatrix()
        translate(x, y)
        shape(node)
        resetShader()
        popMatrix()
    
  



    def updateVel():
    float velDist = targVel - vel
    if(sustain == false || targVel > 0):
    vel += velDist * 0.7
    else:
        vel += velDist * 0.09;
   
   


  
