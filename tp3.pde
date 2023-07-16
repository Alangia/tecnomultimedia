//Alan Valentin Giammarco - tp3
//Comision 1
//92814/9
//https://youtu.be/-wtOsJ26d1I
int estado=0;
int c= 17;
PImage[] faren = new PImage[c];
float y;

void setup() {
  size (600, 600);
  for ( int i= 0; i< c; i++) {
    faren[i]= loadImage ( "faren" + i + ".jpg");
  }
}

void draw() {

  switch (estado) {
  case 0:
    image( faren[0], 0, 0, 600, 600);
    textSize(30);
    rect(40, 117, 120, 30);
    fill(255);
    text("Empezar", 43, 140);
    boton (100, 200, 100);
    textSize(100);

    text("X", 76, 232);

    break;

  case 1:
    image (faren[1], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("En un futuro utopico, se encuentra Guy, un gran bombero de \n  la ciudad. Y en este mundo, los bomberos se encargan \n de incendiar cosas.", 1, 30);
    fill(255);
    text("incendiar casa", 460, 270);
    text("Se enamora", 485, 470);

    boton (530, 530, 100);
    textSize(100);
    //restar 24 y sumar 32
    text("A", 504, 562);
    boton(530, 330, 100);
    textSize(100);

    text("B", 504, 362);
    break;

  case 2:
    image (faren[2], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Guy conoce a una chica muy inteligente, \n la cual le enseña el mundo de los libros ", 30, 400);
    textSize(20);
    text("quedarse con ella", 420, 270);
    text("ir a mision", 450, 470);
    boton (530, 530, 100);
    textSize(100);

    text("A", 506, 562);
    boton(530, 330, 100);
    textSize(100);

    text("B", 506, 362);
    break;

  case 3:
    image (faren[3], 0, 0, 600, 600);
    textSize(23);
    fill(1);
    text("Antes de irse a la mision, la chica le deja una nota, \n mostrandole toda la verdad del mundo en el que viven", 50, 30);
    textSize(20);
    text("le cree", 445, 270);
    text("no le cree", 450, 470);
    boton (530, 530, 100);
    textSize(100);

    text("A", 506, 562);
    boton (530, 330, 100);
    textSize(100);

    text("B", 506, 362);
    break;

  case 4:
    image (faren[4], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Al no creerle, nada cambia y el mundo utopico consume a la sociedad, destrozandola. ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 5:
    image (faren[5], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Guy decide reclutar bomberos y salvar al mundo de la corrupcion. ", 50, 30);
    boton (530, 530, 100);
    textSize(100);
    //restar 24 y sumar 32
    text("X", 506, 562);
    break;

  case 6:
    image (faren[6], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Guy se dirige hacia una residencia, \n el cual le pidieron que incendie y \n no le diga a nadie. ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    //restar 24 y sumar 32
    break;

  case 7:
    image (faren[7], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Con un mapa,se dirigen a buscar el secreto que le habian \n pedido que oculte. ", 50, 400);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 8:
    image (faren[8], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("al darse cuenta que habian libros importante, \n comenzo a cuestionarse lo que estaba haciendo. ", 50, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 9:
    image (faren[9], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("El gobierno se da cuenta del accioonar de Guy \n y deciden ir a buscarlo.", 10, 300);
    text("Que deberia hacer Guy?...", 200, 400);
    text("Correr", 275, 470);
    text("Pelear", 45, 470);
    boton (300, 530, 100);
    textSize(100);

    text("X", 275, 560);

    boton(70, 530, 100);
    textSize(100);

    text("X", 45, 562);
    break;

  case 10:
    image (faren[10], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Bomberos deciden ayudar a Guy   ", 40, 30);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;

  case 11:
    image (faren[11], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Guy intenta escapar en el camion de bombero. \n Pero tiene un accidente y muere...  ", 40, 500);
    boton (530, 530, 100);
    textSize(100);

    text("X", 506, 562);
    break;


  case 14:
    image (faren[14], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Ella le muestra la verdad del mundo en el que viven.", 40, 30);
    fill(0);
    text("Le cree", 490, 470);
    text("No le cree y escapa", 37, 470);


    boton (530, 530, 100);
    boton(65, 530, 100);
    textSize(100);
    text(">", 507, 560);
    text("<", 45, 562);
    break;

  case 15:
    image (faren[15], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Decid creerle y tener un futuro juntos.", 40, 30);
    boton (530, 530, 100);
    break;

  case 16:
    image (faren[16], 0, 0, 600, 600);
    textSize(23);
    fill(255);
    text("Un grupo de rebeldes se encuentra con Guy. \n Pensando que esta del lado del gobierno, lo matan. ", 40, 350);
    boton (530, 530, 100);
    break;

  case 17:
    fill(0);
    background(#FCB500);
    textSize(30);
    y = y + 2;
    text("FIN ", 200, y);
    if (y > 150) {
      text("TP3 - Alan Giammarco", 100, y -150);
    }
    if (y > 250) {
      text("Artista: Alan Giammarco ", 100, y -250);
    }
    if (y > 300) {
      text("Programador: Alan Giammarco", 100, y -300);
    }
    
  
    if (y > 450) {
      text("Gracias por ver, toca para reiniciar\n y buscar otro final", 100, y -450);
    }
    if ( y > 900) {
      botonCuadrado();
    }
  }
}

void mousePressed() {

  //final uno
  if (estado == 0 && zonaCircular(100, 200, 100)) {
    estado = 1;
    //situacion 1
  } else if (estado == 1 && zonaCircular(530, 530, 100)) {
    estado= 2;
  } else if (estado == 2 && zonaCircular(530, 530, 100)) {
    estado= 3;
    //situacion 2
  } else if (estado == 3 && zonaCircular(530, 530, 100)) {
    estado= 4;
  } else if (estado== 4 && zonaCircular(530, 530, 100) ) {
    estado=17;
  }
    //situacion 3
    if (estado == 3 && zonaCircular(530, 330, 20)) {
      estado= 5;
    } else if (estado== 5 && zonaCircular(530, 530, 100) ) {
      estado=17;
    }
  
      ///situacion 4
      if (estado == 1 && zonaCircular(530, 330, 20)) {
        estado= 6;
      } else if (estado == 6 && zonaCircular(530, 530, 100)) {
        estado= 7;
      } else if (estado == 7 && zonaCircular(530, 530, 100)) {
        estado= 8;
      } else if (estado == 8 && zonaCircular(530, 530, 100)) {
        estado= 9;
      } else if (estado == 9 && zonaCircular(70, 530, 100)) {
        estado= 10;
      } else if (estado == 10 && zonaCircular(530, 530, 100)) {
        estado= 11;
      }else if (estado== 11 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }


      //situacion 5
      if  (estado == 2 && zonaCircular(530, 330, 20)) {
        estado= 12;
      } else if (estado == 12 && zonaCircular(530, 530, 100)) {
        estado= 13;
      }else if (estado== 13 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }
      //situacion 6
      if (estado == 12 && zonaCircular(530, 330, 20)) {
        estado= 14;
      } else if (estado == 14 && zonaCircular(530, 530, 100)) {
        estado= 15;
      }else if (estado== 15 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }

      //situacion 7
      if (estado == 14 && zonaCircular(130, 530, 100)) {
        estado= 16;
      }else if (estado== 16 && zonaCircular(530, 530, 100) ) {
    estado=17;
      }
      //situacion 8
      if (estado == 9 && zonaCircular(330, 530, 100)) {
        estado= 16;
      }else if (estado== 16 && zonaCircular(530, 530, 100) ) {
    estado=17;
      } 
      if (estado == 17 && zonaCircular(300, 300, 200)) {
    y = 0;
    estado = 0;
  }
    }
