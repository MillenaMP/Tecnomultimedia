//Declaro mi clase
class Meteorito{
  //atributos 
  float x,y;
  float dir, vel;
  float ancho, alto;

  
  
  
  //constructor
  Meteorito(){
    x= random (0,width);
    y= 0;
    dir= random (20,160);
    vel = random (3,5);
    ancho = 50;
    alto = 50;

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
  }
    void colision(){
      if (dist(x,y,UbicX,UbicY)<25){
        estado = 3;
      } else {
      }
      
  }
  
  
  
} 
  
