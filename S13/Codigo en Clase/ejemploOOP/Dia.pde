class Dia{
  float posX, posY;
  float tMin, tMax;
  int dia;
  color colMin, colMax;
  
  Dia(float x, float y, int d, float tmin, float tmax, color cmin, color cmax){
    posX = x;
    posY = y;
    tMin = tmin;
    tMax = tmax;
    dia = d;
    colMin = cmin;
    colMax = cmax;
  }
  
  void dibuja(){
    
    fill(colMin);
    circle(posX, posY, tMin);
    fill(colMax);
    circle(posX, posY - 50, tMax);
    fill(0);
    textAlign(CENTER, CENTER);
    text(dia,posX, posY+50);
  }
}
