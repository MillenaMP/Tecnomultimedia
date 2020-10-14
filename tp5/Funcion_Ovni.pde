PImage miImagen;
int UbicX = width/2;
int UbicY = height/2;

 void Ovni(){

  //Condicional para mover a tu personaje con las flechas 
  if(keyCode==LEFT){
    UbicX = (UbicX - 3);
  }
  if(keyCode==RIGHT){
    UbicX = (UbicX + 3);
  }
  if(keyCode==UP){
    UbicY = (UbicY - 3);
  }
  if(keyCode==DOWN){
    UbicY = (UbicY + 3);
  }
}
