//declaro mi clase juego
class Juego{
  //atributos
  Meteorito [] arregloDeMeteoritos;
  int cantMeteoritos = 6;
  int estado = 1;
  Ovni miOvni;
  PantallaInicio inicio;
  PantallaPerdiste perdiste;
  
Juego(){
  //constructor
  miOvni = new Ovni();
  inicio = new PantallaInicio();
  perdiste = new PantallaPerdiste();
   arregloDeMeteoritos = new Meteorito[cantMeteoritos];
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i] = new Meteorito();
  }
 }
 
  void draw(){
    //funcionalidad

  if( estado==1){
    inicio.dibujar();
  }
  else if (estado==2){ //jugando
  //imagen de el ovni:
  miOvni.draw();
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i].draw();
    if ( arregloDeMeteoritos[i].colision(miOvni.getX(), 
         miOvni.getY(),miOvni.getRadio() ) ){
           cambiarAEstado(3);
         }
  }
}
  
  else if (estado==3){
    perdiste.dibujar();
    perdiste.click();
  }
  }
  
  void keyPressed(){
    if( estado==1){
  }
  else if (estado==2){ //jugando
  miOvni.keyPressed();
  }
 }
  
  void mousePressed(){
    if(inicio.click() && estado == 1){
    cambiarAEstado(2);
  } else if(perdiste.click() && estado == 3){
    estado = 1;
  }
}
void cambiarAEstado (int nuevoEstado_){
  estado = nuevoEstado_;
  if (nuevoEstado_ == 2){
    miOvni= new Ovni();
    arregloDeMeteoritos = new Meteorito[cantMeteoritos];
    for (int i=0; i<cantMeteoritos; i++){
      arregloDeMeteoritos[i] = new Meteorito();
      }
    }
  }
}
