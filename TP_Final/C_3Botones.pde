class Boton{
    //ATRIBUTOS
    float x,y,radio;
     String nuevoEstado;

  Boton(float x_, float y_ ,float radio_, String nuevoEstado_){
    //CONTRUCTOR
    x = x_;
    y = y_;
    radio = radio_;
    nuevoEstado = nuevoEstado_;
  }
  //metodos
   void actualizar(){
    push();
    translate(x,y);
    
    pop();
   }
   boolean click(){
     return ( dist(mouseX,mouseY,x,y)< radio /*colision*/);
   }
   
   String getNuevoEstado(){
     return nuevoEstado;
   }
}
