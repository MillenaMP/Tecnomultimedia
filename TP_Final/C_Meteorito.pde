//Declaro mi clase
class Meteorito{
  //atributos 
  float x,y;
  float dir, vel;
  float ancho, alto;
  float radio;
  
  //constructor
  Meteorito(){
    x = random (0,width);
    y = 0;
    dir= random (20,160);
    vel = random (3,5);
    ancho = 50;
    alto = 50;
    radio = alto/2;

  }
  
  //funcionalidades
  void draw(){
    mover();
    dibujar();
  }
  
  void dibujar (){
    //meteoritos basicos
    push();
    translate(x,y);
    noStroke();
    fill(#B2B0A5);
    ellipse(0,0,ancho,alto);
    pop();
  }
  
  void mover(){
    //desplazamiento por coordenadas polares:
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
   
   boolean colision(float x_, float y_, float radio_){
     float distancia = dist(x,y, x_, y_);
      if (distancia< radio+ radio_){
        reciclar();
        //hay colision
        return true;
      } else {
        //no hya colision
        return false;
      } 

}
void reciclar(){
    x = random (0,width);
    y = 0;
    dir= random (20,160);
    vel = random (3,5);
    ancho = 50;
    alto = 50;
    radio = alto/2;

}


}
