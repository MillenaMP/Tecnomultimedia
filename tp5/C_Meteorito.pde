
//Declaro mi clase
class Meteorito{
  //atributos 
  float x,y;
  float dir, vel;
  float ancho, alto;
  float distancia;
  float UbicX;
  float UbicY;

  
  
  
  //constructor
  Meteorito(){
    x= random (0,width);
    y= 0;
    dir= random (20,160);
    vel = random (3,5);
    ancho = 50;
    alto = 50;
    UbicX = width/2;
    UbicY = height/2;
    distancia = dist(x,y, UbicX, UbicY);

  }
  
  
  
  
  //funcionalidades
  void actualizar(){
    mover();
    dibujar();
  }
  
  void dibujar (){
    //meteoritos basicos
    noStroke();
    fill(#B2B0A5);
    ellipse(x,y,ancho,alto);
  }
  
  void mover(){
    float despX, despY;
    despX = cos( radians(dir) ) * vel;
    despY = sin( radians(dir) ) * vel;
    x+=despX;
    y+=despY; 
  
   if ( x>width+ancho ) {
      x = random (0,width);
      y = 0;
    }
    if ( x<0-ancho ) {
      x = random (0,width);
      y = 0;
    }
    if ( y>height+ancho ) {
      y = 0;
      x = random (0,width);
    }
    if ( y<0-ancho ) {
      y = 0;
      x = random (0,width); 
    }
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
     float distancia = dist(miMeteorito.x,miMeteorito.y, miOvni.UbicX, miOvni.UbicY);
      if (distancia<=50){
        estado = 3;
      }
      
      

  

}


}
