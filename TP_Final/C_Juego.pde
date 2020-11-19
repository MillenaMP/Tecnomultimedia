//declaro mi clase juego
class Juego{
  //atributos
  Meteorito [] arregloDeMeteoritos;
  int cantMeteoritos = 6;
  int estadoJuego;
  Ovni miOvni;

  
  //constructor
  Juego(){
  //constructor
  miOvni = new Ovni();
  estadoJuego = 1;
   arregloDeMeteoritos = new Meteorito[cantMeteoritos];
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i] = new Meteorito();
  }
 }
 void draw(){
    //funcionalidad
 background(#0E0090);
 if (estadoJuego==1){ //jugando
  //imagen de el ovni:
  miOvni.draw();
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i].draw();
    if ( arregloDeMeteoritos[i].colision(miOvni.getX(), 
         miOvni.getY(),miOvni.getRadio() ) ){
           cambiarAEstado(2);
         }
  }
}

  }
  
  void keyPressed(){
    if( estadoJuego==1){//jugando
  miOvni.keyPressed();
  } else  {
  }
  }

/* void mousePressed(){
    if(inicio.click() && estado == 1){
    cambiarAEstado(2);
  } else if(perdiste.click() && estado == 3){
    cambiarAEstado(1);
  }
}*/

void cambiarAEstado (int nuevoEstado_){
  estadoJuego = nuevoEstado_;
  if (nuevoEstado_ == 1){
    miOvni= new Ovni();
    arregloDeMeteoritos = new Meteorito[cantMeteoritos];
    for (int i=0; i<cantMeteoritos; i++){
      arregloDeMeteoritos[i] = new Meteorito();
      }
    }
  }
  boolean getEstadoJuego(){
    if (estadoJuego == 1 ){
    return true;
    }else{
      return false;
    }
  }
  void reiniciar(){
    estadoJuego = 1;
  }
}
