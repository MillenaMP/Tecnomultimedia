void mostrarPantalla3D(){
  image(pantalla3D,0,0,800,600);
}
void clickPantalla3D(){
  if(dist(mouseX,mouseY,233,264)<80){
    Qpantalla = "pantalla3F";
  } else if (dist(mouseX,mouseY,574,264)<80){
    Qpantalla = "pantalla3E";
  }
}
    
