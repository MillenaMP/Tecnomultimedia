int resta,posY,posY2,posY3,posY4,posY5,posY6,opacidad;
PFont laFuente;
void mostrarPantallaCreditos1(){
  image ( creditos,0,0,800,600 );
  textFont(laFuente);
  textAlign(CENTER);
  textSize(40);
  text("Creditos",400,resta);
  textSize(20);
  text("Narracion",200,posY);
  text("Millena Pasqualini",570,posY);
  text("Diseño grafico",200,posY2);
  text("Millena Pasqualini",570,posY2);
  text("Ilustracion",200,posY3);
  text("Millena Pasqualini",570,posY3);
  text("Direccion",200,posY4);
  text("Millena Pasqualini",570,posY4);
  text("Edicion",200,posY5);
  text("Millena Pasqualini",570,posY5);
  text("Programacion",200,posY6);
  text("Millena Pasqualini",570,posY6);
  pushStyle();
  fill(0);
  textSize(15);
  text("Menu Principal",621,550);
  popStyle();

}
 void clickCreditos1(){
  if(dist(mouseX,mouseY,621,550)<60){
    Qpantalla = "pantallaInicio";
  resta = 600;
  posY = 650;
  posY2 = 700;
  posY3 = 750;
  posY4 = 800;
  posY5 = 850;
  posY6 = 900;
  }
}
 void clickCreditos2(){
  if(dist(mouseX,mouseY,312,336)<45){
    Qpantalla = "pantallaInicio";
     resta = 600;
  posY = 650;
  posY2 = 700;
  posY3 = 750;
  posY4 = 800;
  posY5 = 850;
  posY6 = 900;
  }
}
