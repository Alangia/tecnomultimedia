// Alumno: Alan Giammarco
// legajo: 92814/9
// comisiòn 1 
// tp3
//video: https://youtu.be/-KvcZa1QIDA

PImage tri;
int tam, cuenta;
String pantalla;
PFont tit, texto, normal;

void setup() {
  size(800, 400);
  tri = loadImage("tri.jpeg");
  tam = 5;
  cuenta = 0;
  pantalla = "presentacion";
  tit = loadFont("tit.vlw");
  texto = loadFont("texto.vlw");
  normal = loadFont("normal.vlw");
}

void draw() {
  background(0);
  println(cuenta);
  if (cuenta == 0) {
    pantalla = "presentacion";
  }
  if (cuenta >= 3) {
    pantalla = "arte";
  }

  if (pantalla.equals("presentacion")) {
    background(0);
    textAlign(CENTER);
    textFont(tit);
    text("Op Art", width / 2, 100);
    fill(255, 0, 0);
    textFont(texto, 25);
    text("interacciones", width / 2, 150);
    textFont(normal, 15);
    fill(200, 30, 160);
    text("'r'\n\n'DELETE'\n\n'ENTER'", width / 2, 200);
    fill(200);
    rect(200, 300, width /2, 80);
    fill(250);
    textFont(texto);
    text("comenzar", 400, 350);
  }

  if (pantalla.equals("arte")) {
    image(tri, 0, 0, 400, 400);

    for (int i = 0; i < 2; i++) {
      for (int j = 0; j < 2; j++) {
        int xOffset = (i == 0) ? 400 : 500;
        int yOffset = (j == 0) ? 100 : 300;
        int rotation = (i == j) ? 0 : 180;
        for (int k = xOffset; k < 1000; k += 200) {
          push();
          translate(k, yOffset);
          rotate(radians(rotation));
          inclina(0, 0, 200, 200);
          pop();
        }
      }
    }

    image(tri, 0, 0, 400, 400);
  }
}

void keyPressed() {
  if (key == ENTER) {
    tam = 1;
  }
  if (key == BACKSPACE) {
    tam = 5;
  }
if(reinicio()==true){

    cuenta = 0;

  }
  }


void mousePressed() {
  if (cuenta == 0 && mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY < 380) {
    cuenta += 3;
  }
}

void inclina(int posx, int posy, int ancho, int alto) {
  push();
  translate(posx, posy);
  triangle(posx - ancho / 2, posy + alto / 2, 0, -alto / 2, ancho / 2, alto / 2);
  pop(); 
  for (int i = 100; i > 0; i -= tam) {
    for (int j = 0; j < 5; j += tam) {
      strokeWeight(5);
      if (i % 2 == 0) {
        stroke(255);
      } else {
        stroke(0);
      }
      rotate(radians(-1));
      triangle(posx - i, posy + i, 0 - j, -i, +i, +i);
    }
  }
}
boolean reinicio(){
 
if (key == 'r') {
    return true;

  }else{
    return false;
  }



}
