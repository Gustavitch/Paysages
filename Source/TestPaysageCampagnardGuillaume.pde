color couleurCiel = color(85,184,247);
color couleurMur = color(204,153,0);
color couleurToit = color(204,51,0);

Objet fond, maison;

void setup() {
  size(1024,768);
  fond = new Fond(0,0,couleurCiel);
  maison = new MaisonCampagnarde(100,100,2,5,couleurMur,2,2,2,couleurToit);
}

void draw() {
  fond.display(0);
  maison.display(0);
}

void keyPressed() {
  switch (key) {
     case ' ' : setup();
     default : break; 
  }
}













int rand(int valMin, int valMax, int niveau) {
  /* niveau est entre 1 et 5
   * rand renvoie un nombre entre valMin et valMax, petit si niveau=1
   * grand si niveau=5
   */
  return (int) (random((valMax - valMin + 1)/5.0) + valMin + (valMax - valMin + 1)/5.0 * (niveau - 1));
}

float rand(float valMin, float valMax, int niveau) {
  /* niveau est entre 1 et 5
   * rand renvoie un nombre entre valMin et valMax, petit si niveau=1
   * grand si niveau=5
   */
  return random((valMax - valMin)/5.0) + valMin + (valMax - valMin)/5.0 * (niveau - 1);
}
