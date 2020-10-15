//declaro mi clase 
class PantallaInicio{
  //atributos
  PFont miFuente;
  String texto; 
  String jugar;
  int x,y;
  int radio;
  
  //constructor
  PantallaInicio(){
    miFuente = loadFont("Square721BT-Roman-48.vlw"); 
    texto = "LLUVIA DE METEORITOS";
    jugar = "Jugar";
    x = width/2;
    y = height/2;
    radio = 50;
  }
  void dibujar(){
  background(#0D00A7);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text(texto,x,y-100);
  textSize(25);
  text(jugar,x,y+200);
} 
boolean click(){
  if(dist(x,y+200, mouseX, mouseY)<radio){
    return true;
  } else {
    return false; 
  }
}
}
/*PFont miFuente;
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
}*/
