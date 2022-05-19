class Dia {
  float posX, posY;
  float tMax, tMin;
  float diff;
  String dia;
  float largoTempMax, largoTempMin;
  float grosor = 10;
  float rot;
  float radio = 100;

  Dia(float x, float y, int d, float min, float max, float a) {
    posX = x;
    posY = y;
    tMax = max;
    tMin = min;
    dia = str(d);
    largoTempMax = map(max, 0, 45, 0, 150);
    largoTempMin = map(min, 0, 45, 0, 150);
    diff = max-min;
    rot = a;
  }

  void dibujaMax() {

    pushMatrix();
    translate(posX, posY);
    rotate(radians(rot));

    //texto dia
    textSize(10);
    textAlign(RIGHT);
    fill(0);
    text(dia, 95, 3);

    //temp max
    fill(255, 0, 0);
    rect(radio, -grosor/2, largoTempMax, grosor);
    textAlign(LEFT);
    text(str(tMax), radio + largoTempMax + 5, 3);

    //temp min
    fill(0, 200, 255);
    rect(radio, -grosor/2, largoTempMin, grosor);
    fill(255);
    text(str(tMin), radio + largoTempMin + 5, 3);

    //diff
    fill(220, 200, 80);
    ellipse(radio + largoTempMax + 35, 0, diff, diff); //representamos la variacion segun el tamaño de un circulo

    popMatrix();
  }
}
