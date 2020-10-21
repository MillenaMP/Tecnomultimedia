//Millena Pasqualini
//Comision 3
//Legajo: 85096/9
//Mini juego: esquivar los meteoritos
//Mover el ovni con las flechas del teclado 
// si un meteorito hace colision con el ovni perdes
/* Este juego no reemplaza ninguna pantalla sino que es la que causa el problema 
original de mi aventura grafica*/
import ddf.minim.*;

Juego juego;
Minim minim;
AudioPlayer music;


void setup(){
  size(1000,600);
  surface.setResizable(true);
  minim = new Minim(this);
  music = minim.loadFile("musica.mp3");
  music.loop();
  juego = new Juego();
 
}

void draw(){
  background(#0D00A7);
  juego.draw();    
}
 
void keyPressed(){
   juego.keyPressed();
}

void mousePressed(){
  println(mouseX+","+mouseY);
  juego.mousePressed();
}
