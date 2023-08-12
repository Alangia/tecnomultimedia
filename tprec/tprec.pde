//Alan Valentin Giammarco - tprec
//Comision 1
//92814/9
//Video:https://youtu.be/-XxV95Ze7g0
int cant = 14;

PImage [] pantallasI = new PImage[cant];
PImage [] opcionesI = new PImage[3];

String [] historia = {"Farenheit 451", "En un futuro utopico, se encuentra Guy, un gran bombero de la ciudad. Y en este mundo, los bomberos se encargan de incendiar cosas.", "Luego de un dia de trabajo, Guy conoce a una chica muy inteligente, la cual le enseña el mundo de los libros y lo que podria ser el mundo.","Hay algo dentro de la casa incendiada.", "Luego de quemar la casa, Guy ingresa a la casa y se encunetra con un libro, lleno de informacion e historia sobre el mundo. por lo que decide leerlo, gracias a la conversacion que tuvo con esa chica.", "Luego de leer todo el contenido del libro, se da cuenta de como este libro podria afectar al mundo.",
"Guy, al mostrar el contenido del libro y demostrar que lo que hacia el gobierno esta mal, comienza a ser perseguido.", "Guy, intentando escapar, arma trampas y recluta a algunos bomberos para rebelarse en contra del gobierno y lograr un cambio en el mundo. Per no sera facil.", "En el camino, Guy se encuentra a un niño, que era fanatico de los bomberos. En ese encuentro, Guy le explica lo que estaba sucediendo. Por lo cual el niño entiende y decide ayudarlo.", "El niño le presenta a Guy a sus compañeros, por lo que Guy tiene la idea de cambiar el mundo desde otro lugar. Enseñandoles a los jovenes que son los libros y que es la libertad.", "Luego, Guy se dirigio hacia otra estacion de bomberos, a buscar ayuda. Pero tuvo un accidente. Asi que tiene que decidir que ruta tomar caminando.", "Guy se encuentra con los niños. Estos equipados como bomberos para empezar una revolucion y lograr un mejor futuro para todo el mundo.", "Luego de haberse encontrado, este gran equipo de niños y bomberos rebeldes, lograron mostrarle al mundo la importancia de leer. Haciendo de esta gran aventura, un mundo mucho mejor para todos.", "Creditos:"} ;
String [] alternativas = { "Guy, luego de discutir, se replantea seguir trabajando. Por lo que decide renunciar a ser bombero.", "El mundo, a raiz de esto, sigue estando en control del gobierno. Tapando los ojos de toda la poblacion y beneficiandose de todo esto.", "Otros bomberos, manejados por el gobierno lo logran detener, logrando parar con la revolucion que Guy habia comenzado."};
String [] creditos = { "Director: Alan Giammarco", "Programador: Alan Giammarco", "Autor: Ray Bradbury"};

int pantalla = 0;
int opcionesB = 0;

void setup(){
  size (600, 600);
    for (int i=0; i<cant; i++) {
    pantallasI[i] = loadImage("faren"+i+".jpg");
    }
    
       for (int i=0; i<3; i++) {
    opcionesI[i] = loadImage("faren"+i+"(2).jpg");
    }
    
textSize(25);
}
  
