//Trabajo Practico n2
// Francisco Pinna Dietrich  90949/5
//Comision 3 


PImage miImagen;

float angle = 0;
float size = 200;
float negSize = -200;

float centroX1;
float centroY1;

int vuelta = 0;

void setup() {
  size(800, 400);
  miImagen = loadImage("arteoptico.jpeg");
  centroX1 = width / 4; 
  centroY1 = height / 2;  
}

void draw() {
  background(255);
  image(miImagen, 200, 60);
  
  for (vuelta = 1; vuelta <= 4; vuelta++) {
    for (int i = 1; i <= 6; i++) {
      println(vuelta, i);
      println("size: " + size, "neg: " + negSize);

      // Cuadrado
      push();
      noStroke();
      fill(255);
      if (vuelta == 1) {
        translate(centroX1, centroY1);
      } else if (vuelta == 2) {
        translate(centroX1 + width / 2, centroY1);
      } else if (vuelta == 3) {
        translate(centroX1, centroY1 + height / 4);
      } else {
        translate(centroX1 + width / 2, centroY1 + height / 4);
      }
      rotate(angle);
      rectMode(CENTER);
      rect(0, 0, size, size);
      pop();

      // Triangulo
      push();
      if (vuelta == 1) {
        translate(centroX1, centroY1);
      } else if (vuelta == 2) {
        translate(centroX1 + width / 2, centroY1);
      } else if (vuelta == 3) {
        translate(centroX1, centroY1 + height / 4);
      } else {
        translate(centroX1 + width / 2, centroY1 + height / 4);
      }

      rotate(angle);
      noStroke();
      fill(0);

      if (vuelta == 1 || vuelta == 4) {
        triangle(0, 0, negSize / 2, size / 2, size / 2, size / 2);
        triangle(0, 0, negSize / 2, negSize / 2, size / 2, size / 2);
      } else if (vuelta == 2 || vuelta == 3) {
        triangle(0, 0, negSize / 2, negSize / 2, negSize / 2, size / 2);
        triangle(0, 0, size / 2, size / 2, size / 2, negSize / 2);
      }
      pop();
      angle += HALF_PI;
      size -= 33.333;
      negSize += 33.333;
      if (i == 6) {
        println(size, negSize);
        size = 200;
        negSize = -200;
        noLoop();
      }
    }
  }
}
