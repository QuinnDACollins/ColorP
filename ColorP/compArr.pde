boolean compArr(int[] a, int[] b){
  boolean same;
  
  for(int i = 0; i  < b.length; i++){
    if(a[i] != b[i]){
      return false;
    }
    
  }
  return true;
}
