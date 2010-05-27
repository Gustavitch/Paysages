public class Fond extends Objet {
  private color fondColor;

  Fond(int x, int y, color fondColor) {
    this.x = x;
    this.y = y;
    this.fondColor = fondColor;
  }
  
  void display(int mode) {
    background(fondColor);
  }
}
