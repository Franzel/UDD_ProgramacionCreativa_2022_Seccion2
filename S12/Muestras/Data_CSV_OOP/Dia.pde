class Dia {
  float posX, posY;
  float tMax, tMin;
  float diff;
  String dia;
  float largoTempMax, largoTempMin;
  float grosor = 20;

  Dia(float x, float y, int d, float min, float max) {
    posX = x;
    posY = y;
    tMax = max;
    tMin = min;
    dia = str(d);
    largoTempMax = map(max, 0, 45, 0, 150);
    largoTempMin = map(min, 0, 45, 0, 150);
    diff = max-min;
  }

  void dibujaMax() {

    //texto dia
    textSize(9);
    fill(0);
    text(dia, posX, posY+10);

    //temp max
    fill(255, 0, 0);
    rect(posX, posY, grosor, -largoTempMax);
    text(str(tMax), posX, posY - largoTempMax - 5);
  }

  void dibujaMin() {
    //texto temp min
    fill(0, 0, 255);
    rect(posX, posY, grosor, -largoTempMin);
    fill(255);
    text(str(tMin), posX, posY - largoTempMin - 5);

    fill(220, 200, 80);
    ellipse(posX + grosor/2, posY-largoTempMax-30, diff, diff); //representamos la variacion segun el tamaño de un circulo
  }

  void dibujaDiff() {
    //diferencia max-min
    fill(220, 200, 80);
    ellipse(posX + grosor/2, posY-largoTempMax-30, diff, diff); //representamos la variacion segun el tamaño de un circulo
  }
}
