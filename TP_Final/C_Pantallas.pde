class Pantallas{
  PImage imagenDeFondo;
  int x,y;
  int ancho,alto;
  
  Pantallas(){
    x = 0;
    y = 0;
    ancho = width;
    alto = height;
  }
  void draw(PImage imagenDeFondo_){
    push();
    translate(x,y);
    image(imagenDeFondo_,0,0,ancho,alto);
    pop();
  }
  boolean mousePressed(){
   if(dist(mouseX,mouseY,ancho,alto)<100){
     return true;
   }else{
     return false;
   }
  
}
}
