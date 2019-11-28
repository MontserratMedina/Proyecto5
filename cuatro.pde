class Obras3 {
  PImage ciudad; 
  int pointillize2 = 2;
  Obras3() {
    ciudad = loadImage ("ciudad.jpg");
  }
  void display() {
    ciudad= loadImage("ciudad.jpg");
    ciudad.resize(400, 400);
  }
  void Dibujar() { 
    image(ciudad, 400, 0);
    ciudad.resize(400, 400);
    int x = int(random(ciudad.width));
    int y = int(random(ciudad.height));
    int x1 = int(ciudad.width);
    int y1 = int(ciudad.height);
    int loc = x + y*ciudad.width;

    loadPixels();
    float r = red(ciudad.pixels[loc]);
    float g = green(ciudad.pixels[loc]);
    float b = blue(ciudad.pixels[loc]);
    noStroke();

    fill(r, g, b, 100);
    triangle(mouseX, mouseY, x1, y1, pointillize2, pointillize2);
  }
}
