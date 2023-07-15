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
  rect(x -d/4, y- d/8, d/2 - 10, d/4);
  triangle (x - d/10, y- d/4,x * d/10, y - d/4 +  
  d/2, x + d/3,y);
}