void draw(){
   if(pantalla==0){
    image( pantallasI [0], 0, 0, 600, 600);
    Botones(500, 550, 150, 60, "HISTORIA", 150, 60);
    Botones(125, 550, 150, 60, "CREDITOS", 200, 60);
     fill(230, 230, 230, 220);
    rect( 300, 100, 180, 75, 15);
    fill(0);
    text (historia [0], 300, 275, 500, 400);
   }
  
   if(pantalla==1 ){
    image( pantallasI [1], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 150, 550, 175, 15);
    fill(0);
    text (historia [1], 300, 275, 500, 400);
    Botones (500, 550, 160, 60, "SIGUIENTE", 160, 60);
   }
  
   if(pantalla==2){
    image( pantallasI [2], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 150, 550, 175, 15);
    fill(0);
    text (historia [2], 300, 275 ,500, 400);
    Botones(500, 300, 160, 60, "DISCUTIR", 160, 60);
    Botones(100, 300, 160, 60, "TRABAJAR", 160, 60);
   }
  
   if( pantalla == 3){
    image( pantallasI [3], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 150, 430, 90, 15);
    fill(0);
    text (historia [3], 300, 325 ,500, 400);
    Botones(100, 300, 160, 60, "VOLVER", 160, 60);
    Botones (500, 300, 160, 60, "INGRESAR", 160, 60);
   }
 
     else if( opcionesB == 3){
      image( opcionesI [0], 0, 0, 600, 600);
      fill(255, 255, 255, 190);
      rect( 300, 150, 500, 150, 15);
      fill(0);
      text (alternativas [0], 300, 300, 500, 400);
      Botones (300, 550, 150, 60, "VOLVER", 150, 60);
     }
 
   if(pantalla==4){
    image( pantallasI [4], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 130, 500, 250, 15);
    fill(0);
    text (historia [4], 300, 225, 500, 400);
    Botones (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
  
   if(pantalla==5){
    image( pantallasI [5], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 155, 500, 120, 15);
    fill(0);
    text (historia [5], 300, 305, 500, 400);
    Botones (100, 300, 160, 60, "MOSTRARLO", 160, 60);
    Botones(500, 300, 160, 60, "OCULTARLO", 160, 60);
   }

   if(pantalla==6){
    image( pantallasI [6], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 90, 500, 120, 15);
    fill(0);
    text (historia [6], 290, 230, 500, 400);
    Botones(100, 300, 160, 60, "VOLVER", 160, 60);
    Botones (500, 300, 160, 60, "ESCAPAR", 160, 60);
   }
 
      else if( opcionesB == 6){
       image( opcionesI [1], 0, 0, 600, 600);
       fill(255, 255, 255, 190);
       rect( 300, 80, 520, 150, 15);
       fill(0);
       text (alternativas [1], 290, 210, 500, 400);
       Botones (300, 550, 150, 60, "VOLVER", 150, 60);
      }
 
   if(pantalla==7){
    image( pantallasI [7], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 100, 500, 200, 15);
    fill(0);
    text (historia [7], 300, 220, 500, 400);
    Botones (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
 
   if(pantalla==8){
    image( pantallasI [8], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 110, 500, 200, 15);
    fill(0);
    text (historia [8], 300, 220, 500, 400);
    Botones (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
 
   if(pantalla==9){
    image( pantallasI [9], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 100, 500, 200, 15);
    fill(0);
    text (historia [9], 300, 220, 500, 400);
    Botones (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
 
   if(pantalla==10){
    image( pantallasI [10], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 150, 500, 180, 15);
    fill(0);
    text (historia [10], 300, 270, 500, 400);
    Botones (500, 300, 160, 60, "RUTA 1", 160, 60);
    Botones(100, 300, 160, 60, "RUTA 2", 160, 60);
   }
   
   if(pantalla==11){
    image( pantallasI [11], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 135, 500, 150, 15);
    fill(0);
    text (historia [11], 300, 260, 500, 400);
    Botones(100, 300, 160, 60, "VOLVER", 160, 60);
    Botones (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
    
      else if(opcionesB== 11){
       image( opcionesI [2], 0, 0, 600, 600);
       fill(255, 255, 255, 190);
       rect( 300, 120, 500, 150, 15);
       fill(0);
       text (alternativas [2], 300, 250, 500, 400);
       Botones (300, 550, 150, 60, "VOLVER", 150, 60);   
      }
 
   if( pantalla == 12){
    image( pantallasI [12], 0, 0, 600, 600);
    fill(255, 255, 255, 190);
    rect( 300, 180, 550, 255, 15);
    fill(0);
       text (historia [12], 300, 275, 500, 400);
    Botones (300, 400, 150, 60, "FIN", 160, 60);
   }

   if( pantalla == 13){
    image( pantallasI [13], 0, 0, 600, 600);
    fill(230, 230, 230, 190);
    rect( 300, 250, 430, 400, 15);
    fill(0);
    text (historia [13], 150, 100);
       for (int i=0; i<3; i++) {
        text(creditos[i], 300, 200+i*70);
       }
    Botones(300, 550, 150, 60, "INICIO", 150, 60);
   }
}
