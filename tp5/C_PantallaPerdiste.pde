class PantallaPerdiste{
  //atributos
  PFont miFuente;
  String texto; 
  String volver;
  int x,y;
  int radio;
   //constructor
  PantallaPerdiste(){
    miFuente = loadFont("Square721BT-Roman-48.vlw"); 
    texto = "PERDISTE!";
    volver = "Volver a Jugar";
    x = width/2;
    y = height/2;
    radio = 85;
  }
  void dibujar(){
  background(#0D00A7);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text(texto,x,y-100);
  textSize(25);
  text(volver,x,y+200);
} 
boolean click(){
  if(dist(x,y+200, mouseX, mouseY)<radio){
    return true;
  } else {
    return false; 
  }
}
}









/*void PantallaPerdiste(){
  background(#0D00A7);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER);
  textSize(40);
  text("PERDISTE",width/2,height/2-100);
  textSize(25);
  text("Jugar de nuevo",width/2,height/2+200);
}*/
