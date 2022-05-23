String miTexto;

void setup() {
  size(500, 500);
  miTexto = "shao";
}
void draw() {
  background(255);
  if(mousePressed){
    miTexto = "shao";
  }else{
    miTexto = "hola";
  }
  
  textSize(100);
  
  textAlign(RIGHT);
  fill(255, 0, 0);
  text(miTexto, mouseX, mouseY);

  textAlign(LEFT);
  fill(0);
  text(miTexto, mouseX, mouseY);

  textAlign(CENTER);
  fill(0,255,0);
  text(miTexto, mouseX, mouseY + 100);
}
