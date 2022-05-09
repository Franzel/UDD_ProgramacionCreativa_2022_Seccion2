int nObjetos = 150;
Circulito misCirculos [] = new Circulito [nObjetos];

void setup() {
  size(500, 500); 
  for (int i =0; i<nObjetos; i++) {
    misCirculos[i] = new Circulito(random(width), random(height), random(20), color(255, 0, 0, 50), int(random(10)));
  }
}

void draw() {
  background(255);
  for (int i =0; i<nObjetos; i++) {
    misCirculos[i].dibuja();
    misCirculos[i].tiritaX(3);
    misCirculos[i].tiritaY(1);
  }
}

void mouseDragged() {
  for (int i =0; i<nObjetos; i++) {
    if (dist(mouseX, mouseY, misCirculos[i].posX, misCirculos[i].posY) < 20){
      misCirculos[i].col = color(10,255,240,100);
    }
  }
}
