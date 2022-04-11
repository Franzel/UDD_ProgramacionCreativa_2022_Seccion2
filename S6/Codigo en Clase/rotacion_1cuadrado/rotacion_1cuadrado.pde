float vel= 1;

void setup(){
  size(500,500);
}

void draw(){
  background(255,0,0);
  vel -= 5.2;
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(30));
  rect(0,0,50,50);
  popMatrix();
  
  rect(0,0,20,20);

}
