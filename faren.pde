boolean zonaCircular(int x, int y, int r){
  return dist(mouseX,mouseY,x,y)<= r;
}

void boton (int x, int y, int d){
  noStroke();
  if (dist(mouseX,mouseY,x,y) <= d){
    fill(0,50,0);
    cursor(HAND);
  } else{
    fill (0,80,0);
    cursor(ARROW);
  }
  circle(x,y,d);
  if(dist(mouseX,mouseY,x,y) <=d) {
    fill (0,130,0);
    cursor(HAND);
  } else {
    fill(0,170,0);
    cursor(ARROW);
  }

}

void botonCuadrado() {
  textSize(40);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(220, 137, 77);
  } else {
    fill(88, 42, 3);
  }
  rect(260, 268, 180, 50);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50) {
    fill(150);
  } else {
    fill(200);
  }
  textSize(26);
  fill(255);
  text("REINICIAR", 300, 295);
}
