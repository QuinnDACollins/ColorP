class FileRec implements Receiver {
  int k;
  int octave;
  int note;
  int velocity;
  String noteName;
  boolean NoteOn;
  FileRec(Format f) {
  }
  void send(MidiMessage msg, long timeStamp) {

      ShortMessage sm = (ShortMessage)msg;
      int command = sm.getCommand();
      k = sm.getData1();
     // print(k /12+"\n");
      octave = (k /12) -1;
      note = k %12;
      velocity = sm.getData2();
      noteName = NOTE_NAMES[k%12];
     
      if (command == ShortMessage.NOTE_ON && velocity != 0) {
        n[octave][note].targVel = velocity;
        playing.add(new Note(note, octave, velocity));
        // println("NOTE ON:"+ noteName  +" "+ velocity + " "+ millis());
      } else if (command == ShortMessage.NOTE_ON && velocity == 0) {
         n[octave][note].targVel = velocity;
        f.fade(note, octave);
        for(int i = 0; i < playing.size(); i++){
          if(playing.get(i).note == note && playing.get(i).octave == octave){
            playing.remove(i);
          }
        }
      } else if (command == ShortMessage.NOTE_OFF) {
        n[octave][note].targVel = 0;
        for(int i = 0; i < playing.size(); i++){
          if(playing.get(i).note == note && playing.get(i).octave == octave){
            playing.remove(i);
          }
        }
      }
    

  }


  void close() {
  }
}
