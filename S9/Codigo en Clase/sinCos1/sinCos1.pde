void setup() {
  size(500, 500);
}

void draw() {
  circle(width/2, height/2, 5);
  //circle(width/2 + 100*cos(radians(90)), height/2 + 100*sin(radians(90)), 30);

  for (int i=0; i<36; i++) {
    circle(width/2 + 100*cos(radians(i*10)), height/2 + 100*sin(radians(i*10)), 30);
  }
}
