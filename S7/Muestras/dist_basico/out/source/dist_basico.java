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

public class dist_basico extends PApplet {

public void setup() {
    
}

public void draw() {
    background(255);
    //la funcion map() trasnforma un rango en otro rango
    //en este caso tomamos el rango de mouseX, que va de 0 (minimo) a width (maximo)
    // ese rango de 0 a width, lo podemos transformar a un rango menor por ejemplo, de 0 a 100
    // ese rango 'mapeado' lo podemos guardar en una variable, que usamos para otra cosa
    // float miRango = map(mouseX, 0, width, 0, 100);

    // en este lo ponemos al medio, solo cambiamos el rango de salida
    //float miRango = map(mouseX, 0, width, width/2-100, width/2+100);

    // inlcuso el rango de salida puede ser invertido del original
    float miRango = map(mouseX, 0, width, width/2+100, width/2-100);

    //veamos los rangos en la consola
    println("mouseX: " + mouseX + "  miRango: " + miRango);

    //usamos el nuevo rango para la posicion en x de un rectangulo
    rect(miRango,100,50,50);
}

  public void settings() {  size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dist_basico" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
