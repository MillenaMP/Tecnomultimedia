PFont miFuente;
//Funcion que va a servir como pantalla de inicio 
void PantallaInicio(){
  miFuente = loadFont("Square721BT-Roman-48.vlw");
  background(#0D00A7);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text("LLUVIA DE METEORITOS",width/2,height/2-100);
  textSize(25);
  text("Jugar",width/2,height/2+200);
}
boolean clickEnPantalla(float x_, float y_, float radio_ ){
  if(dist(x_, y_, mouseX, mouseY)<radio_){
    return true;
  } else {
    return false; 
  }
}
