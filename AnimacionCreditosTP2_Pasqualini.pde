/*Trabajo Practico N2
Animacion Creditos
Pelicula: Star Wars: el regreso de el Jedi
Alumna: Millena Pasqualini
Comision 3
*/

//espacio en memoria para imagen:
PImage imagen;
//espacio en memoria para mi tipografia:
PFont fuente,otraFuente;
float opacidad,posY;
int subir,subir2,subir3,subir4,subir5,subir6;
int subir7,subir8,subir9,subir10,subir11,subir12;
int subir13,subir14,subir15,subir16,subir17;
int subir18,subir19,subir20;

void setup(){
 size(800,400);
 //cargo ese archivo en ese espacio en memoria:
 imagen = loadImage ("estrellas.jpg");
 //cargo archivo a la variable fuente:
 fuente = loadFont("SegoeUIBlack-Italic.vlw");
 //cargo archivp a la variable otraFuente:
 otraFuente = loadFont("Corbel-Bold-48.vlw");
 //cargo valor de la variable opacidad:
 opacidad = 255;
 posY = 600;
 subir = 500;
 subir2 = 540;
 subir3 = 600;
 subir4 = subir3 + 40;
 subir5 = 700;
 subir6 = subir5 + 40;
 subir7 = 1100;
 subir8 = subir7 + 40;
 subir9 = subir8 + 40;
 subir10 = subir9 + 40;
 subir11 = subir10 + 40;
 subir12 =subir11 + 40;
 subir13 = subir12 + 40;
 subir14 = subir13 +40;
 subir15 = subir14 +40;
 subir16 = subir15 + 40;
 subir17 = subir16 + 40;
 subir18 = subir17 + 40;
 subir19 = subir18 + 40;
 subir20 = subir19 + 40;
 
}
void draw(){
  background(0);
  //invocacion para mostrar la imagen:
  image(imagen,0,0,800,450);
  //que familia de fuente voy a usar
  textFont(fuente);
  textSize( map(posY,height,0,150,20) );
  textAlign(CENTER);
  fill(252,252,3,opacidad);
  //TITULO
  text("STAR WARS",400,225);
  opacidad = (opacidad - 3);
  posY = posY - 3 ;
  //que familia de fuente voy a usar:
  textFont(otraFuente);
  textSize(20);
  fill(3,158,252);
  //director
  text("Directed by:",400,subir);
  // otorgo nuevo valor
  subir --;
  textSize(40);
  text("RICHARD MARQUAND",400,subir2);
  subir2 --;
  //Creador
  textSize(20);
  text("Story by:",400,subir3);
   subir3 --;
   textSize(40);
   text("GEORGE LUCAS",400,subir4);
   subir4 --;
   //Musica
   textSize(20);
   text("Music by:",400,subir5);
   subir5 --;
   textSize(40);
   text("JOHN WILLIAMS",400,subir6);
   subir6 --;
   //actores
   textSize(20);
   text("Starring:",400,subir7);
   subir7 --;
   text("MARK HAMILL as Luke Skywalker",400,subir8);
   subir8 --;
   text("HARRISON FORD as Han Solo",400,subir9);
   subir9 --;
   text("CARREL FISHER as Princess Leia",400,subir10);
   subir10 --;
   text("BILLY DU WILLIAMS as Lando Calrissian",400,subir11);
   subir11 --;
   text("ANTHONY DANIELS as C-3P0",400,subir12);
   subir12 --;
   text("Co-Starring:",400,subir13);
   subir13 --;
   text("PETER MAYHEW as Chewbacca",400,subir14);
   subir14 --;
   text("SEBASTIAN SHAW as Anakin Skywalker",400,subir15);
   subir15 --;
   text("IAN McDIARMID as The Emperor",400,subir16);
   subir16 --;
   text("FRANK OF perfoming YODA",400,subir17);
   subir17 --;
   text("JAMES EARL JONES as the voice of Dath Vader",400,subir18);
   subir18 --;
   text("DAVID PROWSE as Dath Vader",400,subir19);
   subir19 --;
   text("and ALEC GUINNES as Ben (Obi-Wan) Kenobi",400,subir20);
   subir20 --;
   
   
   
}
