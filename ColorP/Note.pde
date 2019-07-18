class Note{
  int note, octave, vel;
  String name;
  Note(int noteNum,int octaveNum, int velocityNum){
    note = noteNum;

    octave = octaveNum;
    vel = velocityNum;
    name = NOTE_NAMES[noteNum];
  }
  
  void draw(){
    println(name, octave, vel);
  }
}
