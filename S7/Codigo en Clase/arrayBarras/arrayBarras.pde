float temperaturas [] = new float [100];
color misColores [] = new color [100];

void setup() {
  size(500, 300);
  for (int i=0; i<temperaturas.length; i++) {
    temperaturas[i] = random(40, 250);
    misColores[i] = color(random(255), random(255), random(255));
  }
  println(temperaturas);
}

void draw() {
  for (int i = 0; i<temperaturas.length; i++) {
    fill(misColores[i]);
    rect(100, 20*i, temperaturas[i], 10);
  }
}
