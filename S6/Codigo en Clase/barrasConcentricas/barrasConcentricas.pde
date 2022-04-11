float vel = 1;
void setup(){
  size(500,500);
}

void draw(){
  //rectMode(CENTER);
  background(0);
  for(int i=0;i<36;i++){
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(10*i));
    rect(mouseX,-5,60,10);
    popMatrix();
    
  }

}
