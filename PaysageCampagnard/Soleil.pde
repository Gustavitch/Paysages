public class Soleil extends Objet {
  
  ////////////////////////////////////////////////////////////////
  // Attributs
  ////////////////////////////////////////////////////////////////
  
  private color couleur;
  private float diametre;
  private int nbRayons;
  private float tailleRayons;
  
  
  ////////////////////////////////////////////////////////////////
  // Constructeur
  ////////////////////////////////////////////////////////////////
      
  // couleur : couleur du soleil
  // A choisir aux alentours de
  // color(255, 255, 0) pour un soleil jaune
  // color(255, 200, 0) pour un soleil jaune orangé
  // color(255, 128, 0) pour un soleil orange
  
  // taille :
  // 1 pour un petit soleil, 5 pour un gros soleil
  
  // nbRayons :
  // 1 pour peu de rayons, 5 pour beaucoup de rayons
  
  // tailleRayons :
  // 1 pour pas de rayon, 2 pour des petits rayons, 5 pour des grands rayons
  
  Soleil(int x, int y, color couleur, int taille, int nbRayons, int tailleRayons) {
    this.x = x;
    this.y = y;
    this.couleur = couleur;
    diametre = rand(20, height/4, taille);
    this.nbRayons = rand(3, 40, nbRayons);
    this.tailleRayons = (tailleRayons == 1) ? 0 : rand(0.2*diametre, 4*diametre, tailleRayons);
  }
  
  
  ////////////////////////////////////////////////////////////////
  // Méthode d'affichage
  ////////////////////////////////////////////////////////////////    
  
  void display(int mode) {
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(couleur);
    ellipse(0, 0, diametre, diametre);
    for (int i = 0; i < nbRayons; i++) {
      rotate(2.0*PI/nbRayons);
      rayon(); 
    }
    popMatrix();
  }
  
  
  ////////////////////////////////////////////////////////////////
  // Autres méthodes
  //////////////////////////////////////////////////////////////// 
  
  private void rayon() {
    stroke(couleur);
    //strokeWeight(diametre*tailleRayons/100);
    line(0, 0.6*diametre, 0, tailleRayons);
  }
  
   
}
