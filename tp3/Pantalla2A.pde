//Pantalla 2A (elegiste el desierto como lugar de aterrizaje)
void mostrarPantalla2A (){
  image(pantalla2A,0,0,800,600);
}
void clickPantalla2A (){
 if(dist(428,172,mouseX,mouseY)<60){
   Qpantalla = "pantalla2B";
  } else if (dist(620,177,mouseX,mouseY)<60){
  Qpantalla = "pantalla2D";
  }
}
