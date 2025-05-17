// Martina Muñoz - COM 3 //

PImage  imagen0, imagen1, imagen2, imagen3;
PFont fuente;
int numPantalla = 0;
int contadorTiempo = 0;

// Variables para pantalla 0
float posYContenida;
float velYContenida;

// Variables para pantalla 1
float posYToroide;
float velYToroide;
int repeticionToroide;
int repeticionPantalla1;
boolean animacion1 = false;

// Variables para pantalla 2
float tamañoTexto;
float tamañomax;
boolean animacion2 = true;

// Variables para pantalla 3
float posXRebote;
float velXRebote;

void setup() {
  size(640, 480);
  frameRate(30);

  imagen0 = loadImage("imagen0.jpg");
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

  fuente = loadFont("Poppins-SemiBold-32.vlw");
  textFont(fuente);
  textAlign(CENTER, CENTER);

  // asignacion pantalla 0
  posYContenida = -50;
  velYContenida = 2;

  // asignacion pantalla 1
  posYToroide = -50;
  velYToroide = 5;
  repeticionToroide = 0;
  repeticionPantalla1 = 3;

  // asignacion pantalla 2
  tamañoTexto = 5;
  tamañomax = 38;

  //asignacion pantalla 3
  posXRebote = 50;
  velXRebote = 4;
}

void draw() {

  contadorTiempo++;

  // PANTALLA 0 con el botón de iniciar
  if (numPantalla == 0) {
    image(imagen0, 0, 0, width, height);

    posYContenida += velYContenida;
    if (posYContenida > height / 2) {
      posYContenida = height / 2;
    }

    fill(0);
    textSize(28);
    text("Presentación: PARÁSITOS URBANOS", width / 2, posYContenida);

    // boton de iniciar
    if (
      mouseX > width / 2 - 50 && mouseX < width / 2 + 50 &&
      mouseY > height - 100 && mouseY < height - 60
    ) {
      fill(200, 200, 255);
    } else {
      fill(255);
    }
    rect(width / 2 - 50, height - 100, 100, 40);
    fill(0);
    textSize(15);
    text("INICIAR", width / 2, height - 80);
  }

  // PANTALLA 1
  else if (numPantalla == 1) {
    image(imagen1, 0, 0, width, height);

    if (!animacion1) { //operador logico NO

      float y = map(contadorTiempo, 0, 100, 20, 490 - 140);
      fill(94, 255, 3);
      textSize(20);
      textAlign(CENTER, CENTER);
      text("Organismos hechos de basura tecnológica\nque sobreviven robando energía.\nSe mueven e interactúan en la ciudad.",
           width / 2, y);

      if (contadorTiempo >= 100) {
        animacion1 = true;
        posYToroide = y;
      }
    } else {
      posYToroide += velYToroide;

      if (posYToroide > height + 80) {
        posYToroide = -80;
        repeticionToroide++;
      }

      fill(94, 255, 3);
      textSize(20);
      textAlign(CENTER, CENTER);
      text("Organismos hechos de basura tecnológica\nque sobreviven robando energía.\nSe mueven e interactúan en la ciudad.",
           width / 2, posYToroide);
    }

    if (repeticionToroide >= repeticionPantalla1) {
      numPantalla = 2;
      contadorTiempo = 0;
    }
  }

  // PANTALLA 2
  else if (numPantalla == 2) {
    image(imagen2, 0, 0, width, height);

    if (animacion2) {
      tamañoTexto += 0.5;
      if (  tamañoTexto >= tamañomax) {
        tamañoTexto = tamañomax;
       animacion2 = false;
      }
    } else {
     tamañoTexto -= 0.5;
    }

    fill(255);
    textSize(tamañoTexto);
    text("Creador: Gilberto Esparza", width / 2, height / 2);

    if (!animacion2 && tamañoTexto <= 5) { // operador logico: NO e Y
      numPantalla = 3;
      contadorTiempo = 0;
    }
  }

  // PANTALLA 3 con el boton de reiniciar
  else if (numPantalla == 3) {
    image(imagen3, 0, 0, width, height);

    posXRebote += velXRebote;
    if (posXRebote > width - 400 || posXRebote < 20) { // operador logico O 
      velXRebote *= -1;
    }

    fill(23, 49, 9);
    textSize(15);
    textAlign(LEFT, CENTER);
    text("El objetivo es explorar la simbiosis entre\ntecnología y medio ambiente, \n y cómo los desechos tecnológicos pueden\ntransformarse en nuevas formas de vida artificial.", posXRebote, height / 2);

    // boton de reinciar
    if (
      mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && // operador logico Y
      mouseY > height - 100 && mouseY < height - 60 // operador logico Y
    ) {
      fill(180, 255, 180);
    } else {
      fill(200);
    }
    rect(width / 2 - 50, height - 100, 100, 40);
    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("REINICIAR", width / 2, height - 80);
  }
}

void mousePressed() {
  //  Pantalla 0 a 1
  if (numPantalla == 0 &&
      mouseX > width / 2 - 50 && mouseX < width / 2 + 50 &&
      mouseY > height - 100 && mouseY < height - 60) {
    numPantalla = 1;
    contadorTiempo = 0;

    // Reiniciar pantalla 0
    posYContenida = -50;

    // Reiniciar para pantalla 1
    posYToroide = -50;
    repeticionToroide = 0;

  }

  // Pantalla 3 a 0
  if (numPantalla == 3 &&
      mouseX > width / 2 - 50 && mouseX < width / 2 + 50 &&
      mouseY > height - 100 && mouseY < height - 60) {
    numPantalla = 0;
    contadorTiempo = 0;

    // Reiniciar pantalla 1
    animacion1 = false;
    repeticionToroide = 0;
    posYToroide = height / 2;

    // Reiniciar pantalla 2
    tamañoTexto  = 5;
   animacion2 = true;

    // Reiniciar pantalla 3
    posXRebote = 50;
    velXRebote = 4;
  }
}
