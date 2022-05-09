class Circulito {
  //variables
  float posX;
  float posY;
  float tam;
  color col;
  int cant;

  //Constructor
  Circulito(float x, float y, float t, color c, int q) {
    posX = x;
    posY = y;
    tam = t;
    col = c;
    cant = q;
  }

  //Metodos
  void dibuja() {
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
