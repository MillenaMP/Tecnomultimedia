 void mostrarPantalla3A(){
   image(pantalla3A,0,0,800,600);
 }
 void clickPantalla3A(){
if(dist(428,172,mouseX,mouseY)<60){
   Qpantalla = "pantalla3B";
  } else if (dist(620,177,mouseX,mouseY)<60){
  Qpantalla = "pantalla3D";
  }
 }
