  void OPCIONES2() { 

  switch (OP2) {
  case 0:
    PANTALLA();
    break;
  case 1:
    CONTROLES();
    break;
  case 2:
    CREDITOS();
    break;
  case 3:
    HISTORIA();
    break;
  }
}

  void PANTALLA (){
  fill(0);
  textSize(60);
  text("CONFIGURACION", 250, 90);
  fill(0);
  textSize(20);
  text("Musica", 800, 450); 
  textSize(20);
  text("Efectos", 800, 400);
  fill(0, 160);
  rect(10, 430, 100, 50, 5);
  fill(255);
  textSize(30);
  image(Volver, 15, 400);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    tipo = 0;
  }
  fill(0, 160);
  rect(400, 160, 200, 60, 5);
  fill(255);
  textSize(30);
  text("CONTROLES", 415, 200);
  if ((mouseX>425) && (mouseX<425+160) && (mouseY>160) && (mouseY<160+60) && (mousePressed==true)) {
    OP2 = 1;
}
  fill(0, 160);
  rect(405, 260, 200, 60, 5);
  fill(255);
  textSize(30);
  text("CREDITOS", 435, 300);
  if ((mouseX>430) && (mouseX<430+160) && (mouseY>260) && (mouseY<260+60) && (mousePressed==true)) {
  OP2 = 2;
  }
  fill(0, 160);
  rect(405, 360, 200, 60, 5);
  fill(255);
  textSize(30);
  text("HISTORIA", 435, 400);
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>360) && (mouseY<360+60) && (mousePressed==true)) {
  OP2 = 3;
   }
  }
  void CONTROLES () { 
  fill(0);
  textSize(50);
  text("Ayuda", 400, 70);
  fill(0);
  textSize(30);
  //Mensajes de los controles del juego
  text("*Oprime el botón de flecha ", 30, 150);
  text("hacia arriba para saltar", 30, 190);
  text("*Mientras estas en el aire ", 600, 150);
  text("tambien puedes bajar oprimiendo ", 600, 190);
  text("el bóton de flecha hacia abajo", 600, 230);
  text("*Con el boton de flecha hacia al lado derecho",150,300);
  text("activas el poder de volar el tiempo que lo",150,340);
  text("tengas espichado pero pilas se acaba rapido",150,380);
  text("*OBJETOS",720,400);
  text("CORAZON = VIDA",720,440);
  text("BANANA = PODER",720,480);
  fill(0, 160);
  rect(10, 430, 100, 50, 5);
  fill(255);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    OP2 = 0;
    delay(150);
  }
}
void CREDITOS() {
  fill(0);
  textSize(50);
  text("Créditos", 400, 70);
  fill(#1F2BFF);
  textSize(30);
  text("CREADORES: ANDRES FERNANDO CADENA O.", 100, 150);
  text("           SEBASTIAN SANCHEZ FORERO.", 140, 200);
  fill(0);
  textSize(25);
  text("Juego basado en el dinosaurio sin internet de google modificando y añadiendo", 50, 300);
  text("cosas a nuestro gusto dando un toque especial que hace la diferencia con la", 50, 330);
  text("clasica musica de crash un videojuego de la infacia de todo joven.- libreria minim", 50, 360);   // link de la musica https://www.youtube.com/watch?v=DdVI-YAXYFw&list=PL95A6A5BF6E8BA993&index=2
  fill(0, 160);
  rect(10, 430, 100, 50, 5);
  fill(255);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    OP2 = 0;
    delay(150);
  }
}
void HISTORIA(){
  fill(0);
  textSize(50);
  text("HISTORIA", 400, 70);
  fill(0);
  textSize(25);
  text("Todo comenzó cuando se creo la primer maquina del tiempo la cual cayó en manos", 80, 120);
  text("equivocadas en el año 6245, cuando el general gru descubrió que un subordinado", 80, 150);
  text("llamado jean(el cual era hijo del creador de la maquina del tiempo) sospechaba", 80, 180);
  text("de su plan para apoderarse de dicha maquina, él tuvo que adelantar los planes", 80, 210);
  text("para tenerla en su poder, en el momento que Jean quiso detenerlo ocurrió un", 80, 240);
  text("accidente que ocasionó que jean viajara al pasado miles de años atrás cuando", 80, 270);
  text("los humanos apenas descubrían el fuego, gracias al conocimiento que Jean aprendio", 80, 300);
  text("de su padre descubrió la manera de viajar en el tiempo pero con una pequeña", 80, 330);
  text("falla la cual era que no podría viajar directamente a su época si no que tendría", 80, 360);
  text("que pasar de época en época para llegar a la suya para derrotar al general gru", 80, 390);
  text("y destruir la maquina del tiempo ya que el desde el principio pensaba que la ", 80, 420);
  text("      creación de esta traería problemas a la humanidad.", 80, 450);
  fill(0, 160);
  rect(10, 430, 100, 50, 5);
  fill(255);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    OP2 = 0;
    delay(150);
  }
}
 
