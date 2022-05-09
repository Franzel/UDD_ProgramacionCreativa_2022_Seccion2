class Circulito {
  //variables
  float posX;
  float posY;
  float tam;
  color col;

  //Constructor
  Circulito(float x, float y, float t, color c) {
    posX = x;
    posY = y;
    tam = t;
    col = c;
  }

  //Metodos
  void dibuja(float cant) {
    fill(col);
    for (int i = 0; i<cant; i++) {
      circle (posX, posY, tam * i);
    }
  }

  void tiritaX(float vel) {
    posX += random(-vel, vel);
  }

  void tiritaY(float vel) {
    posY += random(-vel, vel);
  }
}
