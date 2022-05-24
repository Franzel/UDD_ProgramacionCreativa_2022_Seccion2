Table tabla;
float temperaturas [];

void setup() {
  size(500, 300);
  tabla = loadTable("temperaturas.csv", "header");
  println(tabla.getRowCount());
  println(tabla.getColumnCount());

  temperaturas = new float[30];

  for (int i=0; i<tabla.getRowCount()-1; i++) {
    temperaturas[i] = tabla.getFloat(i, 1);
  }
}

void draw() {

  background(255);

  for (int i=0; i<tabla.getRowCount()-1; i++) {
    float tempMap = map(temperaturas[i],0,35,0,300);
    rect(20*i, height/2, 10, tempMap);
  }

  fill(255, 0, 0);
  //text(num, 100, 100);
  //rect(200, 200, num, num);
}
