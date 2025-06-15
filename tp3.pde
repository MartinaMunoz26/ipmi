// COM 3 -Martina Muñoz - LINK VIDEO EXPLICATIVO: https://youtu.be/gStiiEGtO98
PImage imgReferencia;
int cantCirculos = 49;
int columnas = 7;
int tam = 32;
boolean modoGrueso = false;
float[] variaciones; // un arreglo es como una caja grande que guarda variables, para no declarar muchas variables hasta llegar a los 49 circulos. Usando el indice de los arreglos para poder usar FOR
color[] coloresPorCirculo;
color colorPrincipal;

void setup() {
  size(800, 400);
  imgReferencia = loadImage("referencia.jpg");
  imgReferencia.resize(400, 400);
  noFill();

  variaciones = new float[cantCirculos]; // numeros reales
  coloresPorCirculo = new color[cantCirculos]; // almacena de tipo color

  colorPrincipal = color(103, 124, 98); // color inicial de los círculos
  reiniciar();
}

void draw() {
  background(203, 25, 15); // fondo rojo
  image(imgReferencia, 0, 0);
  dibujarGrilla();
}

void mousePressed() {
  modoGrueso = !modoGrueso;
  for (int i = 0; i < cantCirculos; i++) {
    variaciones[i] = random(-5, 5);
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }

  if (key == 'p' || key == 'P') {
    for (int i = 0; i < cantCirculos; i++) {
      float grosor = obtenerGrosor(i);
      if (grosor == 3 || grosor == 4) {
        coloresPorCirculo[i] = color(random(255), random(255), random(255));
      }
    }
  }

  if (key == 'c' || key == 'C') {
    for (int i = 0; i < cantCirculos; i++) {
      coloresPorCirculo[i] = colorPrincipal;
    }
  }
}

void reiniciar() {
  for (int i = 0; i < cantCirculos; i++) {
    variaciones[i] = 0;
    coloresPorCirculo[i] = colorPrincipal;
  }
}
