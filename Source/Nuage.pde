public class Nuage extends Objet {
  
  ////////////////////////////////////////////////////////////////
  // Attributs
  ////////////////////////////////////////////////////////////////
  
  private color couleur;
  private int transparence;
  private int nbCercles;
  private int diametreCercles;  
  private float taille;
  private float rotationsAleatoires[];
  private float translationsAleatoires[];
  
  
  ////////////////////////////////////////////////////////////////
  // Constructeur
  ////////////////////////////////////////////////////////////////
      
  // couleur : couleur du nuage
  // A choisir aux alentours de
  // color(255) pour un nuage blanc
  // color(180) pour un nuage gris
  // color(90) pour un nuage très sombre
  // color(255, 223, 116) pour un nuage jaune orangé
  // color(255, 97, 18) pour un nuage rouge
  
  // taille :
  // 1 pour un petit nuage, 5 pour un gros nuage
  
  // complexite : quantité de cercles utilisés pour tracer le nuage
  // 1 : peu de cercles, 5 : beaucoup de cercles
  
  // transparence :
  // 1 pour un nuage assez transparent, 5 pour un nuage opaque
  
  Nuage(int x, int y, color couleur, int taille, int complexite, int transparence) {
    this.x = x;
    this.y = y;
    this.couleur = couleur;
    nbCercles = rand(500, 5000, complexite);
    diametreCercles = rand(5, 15, 6 - complexite);
    this.transparence = rand(10, 50, transparence);
    this.taille = rand(0.02, 5.0, taille);
    rotationsAleatoires = new float[nbCercles];
    translationsAleatoires = new float[nbCercles];
    for (int i = 0; i < nbCercles; i++) {
      rotationsAleatoires[i] = random(2*PI/nbCercles, 2*PI);
      translationsAleatoires[i] = random(0.3*diametreCercles, 0.6*diametreCercles);
    }
  }
  
  
  ////////////////////////////////////////////////////////////////
  // Méthode d'affichage
  ////////////////////////////////////////////////////////////////    
  
  void display(int mode) {
    pushMatrix();
    translate(x, y);
    scale(taille);
    noStroke();
    fill(color(red(couleur), green(couleur), blue(couleur), transparence));
    for (int i = 0; i < nbCercles; i++) {
      rotate(rotationsAleatoires[i]);
      translate(translationsAleatoires[i], 0);
      ellipse(0, 0, diametreCercles, diametreCercles);
    }
    popMatrix(); 
  }
   
}
