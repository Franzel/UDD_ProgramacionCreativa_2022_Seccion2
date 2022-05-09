Circulito Uno = new Circulito(100, 200, 20, color(255,0,0,50));
Circulito Dos = new Circulito(300, 80, 40, color(0,150,40,50));

void setup(){
  size(500,500);  
}

void draw(){
  background(255);
  Uno.dibuja(10);
  Uno.tiritaX(5);
  Uno.tiritaY(10);
  
  Dos.dibuja(3);
  Dos.tiritaX(1);
  Uno.tiritaY(2);
}
