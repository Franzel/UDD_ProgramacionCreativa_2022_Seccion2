void setup() {
  size(500,500);
}

void draw() {
  background(255);
  noFill();
  
  for (int i = 0; i<100; i++) {
    //rect(20 * i, 20 * i, 7, 7);
    stroke(10 * i);
    //circle(width/2, height/2, 20*i);
    line(10*i, 0, 50 * i , height);
  }
}
