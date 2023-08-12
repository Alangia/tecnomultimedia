void Botones(int x, int y, int ancho, int alto, String mitexto, int l1, int l2){
  rectMode(CENTER);
  fill(255, 225, 100);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER);
  text(mitexto, x, y, l1, l2);
}

boolean dentrodeBoton(int x, int y, int ancho, int alto) {
  if (mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto){
      return true;
  }
  else{
     return false;
  }
}

void mousePressed(){
  if(pantalla==0 && dentrodeBoton(500, 550, 150, 60)){
    pantalla=1;
 } 
 
 if(pantalla == 0 && dentrodeBoton(125, 550, 200, 60)){
   pantalla = 13;
 }
 
 if(pantalla==1 && dentrodeBoton(500, 500, 160, 60)){
   pantalla = 2;
 }
 
  else if(pantalla==2 && dentrodeBoton(100, 300, 160, 60)){
   pantalla = 3;
 }
 
  else if (pantalla == 3 && dentrodeBoton(100, 300, 160, 60)){
   pantalla = 2;
 }
  
  else if(pantalla==2 && dentrodeBoton(500, 300, 160, 60)){
   opcionesB = 3;
 }
 
  else if(opcionesB ==3 && dentrodeBoton(300, 550, 150, 60)){
   opcionesB = 0;    
 }
  
  else if (pantalla ==3 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 4;
 }
 
  else if (pantalla ==4 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 5;
  }
  
  else if(pantalla==5 && dentrodeBoton(100, 300, 160, 60)){
   pantalla = 6;
  }
  
  else if (pantalla == 6 && dentrodeBoton(100, 300, 160, 60)){
   pantalla = 5;
  }
  
  else if( pantalla ==5 && dentrodeBoton(500, 300, 160, 60)){
   opcionesB= 6;
  }
  
  else if(opcionesB ==6 && dentrodeBoton(300, 550, 150, 60)){
   opcionesB = 0; 
  }
  
  else if(pantalla==6 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 7;
  }
 
  else if(pantalla==7 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 8;
  }

  else if(pantalla==8 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 9;
  }

  else if(pantalla==9 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 10;
  }
  
  else if(pantalla==10 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 11;
  }
     
  else if (pantalla == 11 && dentrodeBoton(100, 300, 160, 60)){
   pantalla = 10;
  }
  
  else if( pantalla ==10 && dentrodeBoton(100, 300, 160, 60)){
   opcionesB= 11;
  }
  
  else if(opcionesB ==11 && dentrodeBoton(300, 550, 150, 60)){
   opcionesB = 0;    
  }
    
  else if(pantalla==11 && dentrodeBoton(500, 300, 160, 60)){
   pantalla = 12;
  }
  
  else if(pantalla==12 && dentrodeBoton(300, 400, 150, 60)){
   pantalla = 13;
  }
  
  else if(pantalla==13 && dentrodeBoton(300, 550, 150, 60)){
   pantalla = 0;
  }
}
