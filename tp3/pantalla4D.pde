 void mostrarPantalla4D(){
   image(pantalla4D,0,0,800,600);
}

void clickPantalla4D(){
  if(dist(mouseX,mouseY,597,559)<70){
    Qpantalla = "pantalla4E";
  }
}
