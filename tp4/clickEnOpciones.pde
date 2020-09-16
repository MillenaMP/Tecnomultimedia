boolean clickEnOpcion(float x_, float y_, float radio_ ){
  if(dist(x_, y_, mouseX, mouseY)<radio_){
    return true;
  } else {
    return false; 
  }
}
boolean clickCreditos(float x_, float y_, float radio_ ){
  if(dist(x_, y_, mouseX, mouseY)<radio_){
  resta = 600;
  posY = 650;
  posY2 = 700;
  posY3 = 750;
  posY4 = 800;
  posY5 = 850;
  posY6 = 900;
    return true;
  } else {
    return false; 
  }
}
 boolean clickContinuar(float x_, float y_, float radio_ ){
  if(dist(mouseX, mouseY,x_, y_)<radio_){
    return true;
  } else {
    return false; 
  }
}
