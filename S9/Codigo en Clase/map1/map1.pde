void setup() {
  size(800, 150);
}


void draw() {
  //background(mouseX, 0,0);
  background(map(mouseX, 0, width, 0, 255), 0, 0);
  println(mouseX);
  circle(mouseX, height/2 - 40, 30); //rango completo
  circle(map(mouseX,0,width,0,100), height/2, 30); //rango mapeado
}
