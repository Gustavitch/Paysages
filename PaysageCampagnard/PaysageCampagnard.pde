Objet fond, nuage;

void draw() {
  fond.display(0);
  nuage.display(0);
}


void setup() {
  size(1024, 768);
  fond = new Fond(0, 0, color(113, 185, 255), 0);
  nuage = new Nuage(200, 200, color(255), 5, 1, 3);
}


void keyPressed() {
  switch (key) {
    case ' ' : 
      setup();
      break;
    default :
      break;    
  } 
}
  

// A partir d'un niveau entre 1 et 5, random retourne un nombre aléatoire
// tiré entre valMin et valMax, petit si niveau = 1, grand si niveau = 5
int rand(int valMin, int valMax, int niveau) {
  return (int) (random((valMax - valMin + 1)/5.0) + valMin + (niveau - 1)*(valMax - valMin + 1)/5.0); 
}

float rand(float valMin, float valMax, int niveau) {
  return random((valMax - valMin)/5.0) + valMin + (niveau - 1)*(valMax - valMin)/5.0; 
}
