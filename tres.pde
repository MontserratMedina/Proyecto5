class Obras2 {
  PImage van; 
  int pointillize2 = 10;
  Obras2() {
    van = loadImage ("van.jpg");
  }
  void display() {
    van= loadImage("van.jpg");
    van.resize(400, 400);
  }
  void Dibujar() { 
    image(van, 400, 0);
    van.resize(400, 400);
    int x = int(random(van.width));
    int y = int(random(van.height));
    int loc = x + y*van.width;

    loadPixels();
    float r = red(van.pixels[loc]);
    float g = green(van.pixels[loc]);
    float b = blue(van.pixels[loc]);
    noStroke();

    fill(r, g, b, 100);
    rect(x, y, pointillize2, pointillize2);
  }
}
