float tam = 30;
boolean prendida = false;

void setup() {
  size(600, 600);
}


void draw() {
  println(frameCount);
  background(255);
  
  if(frameCount%60 == 0){
    fill(255,0,0);
    tam = 100;
  }else{
    fill(255);
    tam=30;
  }
  //circle(frameCount, height/2, tam);
  
  circle(width/2, height/2, tam);
  
}
