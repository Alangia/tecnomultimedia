function mousePressed() {
  if (pantalla === "presentacion" && mouseX > 200 && mouseX < 600 && mouseY > 300 && mouseY < 380) {
    pantalla = "arte";
  }
}

function keyPressed() {
  if (key === 'U') {
    tam = 1;
  } else if (key === 'I') {
    tam = 5;
  } else if (key === 'R') {
    cuenta = 0;
    pantalla = "presentacion";
  }
}

function inclina(posx, posy, ancho, alto) {
  push();
  translate(posx, posy);
  triangle(posx - ancho / 2, posy + alto / 2, 0, -alto / 2, ancho / 2, alto / 2);
  pop();
  
  for (let i = 100; i > 0; i -= tam) {
    for (let j = 0; j < 5; j += tam) {
      strokeWeight(5);
      stroke(i % 2 === 0 ? 255 : 0);
      rotate(radians(-1));
      triangle(posx - i, posy + i, 0 - j, -i, +i, +i);
    }
  }
}
