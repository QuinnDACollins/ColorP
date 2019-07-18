import javax.sound.midi.*;
import java.io.*;


File selection;
noteHandler nh;
IFormats f;
 PVector screen;
 PShape tq;
ArrayList<Note> playing = new ArrayList<Note>();
//Each index in array = 1 half step
String[] NOTE_NAMES = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
Nodes[][] n;
PVector[] teddy = {new PVector(1.0,1.0,0.72), new PVector(1.0,1.0,0.82), new PVector(0.72,1.0,0.75), new PVector(0.82,1.0,0.85), new PVector(0.84,0.93,0.97), new PVector(0.28,0.43,0.74), new PVector(0.28,0.43,0.74), new PVector(0.73,0.66,0.89), new PVector(1.0, 1.0, 1.0), new PVector(1,0.8,0.95), new PVector(1.0,1.0, 1.0), new PVector(0.87,0.69,0.48)}; 
boolean sustain;
void setup(){
  fullScreen(P2D);
  f = new OrderedF();
  nh = new noteHandler();


  
}

void draw() {
background(#000000);




//shape(tq);

 f.draw();
 
 if(playing.size() > 1){
checkRelationships(playing);
 }
}

void keyPressed(){
  if(key == ' '){
    sustain = true;
  }
}

void keyReleased(){
  if(key == ' '){
    sustain = false;
  }
}
