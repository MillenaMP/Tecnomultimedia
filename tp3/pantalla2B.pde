void mostrarPantalla2B(){
  image(pantalla2B,0,0,800,600);
}
void clickPantalla2B(){
  if (dist(mouseX,mouseY,152,160)<65){
    Qpantalla = "pantalla2C";
  } else if (dist(mouseX,mouseY,152,456)<65){
    Qpantalla = "pantalla2D";
  }
}
