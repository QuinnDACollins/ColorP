class OrderedF implements IFormats {

  
  OrderedF() {
//This format implements a grid fo notes, each one will evnetally light up with a color when pressed.
    n = new Nodes[7][12]; 
    int ydx = 0;
    for (int y = 6; y > -1; y -= 1) {
      for (int x = 0; x < 12; x+= 1) {
         
        n[ydx][x] = new Nodes(NOTE_NAMES[x], y, y*height/7 + height/14, x*width/12 + width/24, teddy[x] );
         
        }
        ydx +=1;
      }
  }

  void draw() {
    for (int y = 0; y < 7; y += 1) {
      for (int x = 0; x < 12; x+= 1) {
        n[y][x].draw();
         n[y][x].updateVel();

      }
    }
  }
  
  void spark(int xdx, int ydx) {
   
     // n[ydx][xdx].splash = true;
  }
  
  void fade(int xdx, int ydx){
  
  }
}
