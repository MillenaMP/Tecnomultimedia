void mostrarPantalla3B(){
  image (pantalla3B,0,0,800,600);
}
void clickPantalla3B(){
 if (dist(mouseX,mouseY,152,160)<65){
    Qpantalla = "pantalla3D";
  } else if (dist(mouseX,mouseY,152,456)<65){
    Qpantalla = "pantalla3C";
  }
}
