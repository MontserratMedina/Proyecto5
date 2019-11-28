import processing.sound.*;

flujoPantallas una;
Obras noche;
Obras2 van;
Obras3 ciudad;

SoundFile sonido;


void setup() {
  sonido= new SoundFile(this,"song1.mp3");
  sonido.play();
  sonido.loop();
  size(800, 400);
  una= new flujoPantallas();
  noche= new Obras();
  van=new Obras2();
  ciudad= new Obras3();
  background(0);
  smooth();
}

void draw() {
  una.display();

}
void keyPressed() {
  if (key=='a'||key=='A') {
    una.cambioPantalla();
  }
}
