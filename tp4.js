//Alan Valentin Giammarco - tprec
//Comision 1
//92814/9
//falta terminar: Corregir balas, corregir movimiento enemigo, diseño de tanque, boton de retorno y video
let tankX;
let tankY;
let tankSpeed = 7; // Velocidad del tanque
let tankRotation = 0; // Rotación del tanque
let bullets = [];
let walls = [];
let enemyTanks = [];
let cant = 1;
let imagen = [];
let escena = [];
let canShoot = true; // Variable para controlar el tiempo entre disparos
let tiempoInicio;
let tiempoTranscurrido = 0;

// Reprecentacion de las balas
class Bullet {
  constructor(x, y, rotation) {
    this.x = x;
    this.y = y;
    this.rotation = rotation;
    this.speed = 5;
  }

  move() {
    // Movimiento de la bala
    if (this.rotation === 0) {
      this.y -= this.speed;
    } else if (this.rotation === 180) {
      this.y += this.speed;
    } else if (this.rotation === 90) {
      this.x += this.speed;
    } else if (this.rotation === 270) {
      this.x -= this.speed;
    }
  }

  display() {
    push();
    translate(this.x, this.y);
    rotate(radians(this.rotation));
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(0, 0, 10, 10);
    pop();
  }

  isOffscreen() {
    return this.x < 0 || this.x > width || this.y < 0 || this.y > height;
  }

  checkCollision(wall) {
    
    return (
      this.x > wall.x - wall.w / 2 &&
      this.x < wall.x + wall.w / 2 &&
      this.y > wall.y - wall.h / 2 &&
      this.y < wall.y + wall.h / 2
    );
  }

  checkCollision(enemyTank) {
    
    let d = dist(this.x, this.y, enemyTank.position.x, enemyTank.position.y);
    return d < 20;
  }
}

// Paredes
class Wall {
  constructor(x, y, w, h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  display() {
    fill(201, 60, 32); // Color de las paredes
    rectMode(CENTER);
    rect(this.x, this.y, this.w, this.h);
  }
}

// Los tanques enemigos
class EnemyTank {
  constructor(x, y) {
    this.position = createVector(x, y);
    this.velocity = createVector(random(-1, 1), random(-1, 1)).mult(1); // Velocidad del tanque enemigo
    this.health = 2; // Vida del tanque enemigo
  }

  move() {
    // Movimiento de tanques enemigos
    let r = random(1);
    if (r < 0.25) {
      this.velocity.set(1, 0); // Mover a la derecha
    } else if (r < 0.5) {
      this.velocity.set(-1, 0); // Mover a la izquierda
    } else if (r < 0.75) {
      this.velocity.set(0, 1); // Mover hacia abajo
    } else {
      this.velocity.set(0, -1); // Mover hacia arriba
    }

    this.position.add(this.velocity);

    for (let wall of walls) {
      if (
        this.position.x > wall.x - wall.w / 2 &&
        this.position.x < wall.x + wall.w / 2 &&
        this.position.y > wall.y - wall.h / 2 &&
        this.position.y < wall.y + wall.h / 2
      ) {

        let newR = random(1);
        if (newR < 0.25) {
          this.velocity.set(1, 0); // Mover a la derecha
        } else if (newR < 0.5) {
          this.velocity.set(-1, 0); // Mover a la izquierda
        } else if (newR < 0.75) {
          this.velocity.set(0, 1); // Mover hacia abajo
        } else {
          this.velocity.set(0, -1); // Mover hacia arriba
        }
      }
    }
  }

  update() {}

  display() {
    push();
    translate(this.position.x, this.position.y);
    rectMode(CENTER);
    fill(0, 0, 255);
    rect(0, 0, 40, 25);
    pop();
  }

  isDestroyed() {
    return this.health <= 0;
  }

  hit() {
    this.health--;
  }

