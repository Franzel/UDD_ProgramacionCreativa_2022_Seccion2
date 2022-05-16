//CLASE BASICA

class Modulo {
  //variables de la clase
  float posX, posY;
  float tam;
  color col;

  //Constructor
  Modulo(float x, float y, float t) {
    posX = x;
    posY = y;
    tam = t;
  }

  //Metodos. En este caso, solo tenemos 1 que dibuja
  void dibuja() {
    fill(255);
    ellipse(posX, posY, tam, tam);
  }
}
