class KeebRec implements Receiver {
  int k;
  int octave;
  int note;
  int velocity;
  String noteName;
  boolean NoteOn;
  KeebRec(Format f) {
  }


void send(MidiMessage msg, long timeStamp){

      octave = 4;
      velocity = 127;

      switch(key){
        case 'a':
        note = 1;
        break;

        case 'w':
        note = 2;
        break;

        case 's':
        note = 3;
        break;

        case 'e':
        note = 4;

        break;

        case 'd':
        note = 5;
        break;

        case 'f':
        note = 6;
        break;

        case 't':
        note = 7;
        break;

        case 'g':
        note = 8;
        break;

        case 'y':
        note = 9;
        break;

        case 'h':
        note = 10;
        break;

        case 'u':
        note = 11;
        break;

        case 'j':
        note = 12;
        break;


      }
      //println(NOTE_NAMES[note]);
       playing.add(new Note(note, octave, velocity));
    }



  void close() {
  }
}
