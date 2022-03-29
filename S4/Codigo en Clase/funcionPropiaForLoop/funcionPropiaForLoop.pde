void setup() {
  size(500,500);
}

void draw() {
  background(255);
  for (int i=0; i<10 ; i++){
    miDibujo(mouseX*i, mouseY*i, 50, random(255));
  }

}

void miDibujo(float x, float y, float tam, float c) {
  fill(c);
  circle(x, y, tam);
  rect(x-tam/2, y-tam/2, tam, tam);
  line(x-tam/2, y-tam/2, x+tam/2, y+tam/2);
  line(x-tam/2, y+tam/2, x+tam/2, y-tam/2);
}
