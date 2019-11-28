class flujoPantallas {
  int estado;
  PImage por;
  PImage inst;
  flujoPantallas() {
    this.estado = 0;
  }
  void display() {
    switch(this.estado) {
    case 0:
      por = loadImage ("a1.jpg");
      image(por, 0, 0);

      break;

    case 1:
      inst = loadImage ("instA.jpg");
      image(inst, 0, 0);
      break;
    case 2:
      noche.display();
      noche.Dibujar();
      fill(255);
      textSize(20);
      text("La noche estrellada- Van Gogh(1889) ", 400, 20);
      textSize(15);
      text("Pasa el cursor por la pantalla negra,termine de rellenar la obra ", 150, 380);
      break;

    case 3:
      ciudad.display();
      ciudad.Dibujar();
      fill(255);
      textSize(20);
      text("Terrazade café por la noche(1888) ", 400, 20);
      textSize(15);
      text("Este ejercicio será más abstracto, cuando pases el cursor ", 150, 350);
      text("obtendrás la paleta de colores y obtendrás un resultado interesante ", 150, 365);
      text("Trata de ir de las esquinas al centro ", 150, 380);
      break;

    case 4:
      van.display();
      van.Dibujar();
      fill(0);
      textSize(20);
      text("Autoretrato(1889) ", 400, 20);
      fill(255);
      textSize(15);
      text("Observa como automaticamente se dibuja este Autoretrato", 150, 360);
      break;
    }
  }

  void cambioPantalla() {
    estado++;
    if (estado==1) {
      background(10);
    }
    if (estado==2) {
      background(10);
    }
    if (estado==3) {
      background(10);
    }
    if (estado==4) {
      background(10);
    }
    
    if (estado>4) {
      estado = 0;
    }
  }
}
