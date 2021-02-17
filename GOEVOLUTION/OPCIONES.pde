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
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>160) && (mouseY<160+60) && (mousePressed==true)) {
    OP2 = 1;
}
  fill(0, 160);
  rect(405, 300, 200, 60, 5);
  fill(255);
  textSize(30);
  text("CREDITOS", 435, 340);
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>300) && (mouseY<300+60) && (mousePressed==true)) {
  OP2 = 2;
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
  text("CREADORES: ANDRES FERNANDO CADENA Y", 100, 150);
  text("           SEBASTIAN SANCHEZ FORERO", 140, 200);
  fill(0);
  textSize(25);
  text("Juego basado en el dinosaurio sin internet de google modificando y añadiendo", 30, 250);
  text("cosas a nuestro gusto un toque especial que hace la diferencia", 30, 280);
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
 
