int tamX;
int tamY;

void setup(){
  size(600, 600);
  tamX = 80;
  tamY = 128;
}

void draw(){
  background(255,0,0);
  noFill();
  
  //line(0,0,300,300);
  line(0, 0, width/2, height/2);
  line(0,0, width, height);
  ellipse(width/2, height/2, tamX, tamY );
  fill(0,255,0);
  rect(width/2 - tamX/2, height/2 - tamY/2, tamX,tamY);
  fill(0,0,255);
  rect(width-tamX, height-tamY, tamX, tamY);

}
