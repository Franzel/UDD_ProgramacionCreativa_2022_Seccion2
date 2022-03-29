
void setup() {
  size(500, 500);
}

void draw() {
  background(255, 0, 0);
  miDibujo(mouseX, mouseY, mouseX, mouseY);

  miDibujo(100, 100, 10, 0);
  miDibujo(200, 200, 30, 100);
  miDibujo(300, 300, 120, 200);
  miDibujo(300, 200, 50, 255);
}

void miDibujo(float x, float y, float tam, float c) {
  fill(c);
  circle(x, y, tam);
  rect(x-tam/2, y-tam/2, tam, tam);
  line(x-tam/2, y-tam/2, x+tam/2, y+tam/2);
  line(x-tam/2, y+tam/2, x+tam/2, y-tam/2);
}
