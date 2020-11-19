//declaro mi clase 
 class Ovni{
  //atributos
  PImage miImagen;
  float ancho, alto, radio;
  float x,y;
  float paso;
 
  //constructor
  Ovni(){
    miImagen = loadImage("ovni.png");
    x = width/2;
    y = height/2;
    ancho = 146;
    alto = 72;
    radio = alto/2;
    paso = 3;

  }
  void draw(){
    push();
    translate(x,y);
    imageMode(CENTER);
    image( miImagen, 0,0,ancho,alto);
    paso = (paso + 0.01 );
    pop();
  }
  
  void keyPressed(){
    //Condicional para mover al personaje con las flechas 
  if(keyCode==LEFT){
    x = (x - paso);
  }
  if(keyCode==RIGHT){
    x = (x + paso);
  }
  if(keyCode==UP){
    y = (y - paso);
  }
  if(keyCode==DOWN){
    y = (y + paso);
  } 
  
 
}

float getX(){
  return x;
}
float getY(){
  return y;
}
float getRadio(){
  return radio;
}

  }
