float vel = 1;
void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(0);
  noFill();
  stroke(255);
  vel += 0.02;
  for(int i=0;i<30;i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(vel*i));
    fill(255,100,100,20);
    rect(0,0,10*i,10*i);
    popMatrix();
  }
}
