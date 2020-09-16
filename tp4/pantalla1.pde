//Pantalla 1 (primera situacion, empieza la historia)
void mostrarPantalla(PImage imagenDeFondo_){
  image(imagenDeFondo_,0,0,width,height);
   }

void click3Botones(){
   if (dist(mouseX, mouseY, 131, 194)<65){
    Qpantalla = "pantalla2A";
  } else if (dist(mouseX,mouseY,130,336)<65){
    Qpantalla = "pantalla3A";
  } else if (dist(mouseX,mouseY,133,479)<65){
    Qpantalla = "pantalla4A";
  }
}
