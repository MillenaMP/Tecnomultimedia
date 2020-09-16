//tp4 Millena Pasqualini
//comision 3 
//Legajo: 85096/9 
//MENSAJE IMPORTANTE: ALGUNAS FUNCIONES NO LAS PUDE REUTILIZAR PORQUE SIMPLEMENTE NO
//COINCIDIAN LOS DATOS QUE ESTABAN DENTRO, YA SEA LA CANTIDAD DE BOTONES O LOS 
//ELEMENTOS QUE APARECIAN PERO REUTILICE TODAS LAS QUE PUDE
PImage[] imagenDeFondo;
int resta,posY,posY2,posY3,posY4,posY5,posY6,opacidad;
PFont laFuente;
String Qpantalla;

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
imagenDeFondo = new PImage [20];
//creditos
imagenDeFondo[0] = loadImage("Dibujos-para-colorear-de-estrellas-1.jpg");
//pantalaInicio
imagenDeFondo[1] = loadImage ("1.jpg");
//pantalla1
imagenDeFondo[2] = loadImage ("2.jpg");
//pantalla2A
imagenDeFondo[3] = loadImage ("3.jpg");
//pantalla2B
imagenDeFondo[4] = loadImage ("4.jpg");
//pantalla2C
imagenDeFondo[5] = loadImage("5.jpg");
//pantalla2D
imagenDeFondo[6] = loadImage ("Historia Interactiva FINAL.jpg");
//pantalla3A
imagenDeFondo[7] = loadImage ("6.jpg");
//pantalla3B
imagenDeFondo[8] = loadImage("8.jpg");
//pantalla3D
imagenDeFondo[9] = loadImage("9.jpg");
//pantalla3C
imagenDeFondo[10] = loadImage ("7.jpg");
//pantalla3E
imagenDeFondo[11] = loadImage ("11.jpg");
//pantalla3F
imagenDeFondo[12] = loadImage ("10.jpg");
//pantalla4A
imagenDeFondo[13] = loadImage ("12.jpg");
//pantalla4B
imagenDeFondo[14] = loadImage ("13.jpg");
//pantalla4C
imagenDeFondo[15] = loadImage ("14.jpg");
//pantalla4D
imagenDeFondo[16] = loadImage ("15.jpg");
//pantalla4E
imagenDeFondo[17] = loadImage ("16.jpg");
//pantalla4F
imagenDeFondo[18] = loadImage ("Historia Interactiva FINAL (1).jpg");
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
    mostrarPantalla(imagenDeFondo[1]);
     } else if ( Qpantalla=="pantalla1" ) {
    //pantalla 1:
    mostrarPantalla(imagenDeFondo[2]);
     } else if (Qpantalla == "pantalla2A" ){
    mostrarPantalla(imagenDeFondo[3]);
  } else if (Qpantalla == "pantalla2B" ){
    mostrarPantalla(imagenDeFondo[4]);
  } else if (Qpantalla == "pantalla2C" ){
    mostrarPantalla(imagenDeFondo[5]);
  } else if (Qpantalla == "pantalla2D"){
    mostrarPantalla(imagenDeFondo[6]);
  } else if (Qpantalla == "pantalla3A"){
    mostrarPantalla(imagenDeFondo[7]);
  } else if (Qpantalla == "pantalla3B"){
    mostrarPantalla(imagenDeFondo[8]);
  } else if (Qpantalla == "pantalla3D"){
    mostrarPantalla(imagenDeFondo[9]);
  } else if (Qpantalla == "pantalla3C"){
    mostrarPantalla(imagenDeFondo[10]);
  } else if (Qpantalla == "pantalla3E") {
    mostrarPantalla(imagenDeFondo[11]);
  } else if (Qpantalla == "pantalla3F"){
    mostrarPantalla(imagenDeFondo[12]);
  } else if (Qpantalla == "pantalla4A"){
    mostrarPantalla(imagenDeFondo[13]);
  } else if (Qpantalla == "pantalla4B"){
    mostrarPantalla(imagenDeFondo[14]);
  } else if (Qpantalla == "pantalla4D"){
    mostrarPantalla(imagenDeFondo[15]);
  } else if (Qpantalla == "pantalla4C"){
    mostrarPantalla(imagenDeFondo[16]);
  } else if (Qpantalla == "pantalla4E"){
    mostrarPantalla(imagenDeFondo[17]);
  } else if (Qpantalla == "pantalla4F"){
    mostrarPantalla(imagenDeFondo[18]);
  } else if (Qpantalla =="creditos"){
    mostrarCreditos();
  }
}
void mousePressed() {
  println(mouseX+","+mouseY);
  if ( Qpantalla=="pantallaInicio" ) {
    clickPantallaInicio();
  } else if ( Qpantalla=="pantalla1" ) {
    click3Botones();
      } else if (Qpantalla == "pantalla2A") {
       if ( clickEnOpcion(428, 172, 60) ) {
         Qpantalla = "pantalla2B";
       }

       if ( clickEnOpcion(620, 177, 60) ) {
         Qpantalla = "pantalla2D";
       }
      
        } else if (Qpantalla == "pantalla3A") {
       if ( clickEnOpcion(428, 172, 60) ) {
         Qpantalla = "pantalla3B";
       }

       if ( clickEnOpcion(620, 177, 60) ) {
         Qpantalla = "pantalla3D";
       }

    } else if (Qpantalla == "pantalla4A") {
       if ( clickEnOpcion(428, 172, 60) ) {
         Qpantalla = "pantalla4B";
       }

       if ( clickEnOpcion(620, 177, 60) ) {
         Qpantalla = "pantalla4F";
       }
     } else if (Qpantalla == "pantalla2B") {
       if ( clickEnOpcion(152, 160, 65) ) {
         Qpantalla = "pantalla2C";
       }

       if ( clickEnOpcion(152, 456, 65) ) {
         Qpantalla = "pantalla2D";
       }

  }  else if (Qpantalla == "pantalla3B") {
       if ( clickEnOpcion(152, 160, 65) ) {
         Qpantalla = "pantalla3D";
       }

       if ( clickEnOpcion(152, 456, 65) ) {
         Qpantalla = "pantalla3C";
       }

   } else if (Qpantalla == "pantalla4B") {
       if ( clickEnOpcion(152, 160, 65) ) {
         Qpantalla = "pantalla4C";
       }

       if ( clickEnOpcion(152, 456, 65) ) {
         Qpantalla = "pantalla4D";
       }

  } else if (Qpantalla == "pantalla2C") {
       if ( clickCreditos(610, 576, 70) ) {
         Qpantalla = "creditos";
       }

    
  } else if (Qpantalla == "pantalla2D"){
    if (clickCreditos(641,537,60)){
      Qpantalla = "creditos";
    }
  } else if(Qpantalla == "pantalla3C"){
    if (clickCreditos(621,550,50)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla == "pantalla4F"){
    if (clickCreditos(168,536,60)){
      Qpantalla = "creditos";
    }
   }else if (Qpantalla == "pantalla3D") {
       if ( clickEnOpcion(233,264,80) ) {
         Qpantalla = "pantalla3E";
       }

       if ( clickEnOpcion(574,268,80) ) {
         Qpantalla = "pantalla3F";
       }
   } else if(Qpantalla == "pantalla3E"){
    if (clickCreditos(619,533,60)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla == "pantalla3F"){
    if (clickCreditos(609,544,55)){
      Qpantalla = "creditos";
    }
   }  else if(Qpantalla == "creditos"){
    if (clickCreditos(621,550,60)){
      Qpantalla = "pantallaInicio";
    }
   } else if(Qpantalla == "pantalla4D"){
    if (clickCreditos(602,556,80)){
      Qpantalla = "pantalla4E";
    }
   } else if(Qpantalla == "pantalla4C"){
    if (clickCreditos(613,537,70)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla == "pantalla4E"){
    if (clickCreditos(612,552,50)){
      Qpantalla = "creditos";
    }
   } 
  }






  
     
