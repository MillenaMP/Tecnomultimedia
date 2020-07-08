void mostrarPantalla3C(){
  image(pantalla3C,0,0,800,600);
  ellipse(621,550,100,100);
  pushStyle();
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("creditos",621,550);
  popStyle();
}
 void clickCreditos5(){
  if (dist(mouseX,mouseY,621,550)<50){
    Qpantalla = "pantallaCreditos1";
     resta = 600;
     posY = 650;
  posY2 = 700;
  posY3 = 750;
  posY4 = 800;
  posY5 = 850;
  posY6 = 900;
  }
  
}
