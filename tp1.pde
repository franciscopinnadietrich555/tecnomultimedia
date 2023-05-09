//Tp 1
// Francisco Pinna Dietrich 
//Legajo: 90949/5
// Comision 3

int estado;
PImage imagen;
PImage imagen1;
PImage imagen2;
PFont miFuente;
boolean resetButton = false;
float x;
float y = 0;
float speed = 2;



void setup() {
  size(640, 480);
  estado = 0;
  x = 0;
  imagen= loadImage("arte foto.jpg");
  imagen1= loadImage("arte foto1.jpg");
  imagen2= loadImage("arte foto2.jpg");
  miFuente= loadFont("BellMT-48.vlw");
}
void draw() {
  background(118,171,216);
  if (resetButton) {
    fill(200, 0, 0);
  } else {
    fill(255, 0, 0);
  }
  rect(10, 10, 80, 30);
  fill(255);
  textSize(16);
  text("Reiniciar", 20, 30);
  if ( estado==0 ) {
    //pantalla de inicio:
    fill(0);
    textSize(40);
    textFont(miFuente);
    text("ARTE TECNOLOGICO", 100, 200);
    text("Trabajo Practico 1",155,250);
  } else if ( estado==1 ) {
    //pantalla de inicio:
    image(imagen1, 100,300);
    fill(255,0,0);
    textSize(40);
    fill(x*255/640); //regla de tres
    text("Que tan importante es el Arte Tecno. ", x, 100);
    textSize(30);
    text(" Las nuevas tecnologías se han incorporado en ",10,200);
    text("en el Arte para crear nuevas formas de expresión",10,230);
    text("de expresión,de transmitir conceptos,ideas, ",10,260);
    text("emociones y plasmar nuestra realidad.",10,290);

    //aumentamos x en cada fotograma:
    x+=2;
    //x = x+2;
    if ( x>width+100 ) {
      //flujo de estado: 1 a 2:
      estado = 2;
      x = 700;
    }
  } else if ( estado==2 ) {
    //pantalla de inicio:
    fill(255);
    textSize(40);
    text("Ejemplo de Arte Tecnologico:",x, 100);
    textSize(30);
    text("Pintura terapéutica hecho por 'Evru', 2000 ", x, 140);
    image(imagen, 150,200);

    //comportamiento de la variable:
    x-=2;
    if (x<-100) {
      //flujo de estado de 2 a 3:
      estado = 3;
      x = 0;
    }
  } else if ( estado==3 ) {
    //pantalla de inicio:
    image(imagen2, 0,100);
    fill(255);
    textSize(40);
    text("Evru empezó a aplicar la tecnología", x, 60);
    text("en los años 70s.",x,90);
    textSize(30);
    fill(98,124,147);
    text("En el año 2000 presentó Tecura en el Macba",x,200);
   text("Tecura es una herramienta para crear obras",x,230);
   text("pictóricas digitales de manera intuitiva",x,260);
    text("a modo de terapia",x,290);
    text("El programa, de descarga gratuita,",x,320);
    text("va por su cuarta actualización.",x,350);
   
    x+=0.5;
    //evaluo posible cambio de estado:
    if ( x> width+50) {
      //flujo de estado:
      estado = 0;
    }
  }
}

void mousePressed() {

 if (mouseX > 10 && mouseX < 90 && mouseY > 10 && mouseY < 40) {
    x = 0;
    y = 0;
    speed = 2;
    resetButton = false;
  } else {
    speed += 1;
  }

  if ( estado==0 ) {
    //flujo de estado de 0 a 1:
    estado = 1;
    x=-300;
  } else if ( estado==1 ) {
    estado = 2;
  } else if ( estado==2 ) {
    estado = 3;
  } else if ( estado==3) {
    estado = 0;
  }
}
