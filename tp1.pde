PImage principal;
PImage reinicio;
PImage teatrocolon;
PImage interiorcolon2;
PImage interiorcolon;
PFont font;
int colon = 1;
int numero =0;
String texto1 = "Colon, el treatro de la Ciudad Autonoma de Buenos Aires";
String texto2 = "Originalmente la cúpula de la sala principal fue pintada \n por Marcel Jambon, un artista francés, y contó con la colaboración \n de Jean Baptiste Edouard Detaill. Las pinturas fueron realizadas \n en su atelier de París y representaban al dios Apolo en un carro\n tirado por cuatro corceles blancos, presidiendo\n un cortejo de musas.";
String texto3 = "El teatro Colón funcionó en dos edificios, el primero ubicado en\n la Plaza de Mayo hasta 1888 y el segundo situado frente a la Plaza Lavalle, \naunque tardó 20 años en ser construido hasta\n su inauguración en 1908.";
String texto4 = "Este terreno antiguamente albergaba la Estación del Parque,\n la primera estación ferroviaria de la República Argentina \ncomo cabecera del Ferrocarril Oeste de Buenos Aires.";


void setup() {
  size(640, 480);
  // tipografia
font = loadFont("data/ErasITC-Bold-18.vlw");
  // imagenes
  reinicio = loadImage("data/reinicio.png");
  principal = loadImage("data/principal.jpg");
  teatrocolon = loadImage("data/teatrocolon.jpg");
  interiorcolon = loadImage("data/interiorcolon.jpg");
  interiorcolon2 = loadImage("data/interiorcolon2.jpg");
  textFont(font);
}

void draw(){

   background(200);
  if (colon == 1) {
     background (255);
      image(principal, 0, 0, 640, 480);
      fill(255);
      text(texto1, 40, numero);
       numero=numero+1;
          if (numero == 600){
          colon=2;
          numero=0;
        }
  } else if (colon == 2) {
       background(255);
      image(teatrocolon, 0, 0, 640, 480);
      fill(255);
      text(texto2, 10, numero);
       numero=numero+1;
          if (numero == 590){
          colon=3;
          numero=0;
          }
  } else if (colon == 3) {
       background(255);
      image(interiorcolon2, 0, 0, 640, 480);
      fill(255);
      text(texto3, 5, numero);
       numero=numero+1;
       if (numero == 590){
          colon=4;
          numero=0;
          }
    } else if (colon == 4) {
       background(255);
      image(interiorcolon, 0, 0, 640, 480);
      image(reinicio, 530, 400, 100, 50);
      fill(255);
      text(texto4, 40, numero);
       numero=numero+1;
    if (numero == 6000){
         
          }
}
}
void mousePressed(){

if (mouseX>530 && mouseX<630 && mouseY>400 && mouseY<450 && colon==4){
    colon=1;
    numero=0;
}
}
