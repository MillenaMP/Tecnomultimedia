//declaro la clase
class Creditos{
  String[] textoDeCreditos;
  int[] posY;
  int[] posX;
  PImage fondoDeCreditos;
  int x,y;
  PFont laFuente;
  
 Creditos(){
   //constructor
    textoDeCreditos = new String[15];
    textoDeCreditos[0] = "CREDITOS";
    textoDeCreditos[1] = "Narracion";
    textoDeCreditos[2] = "Millena Pasqualini";
    textoDeCreditos[3] = "Diseño grafico";
    textoDeCreditos[5] = "Ilustracion";
    textoDeCreditos[7] = "Direccion";
    textoDeCreditos[9] = "Edicion";
    textoDeCreditos[10] = "Menu Principal";
    textoDeCreditos[11] = "Programacion";
    posY = new int[7];
    posY[0] = 600;
    posY[1] = 650;
    posY[2] = 700;
    posY[3] = 750;
    posY[4] = 800;
    posY[5] = 850;
    posY[6] = 900;
    posX = new int[3];
    posX[0] = 400;
    posX[1] = 200;
    posX[2] = 570;
     fondoDeCreditos = loadImage("Dibujos-para-colorear-de-estrellas-1.jpg");
     x = 0;
     y = 0;
     laFuente = loadFont ("Dubai-Medium-48.vlw");
 }
 //funcionalidades
 void draw(){
  pushMatrix();
  translate(x,y);
  image ( fondoDeCreditos,0,0,width,height );
  textFont(laFuente);
  textAlign(CENTER);
  textSize(40);
  text(textoDeCreditos[0],posX[0],posY[0]);
  textSize(20);
  text(textoDeCreditos[1],posX[1],posY[1]);
  text(textoDeCreditos[2],posX[2],posY[1]);
  text(textoDeCreditos[3],posX[1],posY[2]);
  text(textoDeCreditos[2],posX[2],posY[2]);
  text(textoDeCreditos[5],posX[1],posY[3]);
  text(textoDeCreditos[2],posX[2],posY[3]);
  text(textoDeCreditos[7],posX[1],posY[4]);
  text(textoDeCreditos[2],posX[2],posY[4]);
  text(textoDeCreditos[9],posX[1],posY[5]);
  text(textoDeCreditos[2],posX[2],posY[5]);
  text(textoDeCreditos[11],posX[1],posY[6]);
  text(textoDeCreditos[2],posX[2],posY[6]);
  //Los textos van subiendo en Y:
    posY[0]--;
    posY[1]--;
    posY[2]--;
    posY[3]--;
    posY[4]--;
    posY[5]--;
    posY[6]--;
  pushStyle();
  fill(0);
  textSize(15);
  text(  textoDeCreditos[10],621,550);
  popStyle();
  popMatrix();
 }
 boolean clickCreditos(float x_, float y_, float radio_ ){
   if(dist(x_, y_, mouseX, mouseY)<radio_){
     //Se reinician las posiciones y cambia de estado:
    posY[0] = 600;
    posY[1] = 650;
    posY[2] = 700;
    posY[3] = 750;
    posY[4] = 800;
    posY[5] = 850;
    posY[6] = 900;
    return true;
  } else {
    return false; 
  }
}
}
