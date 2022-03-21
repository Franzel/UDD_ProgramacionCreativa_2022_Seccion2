int tam = 50;
color miColor;

void setup() {
  size(500, 500);
  miColor = color(255, 0, 0);
}

void draw() {
  background(0);

  if (mouseX>width/2) {
    miColor = color(0, 0, 255);
    tam = 100;
    if (mousePressed) {
      miColor = color(255, 255, 0);
    }
  } else {
    miColor = color(255, 0, 0);
    tam=30;
  }




  fill(miColor);
  circle(width/2, height/2, tam);
}
