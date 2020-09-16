String[] textoDeCreditos;
void mostrarCreditos(){
  image ( imagenDeFondo[0],0,0,width,height );
  textFont(laFuente);
  textAlign(CENTER);
  textSize(40);
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
  text(textoDeCreditos[0],400,resta);
  textSize(20);
  text(textoDeCreditos[1],200,posY);
  text(textoDeCreditos[2],570,posY);
  text(textoDeCreditos[3],200,posY2);
  text(textoDeCreditos[2],570,posY2);
  text(textoDeCreditos[5],200,posY3);
  text(textoDeCreditos[2],570,posY3);
  text(textoDeCreditos[7],200,posY4);
  text(textoDeCreditos[2],570,posY4);
  text(textoDeCreditos[9],200,posY5);
  text(textoDeCreditos[2],570,posY5);
  text(textoDeCreditos[11],200,posY6);
  text(textoDeCreditos[2],570,posY6);
   pushStyle();
  fill(0);
  textSize(15);
  text(  textoDeCreditos[10],621,550);
  popStyle();

}
