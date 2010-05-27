import interfascia.*;

class Console extends IFTextField{
  int x,y;
  
  Console() {
    super("Console",10,10);
  }
  
  Console(int tx, int ty, int tw, int th) {
    super("Console",tx,ty);
  }
  
  void execCommande() {
    println(getValue());
  }
  
}
