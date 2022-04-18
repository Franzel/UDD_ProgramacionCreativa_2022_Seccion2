int nFilas = 30;
int nColumnas = 30;
float misNumeros [] [] = new float [nFilas] [nColumnas];
color misColores [] [] = new color [nFilas] [nColumnas];

void setup() {
  size(500, 500);
  for (int i=0; i<nFilas; i++) {
    for (int j = 0; j<nColumnas; j++) {
      misNumeros[i][j]= random(30);
      misColores [i][j] = color(random(255), random(255), random(255));
      println(misNumeros[i][j]);
    }
  }
}

void draw() {
  for (int i=0; i<nFilas; i++) {
    for (int j = 0; j<nColumnas; j++) {
      //fill(misColores [i][j]);
      //rect(30*i, 30*j, misNumeros[i][j], misNumeros[i][j]);
      miFigura(30*i, 30*j, misNumeros[i][j], misColores[i][j]);
    }
  }
}

void miFigura(float x, float y, float t, color c) {
  fill(c);
  rect(x, y, t, t);
}
