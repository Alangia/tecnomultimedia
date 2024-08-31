function mostrarPresentacion() {
  textAlign(CENTER);
  fill(0, 210, 100);
  textFont(texto, 80);
  text("Op Art", width / 2, 100);
  textFont(texto, 25);
  text("interacciones (MAYUSCULA):", width / 2, 150);
  textFont(normal, 15);
  fill(200, 30, 160);
  text("'U'\n\n'I'\n\n'R'", width / 2, 200);

  fill(0, 10, 210);
  rect(200, 300, 400, 80);
  fill(250);
  textFont(texto, 35);
  text("comenzar", 400, 350);
}

function mostrarArte() {
  image(ilusion, 0, 0, 400, 400);

  for (let i = 0; i < 2; i++) {
    for (let j = 0; j < 2; j++) {
      let xOffset = (i == 0) ? 400 : 500;
      let yOffset = (j == 0) ? 100 : 300;
      let rotation = (i == j) ? 0 : 180;
      for (let k = xOffset; k < 1000; k += 200) {
        push();
        translate(k, yOffset);
        rotate(radians(rotation));
        inclina(0, 0, 200, 200);
        pop();
      }
    }
  }

  image(ilusion, 0, 0, 400, 400);
}
