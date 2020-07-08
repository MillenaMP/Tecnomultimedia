void mostrarPantalla4A(){
  image(pantalla4A,0,0,800,600);
}
void clickPantalla4A(){
if(dist(428,172,mouseX,mouseY)<60){
   Qpantalla = "pantalla4B";
  } else if (dist(620,177,mouseX,mouseY)<60){
  Qpantalla = "pantalla4F";
  }
}
