void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  textSize(14);
  fill(0);
  textAlign(LEFT);
  String t = "texto en varias y multiples lineas";
  //para caja de texto, simplemente agregar el tamaño de la caja luego de la posición
  text(t, 100,100, 80, 100); 
}
