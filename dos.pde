class Obras {
  PImage noche; 
  int pointillize = 35;
  Obras() {
    noche = loadImage ("lanoche.jpg");
  }
  void display() {
    noche= loadImage("lanoche.jpg");
    noche.resize(400, 400);
  }
  void Dibujar() { 
    image(noche, 400, 0);
    noche.resize(400, 400);
    int loc = mouseX + mouseY*noche.width;

    loadPixels();
    float r = red(noche.pixels[loc]);
    float g = green(noche.pixels[loc]);
    float b = blue(noche.pixels[loc]);
    noStroke();
    fill(r, g, b, 100);
    ellipse(mouseX, mouseY, pointillize, pointillize);
  }
}
