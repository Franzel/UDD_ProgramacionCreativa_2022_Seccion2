float temperaturas [] = new float [36];
color misColores [] = new color [36];

void setup() {
  size(500, 500);
  for (int i=0; i<temperaturas.length; i++) {
    temperaturas[i] = random(40, 80);
    misColores[i] = color(random(255), random(255), random(255));
  }
  println(temperaturas);
}

void draw() {
  background(0);
  for (int i = 0; i<temperaturas.length; i++) {
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(10*i));
    fill(misColores[i]);
    rect(100, 0, temperaturas[i], 10);
    text(temperaturas[i], 100 + temperaturas[i], 10);
    popMatrix();
  }
}

void mousePressed(){
  randomizar();
}

void randomizar(){
  for (int i=0; i<temperaturas.length; i++) {
    temperaturas[i] = random(40, 80);
    misColores[i] = color(random(255), random(255), random(255));
  } 
}
