float tam = 100;

void setup(){
  size(500,500);
}

void draw(){
  background(255,0,0);
  rect(width/2, height/2, tam, tam);
}

void mousePressed(){
  tam = 200;
  if(mouseX<width/2){
    tam = 50;
  }else{
    tam = 20;
  }
}

void keyPressed(){
  tam = 250;
  if(key == 'a'){
    tam = 10;
  }
  if (key == 's'){
   tam = 2; 
  }
}
