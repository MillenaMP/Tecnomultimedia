//Millena Pasqualini
//Comision 3
//Legajo: 85096/9
//Mini juego: esquivar los meteoritos
//Mover el ovni con las flechas del teclado 
// si un meteorito hace colision con el ovni perdes

Meteorito miMeteorito;
Meteorito [] arregloDeMeteoritos;
int cantMeteoritos = 6;
int estado = 1;
Ovni miOvni;
PantallaInicio inicio;
PantallaPerdiste perdiste;

void setup(){
  size(1000,600);
  surface.setResizable(true);
  miMeteorito = new Meteorito();
  miOvni = new Ovni();
  inicio = new PantallaInicio();
  perdiste = new PantallaPerdiste();
   arregloDeMeteoritos = new Meteorito[cantMeteoritos];
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i] = new Meteorito();
  }
}

void draw(){
  background(#0D00A7);
      //imagen de el ovni:
  miOvni.dibujar();
  miMeteorito.mover();
  miMeteorito.dibujar();
  miMeteorito.colision();
  miOvni.colision();
  for ( int i=0; i<cantMeteoritos; i++ ) {
    arregloDeMeteoritos[i].actualizar();
}
  if( estado==1){
    inicio.dibujar();
  }
  if (estado==2){
    miMeteorito.colision();
    miOvni.colision();
  }
  if (estado==3){
    perdiste.dibujar();
    perdiste.click();
  }
}
 
void keyPressed(){
    miOvni.mover();
}

void mousePressed(){
  println(mouseX+","+mouseY);
  if(inicio.click() && estado == 1){
    estado = 2;
  } if(perdiste.click() && estado ==3){
    estado = 1;
  }
}
