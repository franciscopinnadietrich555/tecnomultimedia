//Trabajo Practico n3
//Francisco Pinna Dietrich 90949/5
//Comision 3
//Link del video: https://youtu.be/Vdu9c4UKBKs


PImage[] impa = new PImage[15];
String[] txpa = new String[14];
String estado = "ini";

int p = 1;

void setup() {
  size(600, 600);

  for (int i = 1; i < 15; i++)
    impa[i] = loadImage("img" + i + ".jpg");

  // Arreglos de texto
  txpa[0] = " Creditos: Hecho por Francisco Pinna Dietrich " ;
  txpa[1] = " PATITO FEO de Christian Andersen";
  txpa[2] = " El cuento comienza con un patito que nace en un corral \n  junto a sus hermanos, pero es diferente a ellos. Desde el\n  principio, es rechazado y maltratado por ser más grande y\n  feo ¿El patito decide quedarse en el corral o irse?";
  txpa[3] = " Su familia nunca lo termina de aceptar y \n vive infeliz por siempre";
  txpa[4] = " Se embarca en una travesía por diferentes lugares en busca\n de aceptación. Sin embargo, en todos los sitios a los que\n  llega, es rechazado por su apariencia y sufre mucho.\n  Al ser tan rechazado decide ir por ¿el camino \n derecho o el izquierdo? ";
  txpa[5] = " Sigue encontrando lugar en donde es rechazado y\n  termina siendo infeliz";
  txpa[6] = " Sigue por camino libre de animales, y\n  encuentra dos lugares para refugiarse en el invierno, \n ¿que elige una cueva o un hueco de un tronco?";
  txpa[7] = " El tronco no lo protege del frio y le da hipotermia";
  txpa[8] = " Durante el invierno, el patito pasa por momentos difíciles,\n enfrentando el frío y la soledad en la cueva.\n A medida que pasa el tiempo, él va creciendo y \n  transformándose lentamente.";
  txpa[9] = " Con la llegada de la primavera, el patito se encuentra con\n una bandada de hermosos cisnes.\n ¿Que hace el patito se acerca a ellos o los ignora?";
  txpa[10] = " Al ignorarlos nunca sabe la verdad";
  txpa[11] = " Aunque temeroso de ser rechazado nuevamente, \n se acerca a ellos y descubre que él también es un cisne.";
  txpa[12] = " Los demás cisnes lo aceptan y lo elogian por su belleza.\n El patito se siente feliz y \n finalmente encuentra su lugar en el mundo,\n rodeado de seres como él. \n F I N";
}

// Función que muestra la pantalla
void pantall(int nF, int nT) {
  textSize(20);
  fill(255);
  image(impa[nF], 0, 0, 600, 600);
  text(txpa[nT], 100, 100);
}

// Botones
void dosBotones(String b1, String b2) {
  fill(200);
  ellipse(180, 500, 120, 60);
  ellipse(480, 500, 120, 60);
  fill(0);
  text(b1, 150, 510);
  text(b2, 450, 510);
}

// Distancia del mouse al botón
boolean dis(int px, int py) {
  boolean ok = false;

  if (dist(mouseX, mouseY, px, py) < 90)
    ok = true;

  return ok;
}

// De acuerdo al estado, muestra la pantalla correspondiente
void draw() {
  if (estado == "ini") {
    pantall(2, 1);
    dosBotones("creditos", "inicio");
  } else if (estado == "creditos") {
    pantall(1, 0);
  } else if (estado == "pan1") {
    pantall(3, 2);
      dosBotones("quedarse", "irse");
  } else if (estado == "pan2") {
    pantall(4, 3);
  }else if (estado == "pan3") {
      pantall(5,4);
      dosBotones("izquierda", "derecha");
  } else if (estado == "pan4") {
    pantall(6, 5);
  } else if (estado == "pan5") {
    pantall(5, 6);
  } else if (estado == "pan6") {
    pantall(7, 6);
     dosBotones("tronco", "cueva");
  } else if (estado == "pan7") {
    pantall(8, 7);
    } else if (estado == "pan8") {
    pantall(9, 8);
      } else if (estado == "pan9") {
    pantall(11, 9);
     dosBotones("ignorarlos", "acercarse");
  } else if (estado == "pan10") {
    pantall(12, 10);
  } else if (estado == "pan11") {
    pantall(13, 11);
     } else if (estado == "pan12") {
    pantall(14, 12);
 
  }
}
// evento del mouse, cada vez que hago clic cambio de estado
void mousePressed(){
   
    if(estado == "ini"){
      if(dis(240,530))
       estado = "creditos";
        else
         if(dis(540,530))
         estado = "pan1";
    }else
     if(estado == "creditos"){
       estado="ini";  
     }else
      if(estado == "pan1"){
        if(dis(240,530))
       estado = "pan2";
        else
         if(dis(540,530))
         estado = "pan3";
      }else
     if(estado == "pan2"){
       estado="ini";  
     }else
         if(estado == "pan3"){
       if(dis(240,530))
       estado = "pan6";
          else
         if(dis(540,530))
         estado = "pan4";
    }else
     if(estado == "pan4"){
        estado = "ini";
     }else
     if(estado == "pan6"){
       if(dis(240,530))
       estado = "pan7";
          else
         if(dis(540,530))
         estado = "pan8";
     }else
      if(estado == "pan7"){
        estado = "ini";
      }else
      if(estado== "pan8"){
        estado = "pan9";
      }else
       if(estado == "pan9"){
       if(dis(240,530))
       estado = "pan10";
          else
         if(dis(540,530))
         estado = "pan11";
     }else
      if(estado == "pan10"){
        estado = "ini";
     }else
      if(estado == "pan11"){
        estado = "pan12";
        }else
      if(estado == "pan12"){
        estado = "ini";
}  
}  
         
 
