//Alan Valentin Giammarco - tp3
//Comision 1
//92814/9
int estado=0;
int c= 16;
PImage[] faren = new PImage[c];

void setup(){
  size (600,600);
  for( int i= 0; i< c ; i++){
    faren[i]= loadImage ( i + ".png");
  }
}

void draw(){
  
  switch (estado){
    case 0:
    
     image( faren[ 0 ],0,0,600,600);
     textSize(30);
     fill(0);
     text("empezar",40,140);
     boton (530,530,100);
     break;
     
     case 1:
     
    image (faren[1],0,0,600,600);
    
  }
  }
