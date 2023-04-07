//Alan Valentin Giammarco - tp0
//Comision 1
//92814/9
PImage playa;
size(800, 400);
playa=loadImage ("data/playacasita.jpg");
image(playa, 0, 0, 402, 402);
stroke(46, 155, 242);
fill(46, 155, 242);
rect(402, 0, 800, 200);//cielo
noFill();
stroke(175, 216, 215);
fill(175, 216, 215);
rect(402, 235, 900, 200);//arena
noFill();
fill (240, 234, 194);
stroke (240, 234, 194);
rect(402, 350, 500, 55); //arena 2
fill (13, 90, 165);
stroke (13, 90, 165);
rect(402, 200, 500, 35); //mar azul
stroke(152, 104, 26);
fill(152, 104, 26);
quad(600, 80, 590, 80, 530, 200, 540, 200);//tronco
noFill();
stroke(240, 216, 179);
fill(240, 216, 179);
quad(402, 150, 470, 70, 570, 200, 402,200);//techo de casa
noFill();
stroke(203, 129, 60);
fill(203, 129, 60);
rect(402,200, 150, 35);//entrada casa
noFill();
stroke(147,147, 147);
fill(147, 147, 147);
ellipse(620, 265, 50, 20);//piedra chica 3
ellipse(620, 235, 40, 20);//piedra chica 1
ellipse(650, 235, 15, 20);//piedra chica 2
ellipse(720, 340, 130, 90);//piedra grande 
noFill();
stroke(108, 168, 95);
fill(108, 168, 95);
ellipse(580, 90, 95, 95);//palmera
noFill();
