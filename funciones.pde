// Función con ciclos for anidados que dibuja la grilla de círculos
void dibujarGrilla() {
  for (int fila = 0; fila < cantCirculos / columnas; fila++) {
    for (int col = 0; col < columnas; col++) {
      int i = fila * columnas + col;
      float posX = 420 + col * 55 + 14;
      float posY = fila * 58 + 25;
      float grosor = obtenerGrosor(i);
      float tamActual = tam + variaciones[i];
      color colCirculo;

      if (dist(mouseX, mouseY, posX, posY) < 50) {
        grosor *= 2;
        colCirculo = color(203, 25, 15);  
      } else {
        colCirculo = coloresPorCirculo[i];
      }

      dibujarCirculo(posX, posY, tamActual, grosor, colCirculo);
    }
  }
}

// Función propia con parámetros que NO retorna valor, dibuja un círculo
void dibujarCirculo(float x, float y, float diametro, float grosor, color c) {
  stroke(c);
  strokeWeight(grosor);
  noFill();
  ellipse(x, y, diametro, diametro);
}

// Función propia con parámetros que RETORNA un valor (grosor según modo y posición)
float obtenerGrosor(int i) {
  if (modoGrueso) {
    return (i % 2 == 0) ? 3 : 2;
  } else {
    return (i % 2 == 0) ? 1 : 4;
  }
}
