void setup() {
  size(600, 600);
}


void draw() {
  for (int i = 0; i<100; i++) {
    for (int j = 0; j<100; j++) {
      if (i%3==0 && j%3==0 ) {
        fill(255, 0, 0);//ROJO
      } else {
        fill(255);
      }
      circle(20*i, 20*j, 15);
    }
  }
}
