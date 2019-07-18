class noteHandler {

  Format f;

  Sequencer playMid;
  Receiver readMid;
  Receiver fRec = new FileRec(f);
  Receiver keebRec;
  Transmitter seqTrans;
  noteHandler() {

    try {
      File selection = new File(dataPath("yoshi.mid"));
      playMid = MidiSystem.getSequencer();
      Sequence fileSequence = MidiSystem.getSequence(selection);
      playMid.setSequence(fileSequence);
      seqTrans = playMid.getTransmitter();
      seqTrans.setReceiver(fRec);
      readMid = MidiSystem.getReceiver();

      playMid.open();


      playMid.start();
    }

    catch(Exception e)
    {
      MidiDevice device;
      MidiDevice.Info[] infos = MidiSystem.getMidiDeviceInfo();
      for (int i = 0; i < infos.length; i++) {
        try {
          device = MidiSystem.getMidiDevice(infos[i]);
          //does the device have any transmitters?
          //if it does, add it to the device list
          System.out.println(infos[i]);

          for (int t = 0; t < device.getTransmitters().size(); t++) {
            //create a new receiver
            device.getTransmitters().get(t).setReceiver(fRec);
          }
          Transmitter trans = device.getTransmitter();
          trans.setReceiver(fRec);

          //open each device
          device.open();
        }  
        catch (Exception d) {
        }
      }
    }
  }
}
