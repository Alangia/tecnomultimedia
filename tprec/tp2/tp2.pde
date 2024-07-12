// Alumno: Alan Giammarco
// legajo: 92814/9
// comisiòn 1 
// tp2

PImage principal;
PImage tetris1;
PImage tetris2;
PImage tetris3;
PImage tetris4;
PFont font;
int tetris = 1;
int textoY = -480; 
int velocidadTexto = 1; 

//Recordarme que tetris esta en int.
//Tengo que acmodar el texto.
//tengo que hacer que el texto empiece antes

String texto1 = "El Tetris fue creado en la Unión Soviética \nen 1984 por el diseñador de videojuegos Alexey Pajitnov. \nSu inspiración fue el juego de pentominós, combinado \ncon la mentalidad de resolución de problemas típica \nde la era soviética.";
String texto2 = "Aunque inicialmente fue diseñado para \ncomputadoras soviéticas, el Tetris se convirtió \nen un fenómeno global cuando se lanzó \nen occidente en 1986, llegando a las consolas de Nintendo \ny a las PC. Su simplicidad y adictividad \nlo convirtieron en un éxito instantáneo.";
String texto3 = "El Tetris no solo se convirtió en uno de los videojuegos \nmás populares de todos los tiempos, sino que también dejó \nun impacto duradero en la cultura popular. Ha sido adaptado \na casi todas las plataformas de juego y ha inspirado películas, \nmúsica e incluso investigaciones científicas sobre su influencia \nen la mente humana.";
String texto4 = "A pesar de haber sido creado hace décadas, el Tetris \nsigue siendo relevante hoy en día. Sigue siendo jugado \npor millones de personas en todo el mundo y ha evolucionado \ncon el tiempo, adaptándose a nuevas tecnologías \ny plataformas de juego. Su legado perdura \ncomo uno de los grandes iconos de la industria \ndel entretenimiento.";

void setup() {
  size(640, 480);
  font = createFont("Symtext", 15);
  textFont(font);
  
  tetris1 = loadImage("tetris1.png");
  principal = loadImage("principal.jpg");
  tetris2 = loadImage("tetris2.png");
  tetris3 = loadImage("tetris3.jpg");
  tetris4 = loadImage("tetris4.jpg");
}

void draw() {
  background(255);
  
  if (tetris == 1) {
    image(principal, 0, 0, width, height);
    drawCenteredText(texto1, 40, textoY + 40);
  } else if (tetris == 2) {
    image(tetris2, 0, 0, width, height);
    drawCenteredText(texto2, 40, textoY + 40);
  } else if (tetris == 3) {
    image(tetris3, 0, 0, width, height);
    drawCenteredText(texto3, 40, textoY + 40);
  } else if (tetris == 4) {
    image(tetris4, 0, 0, width, height);
    image(tetris1, width - 120, height - 60, 100, 50);
    drawCenteredText(texto4, 40, textoY + 40);
  }
  textoY += velocidadTexto;
  
  if (textoY > height + 100) {
    textoY = -480;
    
    if (tetris < 4) {
      tetris++;
    }
  }
}

void mousePressed() {
  if (tetris == 4 && mouseX > width - 120 && mouseX < width - 20 && mouseY > height - 60 && mouseY < height - 10) {
    tetris = 1; // Volver a la primera imagen cuando se presiona el botón de reinicio
  }
}

void drawCenteredText(String text, int x, int centerY) {
  String[] lines = split(text, '\n');
  int lineHeight = 20; // Ajusta el espaciado entre líneas
  int totalHeight = lines.length * lineHeight;
  int startY = centerY - totalHeight/2;
  
  drawLine(lines, x, startY, 0, lineHeight);
}

void drawLine(String[] lines, int x, int y, int index, int lineHeight) {
  if (index >= lines.length) return;
  
  String line = lines[index];
  int lineWidth = int(textWidth(line));
  int startX = x + (width - 2 * x - lineWidth) / 2;
  text(line, startX, y + index * lineHeight);
  
  drawLine(lines, x, y, index + 1, lineHeight);
}
