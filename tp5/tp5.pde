//Millena Pasqualini
//Comision 3
//Legajo: 85096/9
//Mini juego: esquivar los mateoritos
//Mover el ovni con las flechas del teclado 
// si un meteorito hace colision con el ovni perdes

Meteorito miMeteorito;
Meteorito [] arregloDeMeteoritos;
int cantMeteoritos = 6;
int estado = 1;

void setup(){
  size(1000,600);
  surface.setResizable(true);
  miImagen = loadImage("ovni.png");
  miMeteorito = new Meteorito();
   arregloDeMeteoritos = new Meteorito[cantMeteoritos];
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i] = new Meteorito();
  }
}

void draw(){
  background(#0D00A7);
      //imagen de el ovni:
  image( miImagen, UbicX,UbicY,146,72);
  miMeteorito.mover();
  miMeteorito.dibujar();
  miMeteorito.colision();
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i].actualizar();
}
  if( estado==1){
    PantallaInicio();
  }
  if (estado==2){
    miMeteorito.dibujar();
    miMeteorito.mover();
  }
  if (estado==3){
    PantallaPerdiste();
  }
}
 
void keyPressed(){
    Ovni ();
}

void mousePressed(){
  println(mouseX+","+mouseY);
  if(clickEnPantalla(width/2,height/2+200,50)&& estado == 1){
    estado = 2;
  } if(clickEnPantalla(width/2,height/2+200,87)&& estado == 3){
    estado = 1;
  

}
}
