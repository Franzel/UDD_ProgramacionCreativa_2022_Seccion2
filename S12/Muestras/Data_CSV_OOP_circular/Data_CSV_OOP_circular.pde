Table table; //declaramos una tabla
Dia dias[]; //declaramos una array de la clase Dias

void setup() {
  size(800, 600);
  table = loadTable("temperaturas.csv", "header");//cargar la tabla a la memoria
  println(table.getRowCount() + " filas en la tabla");// imprimir a consola cantidad de filas
  dias = new Dia [ table.getRowCount() ]; //le damos el tamano al array de Días segun numero de filas en la tabla

  for (int i = 0; i < table.getRowCount(); i++) {
    int v0 = table.getInt(i, 0); //rescatar el numero de la 1a columna
    float v1 = table.getFloat(i, 1); //rescatar el numero de la 2a columna
    float v2 = table.getFloat(i, 2); //rescatar el numero de la 3a columna

    // En cada vuelta del for loop vamos rellenando el array con un objeto de la clase Dias
    // a cada objeto le damos informacion obtenida desde la tabla
    dias[i] = new Dia(width/2, height/2, v0, v1, v2, 12*i); 
  }
}

void draw() {
  background(255);

  for (int i=0; i<dias.length; i++) {
    dias[i].dibujaMax();
  }
}
