// Alumno: Alan Giammarco
// legajo: 92814/9
// comisiòn 1 
// tp3

PImage tri;
int tam, cuenta;
String pantalla;
PFont tit,texto,normal;
void setup (){
size (800, 400);

tri = loadImage ("tri.jpeg");
tam=5;
cuenta=0;
pantalla="presentacion";
tit = loadFont ("tit.vlw");
texto = loadFont ("texto.vlw");
normal = loadFont ("normal.vlw");
}


void draw (){

background (0);
   println (cuenta);
if (cuenta==0 ){pantalla="presentacion";}
if (cuenta>=3 ){pantalla= "arte";}

if(pantalla.equals ("presentacion")){
  background (0);
  textAlign (CENTER);
  textFont (tit);
  text ("TP3: Op Art", width/2, 100);
  fill (250);
  textFont (texto, 25);
  text ("interacciones CON", width/2, 150);
   textFont (normal, 15);
    fill (200, 30, 160);
  text ("' r '\n\n'DELETE'\n\n'ENTER'", width/2, 200);
  fill (255, 0, 0);
  rect (200, 300, width/2, 80);
  fill (250);
  textFont (texto);
  text ("comenzar", 400, 350);
  }
  
  if(pantalla.equals ("arte")){
image (tri, 0, 0, 400, 400);

for (int arriba1= 400; arriba1<1000; arriba1 +=200){
 push();
translate(arriba1, 100);
inclina (0, 0, 200,200);
 pop();
 }
for (int arriba2= 500; arriba2<1000; arriba2 +=200){
  push();
translate(arriba2, 300);
inclina (0, 0, 200,200);
 pop();
  }

for (int arriba3= 500; arriba3<1000; arriba3 +=200){
  push();
translate(arriba3, 100);
 rotate (radians (180));
inclina (0, 0, 200,200);
 pop();
 }
 
 for (int arriba4= 400; arriba4<1000; arriba4 +=200){
 push();
 translate(arriba4, 300);
 rotate (radians (180));
inclina (0, 0, 200,200);
 pop();
 }
 
 
 image (tri, 0, 0, 400, 400);

 
}
}
void keyPressed() {
 if (key == ENTER) {
 tam =1;
 }
 if (key == BACKSPACE) {
 tam = 5;
 }
 if (key == 'r'){
   cuenta=0;
   }
}


void mousePressed(){
if (cuenta== 0&&  mouseX>200 && mouseX<600 && mouseY>300 && mouseY<380){
  cuenta =+3;
  }
}
