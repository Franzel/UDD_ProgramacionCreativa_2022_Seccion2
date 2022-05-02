float tam = 30;
boolean prendida = true;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  if (frameCount%15==0) {
    prendida=!prendida;
  }

  if (prendida == true) {
    fill(255, 0, 0);
    circle(width/2, height/2, tam);
  } else {
    rect(width/2, height/2, tam, tam);
    fill(255);
  }

}
