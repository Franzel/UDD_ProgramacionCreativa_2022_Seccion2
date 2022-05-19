Table table;
Dia dias[];

void setup() {
  size(800, 400);
  table = loadTable("temperaturas.csv", "header");
  println(table.getRowCount() + " filas en la tabla");
  dias = new Dia[table.getRowCount()]; //array de Días, su tamaño segun numero de filas en la tabla

  for (int i = 0; i < table.getRowCount(); i++) {
    int v0 = table.getInt(i, 0); //rescatar el numero de la 1a columna
    float v1 = table.getFloat(i, 1); //rescatar el numero de la 2a columna
    float v2 = table.getFloat(i, 2); //rescatar el numero de la 3a columna

    //rellenamos el array, creando un objeto de la clase con la información desde la tabla
    dias[i] = new Dia(30 + 25*i, height/2, v0, v1, v2); 
  }
}

void draw() {
  background(255);

  for (int i=0; i<dias.length; i++) {
    dias[i].dibujaMax();
    dias[i].dibujaMin();
    dias[i].dibujaDiff();
  }
}
