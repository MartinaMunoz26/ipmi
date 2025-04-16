PImage Mart;

void setup () {

  // foto referencia
Mart= loadImage ("foto.jpg");

  // tamaño de la ventana
size (800, 400);

  // color del fondo
background (214, 209, 209);
}

void draw () {

  println ("X:");
  println (mouseX);

  println ("Y:");
  println (mouseY);

  // foto referencia
image (Mart, 0, 0, 400, 400);

  // Fondo claro
fill(230);
rect(400, 0, 400, 400);

  // fondo derecho
fill(214, 209, 209);
noStroke();
rect(400, 0, 400, 400);

  //cuello
fill(237, 193, 156);
rect (559, 280, 85, 100, 30);

  // cara
fill(242, 189, 145);
ellipse(600, 180, 180, 220);

  //pecho
fill(237, 193, 156);
rect (410, 300, 380, 260, 100); 

  //vestido
fill (35, 22, 49);
stroke (35, 22, 49);
strokeWeight(10);
  //tiras del vestido
line(559, 300, 501, 399);
line(641, 301, 700, 396);
rect (470, 354, 270, 190, 100);

  // color y grosor de las cejas
noFill();
stroke(61, 37, 25);
strokeWeight(8);
  // ceja izq
bezier(528, 148, 543, 142, 560, 135, 580, 148);
  // ceja der
bezier(670, 148, 655, 142, 638, 135, 618, 148);

  // Sombra de ojos
noStroke();
fill(242, 182, 120); //
ellipse(560, 166, 50, 24); // izq
ellipse(640, 166, 50, 24); // der
 // sombra debajo del ojo
stroke (155, 102, 66); //); 
strokeWeight(4); 
arc(560, 171, 42, 20, 0, PI); // izq
arc(640, 171, 42, 20, 0, PI); // der
  // fondo del ojo
noStroke();
fill(255);
ellipse(560, 170, 40, 20); // izq
ellipse(640, 170, 40, 20); // der
  
  // color de ojos
fill(59, 32, 8);
ellipse(560, 170, 15, 15); // izq
ellipse(640, 170, 15, 15); // der
  // Pupila
fill(0);
ellipse(560, 170, 6, 6); // ojo izq
ellipse(640, 170, 6, 6); // ojo der
  // Reflejo chiquito del ojo
fill(255);
ellipse(557, 167, 3, 3); // izq
ellipse(637, 167, 3, 3); // der
 
  // Nariz

 // Lineas de arriba
stroke(240, 181, 139);
strokeWeight(3);
line(590, 160, 590, 190);
stroke(240, 181, 139);
strokeWeight(3);
line(607, 160, 607, 190);
 // Aritos de la nariz (septum)
noFill();
stroke(168, 161, 152);
strokeWeight(2);
bezier(592, 218, 592, 190, 604, 190, 604, 218);
 // bolitas del arito
noFill();
stroke(168, 161, 152) ;
strokeWeight(1.2);
ellipse(593, 219, 3, 3);  // izq
ellipse(605, 219, 3, 3);  // der
 // Redondeo de la nariz
noStroke();
fill (240, 181, 139);
ellipse(599, 202, 40, 23);
 // Aritos de la nariz (nostril)
stroke(168, 161, 152) ;
ellipse(585, 194, 2, 2); // izq
ellipse(614, 194, 2, 2); // der

 // boca
fill(199, 109, 101);
noStroke();
beginShape();

 // Labio superior
vertex(570, 248);
bezierVertex(585, 235, 615, 235, 630, 248);
 // Labio inferior
bezierVertex(615, 263, 585, 263, 570, 246);
endShape(CLOSE);

 // Línea entre los labios
stroke(120, 60, 60);
strokeWeight(2);
line(569, 246, 632, 248);

 // aritos
noFill();
stroke(168, 161, 152) ;
strokeWeight(1.5);

 // Aro izquierdo (abierto arriba)
bezier(583, 247, 579, 253, 584, 266, 584, 254);

 // Aro derecho (abierto arriba, simétrico)
bezier(617, 247, 621, 253, 616, 266, 616, 254);

 // maquillaje
 
 // nariz
noStroke();
fill(247, 231, 185);
ellipse(600, 203, 14, 7);

 // labios
noStroke();
fill(247, 231, 185);
ellipse(600, 238, 10, 5);

 //delineador
fill(0);

 //  izq
triangle(530, 167, 540, 167, 541, 174);
 // der
triangle(669, 167, 660, 167, 661, 174);

stroke(0); 
strokeWeight(4); 
noFill();
arc(560, 171, 42, 20, PI, TWO_PI); // izq
arc(640, 171, 42, 20, PI, TWO_PI); // der

//  ojos

// iluminador
stroke (247, 231, 185);

//  izq
triangle(583, 173, 577, 175, 583, 174);
// der
triangle(620, 173, 614, 175, 620, 174);

   // pelo
stroke(52, 31, 11);
strokeWeight(32);
noFill();

ellipse(597, 70, 50, 15);

 // mechón izq (1)
bezier(594, 80, 503, 116, 503, 128, 494, 200);
 // mechón der (1)
bezier(600, 80, 740, 130, 690, 200, 690, 187);


 // mechita platinada der (2)
stroke (175, 138, 96);
strokeWeight(11);
noFill();
bezier(660, 125, 680, 120, 710, 200, 680, 290 );


 //mechita platinada izq(2)
bezier(520, 156, 540, 180, 470, 200, 521, 272);

 //mechita dorada (3)
stroke (133, 93, 48);
strokeWeight(15);
noFill();
bezier(591, 95, 490, 182, 476, 200, 494, 288);
 // mechita dorada(3)
bezier(595, 91, 680, 98, 692, 200, 680, 290);

 //mechita marron der (4)
stroke (90, 60, 32);
strokeWeight(16);
noFill();
bezier(598, 84, 760, 130, 690, 260, 680, 288);
 // mechita marron izq(4)
bezier(594, 84, 440, 190, 468, 220, 499, 295);

 //linea del pelo
stroke(52, 31, 11);
strokeWeight(1);
line(597, 97, 595, 76);
  
 //linea del brazo
stroke (0);
strokeWeight(1);
line(473, 351, 474, 399);
line(730, 353, 736, 398);
  
  
}
