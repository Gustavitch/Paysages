import interfascia.*;

class Console extends IFTextField{
  int x,y;
  
  Console() {
    super("Console",10,10,width-20);
  }
  
  Console(int tx, int ty, int tw) {
    super("Console",tx,ty,tw);
  }
  
  void parseArgs(ArrayList args, ArrayList noms, ArrayList valeurs) {
    String tmp[];
    String arg;
    for(int i=0; i<args.size(); i++) {
      arg = (String) args.get(i);
      tmp = arg.split("=");
      if (tmp.length != 2) {
        println("Error parsing args");
      } else {
        noms.add(tmp[0]);
        valeurs.add(tmp[1]);
      }
    } 
  }
  
  void execCommande() {
    String composants[] = getValue().split(" ");
    if(composants.length > 0) {
      String commande = composants[0];
      ArrayList args = new ArrayList();
      for(int i=1; i<composants.length; i++) {
        args.add(composants[i]);
      }
      ArrayList noms = new ArrayList();
      ArrayList valeurs = new ArrayList();
      
      parseArgs(args,noms,valeurs);
    } 
  }
}
