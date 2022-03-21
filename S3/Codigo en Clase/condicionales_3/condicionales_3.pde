int posX, posY;

void setup() {
  size(500, 500);
  posX = width/2;
  posY = height/2;
}

void draw() {
  background(255,0,0);
  //posX += 1;
  if(mousePressed && mouseX > width/2){
    posX = posX + 3;
  }
  
  if(mousePressed && mouseX < width/2){
    posX = posX - 3;
  }
  
  if(posX > width){
    posX = 0;
  }
  
  if(posX<0){
    posX = width;
  }
  circle(posX, posY, 30);
  println(posX);
}
