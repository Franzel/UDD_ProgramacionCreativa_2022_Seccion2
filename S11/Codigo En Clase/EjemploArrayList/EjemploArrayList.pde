
ArrayList<Modulo> modulos = new ArrayList<Modulo>();

void setup() {
  size(500, 500);
  //for (int i= 0; i < 100; i++) {
  //  Modulo temp = new Modulo(100, 100, 100);
  //  modulos.add(temp);
  //}
}

void draw() {

  background(0);
  for (int i= 0; i < modulos.size(); i++) {
    Modulo temp = modulos.get(i);
    temp.dibuja();
  }

  println(modulos.size());
}

void mouseDragged() {

  Modulo temp = new Modulo(mouseX, mouseY, 100);
  modulos.add(temp);
  if (modulos.size()>500) {
    modulos.remove(0);
  }
}
