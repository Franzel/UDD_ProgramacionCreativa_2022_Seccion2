import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OOP_6 extends PApplet {

//Declaramos un array de la clase "Modulo". Se hace igual que un array tradicional.
Modulo[][] modulos = new Modulo[20][20];

public void setup() {
     
    rectMode(CENTER);
    
    //Este for loop bidimiensional los ordena en grilla. Apagar el de arriba al prender este para verlo mejor
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            //En este ejemplo, le pasamos solo valores random, pero esto se puede hacer en el orden que queramos
            modulos[i][j] = new Modulo(40 * i, 40 * j, 65, color(random(255), 65, 100, 200), floor(random(1, 10)));
            // modulos[i][j].vel = random( - 2,2);
        }
    }
}

public void draw() {
    background(255);
    
    //Invocamos el metodo dibuja() de cada objeto
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            modulos[i][j].dibuja();
            modulos[i][j].rota();
            float d = dist(mouseX, mouseY, modulos[i][j].posX, modulos[i][j].posY );
            modulos[i][j].tam = map(d,200,0,5,100);
            modulos[i][j].tam = constrain(modulos[i][j].tam, 0,100);
        }
    }
}

public void mouseDragged() {
    
    //randomizar la velocidad de cada objeto al apretar el mouse dentro de ellos
    for (int i = 0; i < modulos[0].length; ++i) {
        for (int j = 0; j < modulos[1].length; ++j) {
            if (dist(modulos[i][j].posX, modulos[i][j].posY, mouseX, mouseY) < 15) {
                modulos[i][j].vel += 1;
                modulos[i][j].col = color(255,0,200,100); //tambi'en podemos cambiar una variable dentro de cada objeto, anteponiendo un punto "."
                
            }
        }
    }
                
}
                
                
                
                
//CLASE BASICA

class Modulo {
    //variables de la clase
    float posX, posY;
    float tam;
    int col;
    int nRepeticiones;
    float rot, vel;
    
    
    //Constructor
    Modulo(float x, float y, float t, int c, int n) {
        posX = x;
        posY = y;
        tam = t;
        col = c;
        nRepeticiones = n;
        rot = 0;
        
    }
    
    //Metodos. En este caso, solo tenemos 1 que dibuja
    public void dibuja() {
        
        fill(col);
        stroke(col);
        noFill();
        //Aca usamos la variable int "nRepeticiones" para la cantidad de vueltas del for loop.
        //Entonces cada objeto va a dibujar una cantidad de repeticiones dada por lo que venga del sketch principal
        for (int i = 0; i < nRepeticiones; ++i) {
            pushMatrix();
            translate(posX, posY);
            rotate(radians(30*i + rot));
            rect(0,0, tam/4 + 3 * i, tam/4 + 3 * i );
            popMatrix();
        }
    }
    
    //Aca inventamos otro metodo. Este hace que la posX tirite cuadro a cuadro. 
    public void tirita() {
        posX+= random(-1,1);
    }

    public void rota(){
        rot += vel;
    }
} 
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OOP_6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
