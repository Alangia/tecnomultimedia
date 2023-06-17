//Tecno Multimedial_Comision1
//Alan_Giammarco
//Legajo_92814/9
//tp2
//Link_YouTube_VIDEO: https://www.youtube.com/watch?v=yVemYoyR84A
PImage ilusion;
boolean mostrarLineas = true;
int lineColor;  // colores lineas verticales
int botonPosX, botonPosY; //boton para reiniciar
int botonSize = 40;

void setup() {
  size(800, 400);
  ilusion = loadImage("data/ilusion.jpg");
  background(255);
  noLoop();
  lineColor = color(255);  // lineas blancas

  botonPosX = width - botonSize - 20; //boton
  botonPosY = height - botonSize - 20;
}

void draw() { // los rombos
  float romboWidth = width / 16;
  float romboHeight = height / 8;

  stroke(0); // las lineas horizontales
  strokeWeight(10);
  float spacing = romboHeight / 3;
  for (float y = spacing; y < height; y += spacing) {
    line(width / 2, y, width, y);
  }

  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      float centerX = width / 2 + romboWidth * (2 * j + 1);
      float centerY = romboHeight * (2 * i + 1);
      drawRombus(romboWidth * 2, romboHeight * 2, centerX, centerY);
    }
  }

  drawButton();
}

void drawRombus(float width, float height, float centerX, float centerY) { // rombos
  fill(0);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(centerX, centerY - height / 2);
  vertex(centerX + width / 2, centerY);
  vertex(centerX, centerY + height / 2);
  vertex(centerX - width / 2, centerY);
  endShape(CLOSE);

  if (mostrarLineas) {
    stroke(lineColor);
    strokeWeight(6);
    for (float x = centerX - width / 2; x < centerX + width / 2; x += width / 8) {
      line(x, centerY - height / 2, x, centerY + height / 2);
    }
  }
}

void mouseClicked() { //click para hacer que cambien de color las lineas verticales
  if (mouseX >= 400) {
    if (mouseX >= botonPosX && mouseX <= botonPosX + botonSize && mouseY >= botonPosY && mouseY <= botonPosY + botonSize) {
      resetSketch();
    } else {
      mostrarLineas = !mostrarLineas;
      if (mostrarLineas) {
        lineColor = color(random(255), random(255), random(255));
      }
      redraw();
    }
  }
}

void drawButton() { //boton
    image(ilusion, 0, 0);
  noStroke();
  fill(150);
  rect(botonPosX, botonPosY, botonSize, botonSize, 5);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Reset", botonPosX, botonPosY, botonSize, botonSize);
}

void resetSketch() {
  mostrarLineas = true;
  lineColor = color(255);
  redraw();
}
