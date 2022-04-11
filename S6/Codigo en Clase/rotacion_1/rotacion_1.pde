
void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(255,0,0);

  for(int i=0;i<10;i++){
    pushMatrix();
    translate(50*i,100);
    rotate(radians(10*i));
    rect(0,0,20,20);
    popMatrix();
  }
}
