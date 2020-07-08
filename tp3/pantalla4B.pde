void mostrarPantalla4B(){
  image(pantalla4B,0,0,800,600);
}
void clickPantalla4B(){
 if (dist(mouseX,mouseY,152,160)<65){
    Qpantalla = "pantalla4D";
  } else if (dist(mouseX,mouseY,152,410)<65){
    Qpantalla = "pantalla4C";
  }
}
