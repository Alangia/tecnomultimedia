void inclina (int posx, int posy, int ancho, int alto) {
  push();
 translate(posx, posy);
triangle(posx-ancho/2, posy+alto/2, 0, -alto/2, ancho/2, alto/2);
 pop(); 
  for (int i=100; i>0; i-=tam){
    for (int j=0; j<5; j+=tam){
    strokeWeight (5);
  if (i%2==0){
      stroke (255);
    }else{
    stroke (0);
  }
  
 rotate (radians(-1));
  triangle(posx-i, posy+i, 0-j, -i,+i, +i);

 }
}

 }
