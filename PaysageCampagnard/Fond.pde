public class Fond extends Objet {
  
  ////////////////////////////////////////////////////////////////
  // Attributs
  ////////////////////////////////////////////////////////////////
  
  private color couleur;
  
  
  ////////////////////////////////////////////////////////////////
  // Constructeur
  ////////////////////////////////////////////////////////////////
  
  // couleur : couleur du ciel
  // A choisir aux alentours de
  // color(113, 185, 255) pour un ciel bleu
  // color(197, 216, 234) pour un ciel gris clair
  // color(81, 98, 113) pour un ciel d'orage
  // color(26, 69, 111) pour un ciel de nuit
  
  // variation :
  // 1 pour un ciel uni, 5 pour un ciel très varié
  // NON IMPLEMENTE
  
  Fond(int x, int y, color couleur, int variation) {
    this.x = x;
    this.y = y;
    this.couleur = couleur;
  }
  
  
  ////////////////////////////////////////////////////////////////
  // Méthode d'affichage
  ////////////////////////////////////////////////////////////////    
  
  void display(int mode) {
    background(couleur);
  }
   
}
