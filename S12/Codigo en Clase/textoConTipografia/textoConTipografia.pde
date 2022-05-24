PFont miFuente; //paso 1

void setup(){
  size(500,500);
  miFuente = createFont("Flama.otf", 24, false);
}

void draw(){
  background(0);
  textFont(miFuente, 100);
  text("hola", mouseX, mouseY);
}
