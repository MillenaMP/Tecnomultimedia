/*TP final
Millena Pasqualini
Legajo: 85096/9
Comision: 3
Aventura grafica con minijuego
*/

Aventura aventuraGrafica;
import processing.sound.*;

void setup(){
  size( 800, 600);
  surface.setResizable(true);
  aventuraGrafica = new Aventura(this);
}
void draw(){
  background(255);
  aventuraGrafica.draw();
}
void mousePressed(){
  println(mouseX+","+mouseY);
  aventuraGrafica.mousePressed();
}
void keyPressed(){
  aventuraGrafica.keyPressed();
}
