int posX;
int posY;

void setup() {
  size(500, 200);
  posX = width/2;
  posY = height/2;
}

void draw() {
  background(0,255,0);
  if (mousePressed && mouseX>width/2) {
    posX += random(5);
    posY += random(5);
  }

  if (mousePressed && mouseX<width/2) {
    posX -= random(5);
    posY -= random(5);
  }

  circle(posX, posY, 50);
}
