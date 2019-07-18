


playing = []
f = OrderedF
def setup():
  fullScreen(P2D)
 
  NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
  teddy = [(1.0,1.0,0.72), (1.0,1.0,0.82), (0.72,1.0,0.75), (0.82,1.0,0.85), (0.84,0.93,0.97), (0.28,0.43,0.74), (0.28,0.43,0.74), (0.73,0.66,0.89), (1.0, 1.0, 1.0), (1,0.8,0.95), (1.0,1.0, 1.0), (0.87,0.69,0.48)] 



  nh = noteHandler()




def draw(): 
  
    
    
    f.draw()
    
    #if(len(playing) > 1):
        #checkRelationships(playing);
    
    
def keyPressed():
    if key == ' ':
        sustain = true;
        
    
    
def keyReleased():
    if(key == ' '):
        sustain = false;
    
    
