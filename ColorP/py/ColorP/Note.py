class Note:
 
  Note(int noteNum,int octaveNum, int velocityNum):
    note = noteNum
    octave = octaveNum
    vel = velocityNum
    name = NOTE_NAMES[noteNum]

  
  def draw():
    println(name, octave, vel);
  
