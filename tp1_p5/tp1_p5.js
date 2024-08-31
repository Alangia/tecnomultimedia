// Alumno: Alan Giammarco
// legajo: 92814/9
// comisiòn 2 
// tp1_p5
//video:https://youtu.be/zGchp4cOwPM

let ilusion;
let tam, cuenta;
let pantalla;
let tit, texto, normal;

function preload() {
  ilusion = loadImage("data/ilusion.jpeg");
  texto = loadFont("data/texto.ttf");
  normal = loadFont("data/normal.ttf");
}

function setup() {
  createCanvas(800, 400);
  tam = 5;
  cuenta = 0;
  pantalla = "presentacion";
}

function draw() {
  background(0);
  
  if (pantalla === "presentacion") {
    mostrarPresentacion();
  } else if (pantalla === "arte") {
    mostrarArte();
  }
}
