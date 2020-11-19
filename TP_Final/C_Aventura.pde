//declaro mi clase Aventura
class Aventura{
//atributos
   PImage[] imagenDeFondo;
   String Qpantalla;
   Click clickEnOpcion;
   Creditos misCreditos;
   Juego juego;
   Boton[] boton; 
   Pantallas fondo;
   int cant = 10;
   SoundFile sonido;
   
  Aventura(PApplet miApp_ ){
    //constructor
     clickEnOpcion = new Click();
     misCreditos = new Creditos();
     juego = new Juego();
     fondo = new Pantallas();
     Qpantalla = "pantallaInicio";
     boton = new Boton [cant];
     boton[0] = new Boton (width/2,height/2,width*height,"pantallaJuego");
     boton[1] = new Boton(131,194,65,"pantalla2A");
     boton[2] = new Boton(130,336,65,"pantalla3A");
     boton[3] = new Boton(133,479,65,"pantalla4A");
     //consutrimos el objeto SoundFile, 
    //le pasamos el apuntador al programa de Processing en ejecucion:
    sonido = new SoundFile( miApp_ ,"musica.mp3");
    // Ejemplo de reproduccion del sonido en loop desde este momento:
    sonido.loop();
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
     //pantallaJuego
     imagenDeFondo[19] = loadImage ("juego.png");
 }
   void draw(){
     //funcionalidades
     if ( Qpantalla.equals("pantallaInicio") ) {
    //pantalla de inicio:
    fondo.draw(imagenDeFondo[1]);
     }else if(Qpantalla.equals("pantallaJuego")){
      fondo.draw(imagenDeFondo[19]);
    juego.reiniciar();
     }else if (juego.getEstadoJuego()){
       juego.draw();
     } else if ( Qpantalla.equals("pantalla1") ) {
    //pantalla 1:
    fondo.draw(imagenDeFondo[2]);
     } else if (Qpantalla.equals("pantalla2A") ){
    fondo.draw(imagenDeFondo[3]);
  } else if (Qpantalla.equals("pantalla2B") ){
    fondo.draw(imagenDeFondo[4]);
  } else if (Qpantalla.equals("pantalla2C") ){
    fondo.draw(imagenDeFondo[5]);
  } else if (Qpantalla.equals("pantalla2D")){
    fondo.draw(imagenDeFondo[6]);
  } else if (Qpantalla.equals("pantalla3A")){
    fondo.draw(imagenDeFondo[7]);
  } else if (Qpantalla.equals("pantalla3B")){
    fondo.draw(imagenDeFondo[8]);
  } else if (Qpantalla.equals("pantalla3D")){
    fondo.draw(imagenDeFondo[9]);
  } else if (Qpantalla.equals("pantalla3C")){
    fondo.draw(imagenDeFondo[10]);
  } else if (Qpantalla.equals("pantalla3E")) {
    fondo.draw(imagenDeFondo[11]);
  } else if (Qpantalla.equals("pantalla3F")){
    fondo.draw(imagenDeFondo[12]);
  } else if (Qpantalla.equals("pantalla4A")){
    fondo.draw(imagenDeFondo[13]);
  } else if (Qpantalla.equals("pantalla4B")){
    fondo.draw(imagenDeFondo[14]);
  } else if (Qpantalla.equals("pantalla4D")){
    fondo.draw(imagenDeFondo[15]);
  } else if (Qpantalla.equals("pantalla4C")){
    fondo.draw(imagenDeFondo[16]);
  } else if (Qpantalla.equals("pantalla4E")){
    fondo.draw(imagenDeFondo[17]);
  } else if (Qpantalla.equals("pantalla4F")){
    fondo.draw(imagenDeFondo[18]);
  } else if (Qpantalla.equals("creditos")){
    misCreditos.draw();
  }
}
void mousePressed(){
   if ( Qpantalla.equals("pantallaInicio")){
    if( boton[0].click()){
      Qpantalla = boton[0].getNuevoEstado();
    }
   }
    else if(Qpantalla.equals("pantallaJuego")){
      if(clickEnOpcion.mousePressed(393, 322, 55)){
        Qpantalla = "pantalla1";
      }
    

  } else if ( Qpantalla.equals("pantalla1") ) {
     if(boton[1].click()){
       Qpantalla = boton[1].getNuevoEstado();
     }
  
      else if(boton[2].click()){
      Qpantalla = boton[2].getNuevoEstado();
    }
    else if(boton[3].click()){
      Qpantalla = boton[3].getNuevoEstado();
    }
  
  
      } else if (Qpantalla.equals("pantalla2A")) {
       if ( clickEnOpcion.mousePressed (428, 172, 60) ) {
         Qpantalla = "pantalla2B";
       }

       if ( clickEnOpcion.mousePressed(620, 177, 60) ) {
         Qpantalla = "pantalla2D";
       }
      
        } else if (Qpantalla.equals("pantalla3A")) {
       if ( clickEnOpcion.mousePressed(428, 172, 60) ) {
         Qpantalla = "pantalla3B";
       }

       if ( clickEnOpcion.mousePressed(620, 177, 60) ) {
         Qpantalla = "pantalla3D";
       }

    } else if (Qpantalla.equals("pantalla4A")) {
       if ( clickEnOpcion.mousePressed(428, 172, 60) ) {
         Qpantalla = "pantalla4B";
       }

       if ( clickEnOpcion.mousePressed(620, 177, 60) ) {
         Qpantalla = "pantalla4F";
       }
     } else if (Qpantalla.equals("pantalla2B")) {
       if ( clickEnOpcion.mousePressed(152, 160, 65) ) {
         Qpantalla = "pantalla2C";
       }

       if ( clickEnOpcion.mousePressed(152, 456, 65) ) {
         Qpantalla = "pantalla2D";
       }

  }  else if (Qpantalla.equals("pantalla3B")) {
       if ( clickEnOpcion.mousePressed(152, 160, 65) ) {
         Qpantalla = "pantalla3D";
       }

       if ( clickEnOpcion.mousePressed(152, 456, 65) ) {
         Qpantalla = "pantalla3C";
       }

   } else if (Qpantalla.equals("pantalla4B")) {
       if ( clickEnOpcion.mousePressed(152, 160, 65) ) {
         Qpantalla = "pantalla4C";
       }

       if ( clickEnOpcion.mousePressed(152, 456, 65) ) {
         Qpantalla = "pantalla4D";
       }

  } else if (Qpantalla.equals("pantalla2C")) {
       if ( misCreditos.clickCreditos(610, 576, 70) ) {
         Qpantalla = "creditos";
       }

    
  } else if (Qpantalla.equals("pantalla2D")){
    if (misCreditos.clickCreditos(641,537,60)){
      Qpantalla = "creditos";
    }
  } else if(Qpantalla.equals("pantalla3C")){
    if (misCreditos.clickCreditos(621,550,50)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla.equals("pantalla4F")){
    if (misCreditos.clickCreditos(168,536,60)){
      Qpantalla = "creditos";
    }
   }else if (Qpantalla.equals("pantalla3D")) {
       if ( clickEnOpcion.mousePressed(233,264,80) ) {
         Qpantalla = "pantalla3E";
       }

       if ( clickEnOpcion.mousePressed(574,268,80) ) {
         Qpantalla = "pantalla3F";
       }
   } else if(Qpantalla.equals("pantalla3E")){
    if (misCreditos.clickCreditos(619,533,60)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla.equals("pantalla3F")){
    if (misCreditos.clickCreditos(609,544,55)){
      Qpantalla = "creditos";
    }
   }  else if(Qpantalla.equals("creditos")){
    if (misCreditos.clickCreditos(621,550,60)){
      Qpantalla = "pantallaInicio";
    }
   } else if(Qpantalla.equals("pantalla4D")){
    if (misCreditos.clickCreditos(602,556,80)){
      Qpantalla = "pantalla4E";
    }
   } else if(Qpantalla.equals("pantalla4C")){
    if (misCreditos.clickCreditos(613,537,70)){
      Qpantalla = "creditos";
    }
   } else if(Qpantalla.equals("pantalla4E")){
    if (misCreditos.clickCreditos(612,552,50)){
      Qpantalla = "creditos";
    }
   } 
}
void keyPressed(){
  juego.keyPressed();
}
}
