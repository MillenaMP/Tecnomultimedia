//declaro mi clase 
 class Ovni{
  //atributos
  float UbicX;
  float UbicY;
  PImage miImagen;
  float distancia;
  float x,y;
 
  //constructor
  Ovni(){
    x= random (0,width);
    y= 0;
    miImagen = loadImage("ovni.png");
    UbicX = width/2;
    UbicY = height/2;
    distancia = dist(x,y, UbicX, UbicY);
  }
  void dibujar(){
    image( miImagen, UbicX,UbicY,146,72);
  }
  
  void mover(){
    //Condicional para mover al personaje con las flechas 
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

    void colision(){
     float distancia = dist(miMeteorito.x,miMeteorito.y,miOvni.UbicX, miOvni.UbicY);
      if (distancia<50){
        estado = 3;
      }else{
      }}
      

  
}
 
