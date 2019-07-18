void checkRelationships(ArrayList<Note> np) {

  int[] dists = new int[np.size()-1];

  int[] major = {4, 3};
  int[] minor = {3, 4};

    for (int i = 0; i < np.size() -1; i++) {

    dists[i] = abs(np.get(i + 1).note - np.get(i).note); 
      if (dists.length == 2) {
        printArray(dists);
      if (compArr(dists, major) == true) {
        println(np.get(0).name + " Major");
      } else if (compArr(dists, minor) == true) {
        println(np.get(0).name + " Minor");
      }
    }
  }
}
