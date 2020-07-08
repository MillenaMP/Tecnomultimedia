/* Millena Pasqualini
legajo> 85096/9
comision: 3
Trabajo de Historia interactiva */
String Qpantalla;
PImage pantallaInicio, pantalla1, pantalla2A,pantalla2B,pantalla2C,pantalla2D;
PImage creditos,pantalla3A,pantalla3B,pantalla3C,pantalla3D,pantalla3E,pantalla3F;
PImage pantalla4A, pantalla4B, pantalla4C, pantalla4D,pantalla4E,pantalla4F;
void setup() {
  size( 800, 600);
  resta = 600;
  posY = 650;
  posY2 = 700;
  posY3 = 750;
  posY4 = 800;
  posY5 = 850;
  posY6 = 900;
  opacidad =255;
  laFuente = loadFont ("DFPOP1-W9-WIN-RKSJ-H-48.vlw");
 Qpantalla = "pantallaInicio";
 pantallaInicio = loadImage ("1.jpg");
 pantalla1 = loadImage ("2.jpg");
 pantalla2A = loadImage ("3.jpg");
 pantalla2B = loadImage ("4.jpg");
 pantalla2C = loadImage("5.jpg");
 pantalla2D = loadImage ("Historia Interactiva FINAL.jpg");
 pantalla3A = loadImage ("6.jpg");
 creditos = loadImage("Dibujos-para-colorear-de-estrellas-1.jpg");
 pantalla3B = loadImage("8.jpg");
 pantalla3D = loadImage("9.jpg");
 pantalla3C = loadImage ("7.jpg");
 pantalla3E = loadImage ("11.jpg");
 pantalla3F = loadImage ("10.jpg");
 pantalla4A = loadImage ("12.jpg");
 pantalla4B = loadImage ("13.jpg");
 pantalla4C = loadImage ("14.jpg");
 pantalla4D = loadImage ("15.jpg");
 pantalla4E = loadImage ("16.jpg");
 pantalla4F = loadImage ("Historia Interactiva FINAL (1).jpg");
}
void draw() {
  background(255);
  resta--;
  posY--;
  posY2--;
  posY3--;
  posY4--;
  posY5--;
  posY6--;
  opacidad--;
  if ( Qpantalla=="pantallaInicio" ) {
    //pantalla de inicio:
    mostrarPantallaInicio();
  } else if ( Qpantalla=="pantalla1" ) {
    //pantalla 1:
    mostrarPantalla1();
  } else if (Qpantalla == "pantalla2A" ){
    mostrarPantalla2A();
  } else if (Qpantalla == "pantalla2B" ){
    mostrarPantalla2B();
  } else if (Qpantalla == "pantalla2C" ){
    mostrarPantalla2C();
  } else if (Qpantalla == "pantallaCreditos1"){
    mostrarPantallaCreditos1();
  } else if(Qpantalla == "pantallaInicio"){
    mostrarPantallaInicio();
  } else if (Qpantalla == "pantalla2D"){
    mostrarPantalla2D();
  } else if (Qpantalla == "pantalla3A"){
    mostrarPantalla3A();
  } else if (Qpantalla == "pantalla3B"){
    mostrarPantalla3B();
  } else if (Qpantalla == "pantalla3D"){
    mostrarPantalla3D();
  } else if (Qpantalla == "pantalla3C"){
    mostrarPantalla3C();
  } else if (Qpantalla == "pantalla3E") {
    mostrarPantalla3E();
  } else if (Qpantalla == "pantalla3F"){
    mostrarPantalla3F();
  } else if (Qpantalla == "pantalla4A"){
    mostrarPantalla4A();
  } else if (Qpantalla == "pantalla4B"){
    mostrarPantalla4B();
  } else if (Qpantalla == "pantalla4D"){
    mostrarPantalla4D();
  } else if (Qpantalla == "pantalla4C"){
    mostrarPantalla4C();
  } else if (Qpantalla == "pantalla4E"){
    mostrarPantalla4E();
  } else if (Qpantalla == "pantalla4F"){
    mostrarPantalla4F();
  }

  
  }

 void mousePressed() {
  println(mouseX+","+mouseY);
  if ( Qpantalla=="pantallaInicio" ) {
    clickPantallaInicio();
  } else if ( Qpantalla=="pantalla1" ) {
    clickPantalla1();
  } else if (Qpantalla == "pantalla2A"){
    clickPantalla2A();
  } else if(Qpantalla == "pantalla2B"){
    clickPantalla2B();
  } else if (Qpantalla == "pantalla2C"){
    clickCreditos();
  } else if(Qpantalla == "pantallaCreditos1"){
    clickCreditos1();
  } else if (Qpantalla == "pantalla2D"){
    clickPantalla2D();
  } else if (Qpantalla == "pantalla3A"){
    clickPantalla3A();
  } else if (Qpantalla == "pantalla3B"){
    clickPantalla3B();
  } else if (Qpantalla == "pantalla3C"){
    clickCreditos5();
  } else if(Qpantalla == "pantalla3D"){
    clickPantalla3D();
  } else if (Qpantalla == "pantalla3E"){
    clickCreditos3();
  } else if (Qpantalla == "pantalla3F"){
    clickCreditos4();
  } else if (Qpantalla == "pantalla4A"){
    clickPantalla4A();
  } else if (Qpantalla == "pantalla4B"){
    clickPantalla4B();
  } else if ( Qpantalla == "pantalla4D"){
    clickPantalla4D();
  } else if (Qpantalla == "pantalla4E"){
    clickPantalla4E();
  } else if (Qpantalla == "pantalla4C"){
    clickPantalla4C();
  } else if (Qpantalla == "pantalla4F"){
    clickPantalla4F();
  }
}
