Table tabla;
Dia dias [];

void setup() {
  size(800, 400);
  tabla = loadTable("temperaturas.csv", "header");
  println(tabla.getRowCount());

  for (int i=0; i<tabla.getRowCount(); i++) {
    println(tabla.getFloat(i, 1));
  }

  dias = new Dia [tabla.getRowCount()];

  for (int i=0; i<dias.length; i++) {
    int v0 = tabla.getInt(i,0);
    float v1 = tabla.getFloat(i,1);
    float v2 = tabla.getFloat(i,2);
    
    float rangoMax = map(v2,15,32,100,255);
    
    color cmin = color(0,0,255);
    color cmax = color(rangoMax,0,0);
    
    dias[i] = new Dia(100 + 20*i, height/2, v0, v1, v2, cmin, cmax);
  }
}

void draw() {
  background(255);
  for (int i=0; i<dias.length; i++) {
    float d = dist(mouseX, mouseY, dias[i].posX, dias[i].posY);
    if(d < 15){
      dias[i].posY = height/2 - 5;
    }else{
      dias[i].posY = height/2;
    }
    dias[i].dibuja();
  }
}
