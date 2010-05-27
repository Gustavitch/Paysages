class Liste_Objets {
  ArrayList liste;
  
  Liste_Objets() {
    liste = new ArrayList();
  }
  
  void add(Object o) {
    liste.add(o);
  }
  
  void remove(Object o) {
    liste.remove(o);
  }
  
  int size() {
    return liste.size();
  }
  
  void display(int mode) {
    Objet tmp;
    for(int i=0; i<liste.size(); i++) {
      tmp = (Objet)liste.get(i);
      tmp.display(mode);
    }
  }
}