  checkPlayerCollision(playerX, playerY) {
    let d = dist(this.position.x, this.position.y, playerX, playerY);
    if (d < 20) {
      let angle = atan2(playerY - this.position.y, playerX - this.position.x);
      let overlap = 20 - d;
      let xOffset = cos(angle) * overlap;
      let yOffset = sin(angle) * overlap;
      this.position.x -= xOffset / 2;
      this.position.y -= yOffset / 2;
    }
  }
}

// Imagen inicio
function preload() {
  for (let i = 0; i < cant; i++) {
    imagen.push(loadImage('data/imagen' + i + '.png'));
  }
}

function setup() {
  for (let i = 0; i < 5; i++) {
    escena[i] = 0;
  }

  createCanvas(600, 600);
  tiempoInicio = millis();
  tankX = width / 2;
  tankY = height / 2;

  // Paredes límites
  walls.push(new Wall(width / 2, height - 20, width, 40)); // Pared inferior
  walls.push(new Wall(width / 2, 20, width, 40)); // Pared superior
  walls.push(new Wall(20, height / 2, 40, height)); // Pared izquierda
  walls.push(new Wall(width - 20, height / 2, 40, height)); // Pared derecha

  let wallWidth = width / 6; // Ancho de las paredes
  let wallHeight = height / 20; // Altura de las paredes
  let wallSpacing = 180;

  walls.push(new Wall(width / 2 - wallSpacing, height / 2, wallWidth, wallHeight)); // Pared izquierda
  walls.push(new Wall(width / 2 + wallSpacing, height / 2, wallWidth, wallHeight)); // Pared derecha
  walls.push(new Wall(width / 2, height / 2 - wallSpacing, wallHeight, wallWidth)); // Pared superior
  walls.push(new Wall(width / 2, height / 2 + wallSpacing, wallHeight, wallWidth)); // Pared inferior

  // Punto donde aparecen los tanques enemigos
  enemyTanks.push(new EnemyTank(random(width / 2 + 50, width - 50), random(50, height / 2 - 50))); // Tanque en la esquina superior derecha
  enemyTanks.push(new EnemyTank(random(50, width / 2 - 50), random(50, height / 2 - 50))); // Tanque en la esquina superior izquierda
}

function draw() {
  if (escena[0] === 0) {
    image(imagen[0], 0, 0, 600, 600);
  } else if (escena[0] === 1) {
    background(0);

    // Paredes
    for (let wall of walls) {
      wall.display();
    }

    // Mover el tanque
    moveTank();

    // Tanque principal
    push();
    translate(tankX, tankY);
    rotate(radians(tankRotation));
    rectMode(CENTER);
    fill(250, 250, 0);
    rect(0, 0, 40, 25);
    pop();

    // reloj en segundos
    tiempoTranscurrido = (millis() - tiempoInicio) / 1000;

    // Reloj fisico
    textSize(24);
    fill(0);
    textAlign(CENTER, TOP);
    text("Tiempo: " + tiempoTranscurrido.toFixed(2) + " segundos", width / 2, 10);

    // Movimiento de los tanques enemigos
    for (let i = enemyTanks.length - 1; i >= 0; i--) {
      let enemyTank = enemyTanks[i];
      enemyTank.move();
      enemyTank.update();
      enemyTank.display();

      // Balas a los enemigos
      for (let j = bullets.length - 1; j >= 0; j--) {
        let bullet = bullets[j];
        if (bullet.checkCollision(enemyTank)) {
          bullets.splice(j, 1);
          enemyTank.hit();
          if (enemyTank.isDestroyed()) {
            enemyTanks.splice(i, 1);
          }
          break;
        }
      }
    }

    // Balas
    for (let i = bullets.length - 1; i >= 0; i--) {
      let bullet = bullets[i];
      bullet.move();
      bullet.display();
      if (bullet.isOffscreen()) {
        bullets.splice(i, 1);
      } else {

        for (let j = walls.length - 1; j >= 0; j--) {
          let wall = walls[j];
          if (bullet.checkCollision(wall)) {
            bullets.splice(i, 1);
            break;
          }
        }
      }
    }
  }
}

// mouse 

function mousePressed() {
  if (escena[0] === 0) {
 
    escena[0] = 1;
  }
}

// Función para mover el tanque principal
function moveTank() {
}

// Función para las teclas

function keyPressed() {
  if (key === 'ArrowDown' && !checkWallCollision(tankX, tankY + tankSpeed)) {
    tankY += tankSpeed; // Mover hacia abajo
    tankRotation = 180;
  } else if (key === 'ArrowLeft' && !checkWallCollision(tankX - tankSpeed, tankY)) {
    tankX -= tankSpeed; // Mover hacia la izquierda
    tankRotation = 270;
  } else if (key === 'ArrowRight' && !checkWallCollision(tankX + tankSpeed, tankY)) {
    tankX += tankSpeed; // Mover hacia la derecha
    tankRotation = 90;
  } else if (key === 'ArrowUp' && !checkWallCollision(tankX, tankY - tankSpeed)) {
    tankY -= tankSpeed; // Mover hacia arriba
    tankRotation = 0;
  } else if (key === ' ' && canShoot) {
    
    // Disparar
    let bulletX = tankX;
    let bulletY = tankY;
    let bulletRotation = tankRotation;
    bullets.push(new Bullet(bulletX, bulletY, bulletRotation));
    canShoot = false;
    setTimeout(() => {
      canShoot = true;
    }, 500);
  }
}

function checkWallCollision(x, y) {
  
  for (let wall of walls) {
    if (
      x > wall.x - wall.w / 2 - 20 &&
      x < wall.x + wall.w / 2 - 20 &&
      y > wall.y - wall.h / 2 - 20 &&
      y < wall.y + wall.h / 2 - 20
    ) {
      return true;
    }
  }
  return false;
}
