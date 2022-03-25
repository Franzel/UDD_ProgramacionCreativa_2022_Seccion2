float tam;
color miColor;


void setup() {
  size(500, 500);
  tam = 100;
  miColor = color(0);
}
void draw() {
  background(255);
  fill(miColor);
  ellipse(width/2, height/2, tam, tam);
}

void mousePressed() {
  miColor = color(255, 0, 0);
}

void mouseDragged() {
  miColor = color(0, 255, 0);
}

void keyPressed() {
  if (key== 'a') {
    miColor = color(0, 0, 255);
  }
  if (key== 's') {
    miColor = color(255, 255, 0);
  }
}
