  void OPCIONES2() { 

  switch (OP2) {
  case 0:
    PANTALLA();
    break;
  case 1:
    CONTROLES();
    break;
  case 2:
    //CREDITOS();
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
  void CONTROLES () { //ejecuta la ayuda, una breve explicaión interactiva de los controles del juego
  fill(0);
  textSize(50);
  text("Ayuda", 400, 70);
  fill(0);
  textSize(30);
  //Mensajes de los controles del juego
  text("Oprime el botón de flecha ", 30, 150);
  text("hacia arriba para saltar", 30, 190);
  text("Mientras estas en el aire ", 600, 150);
  text("tambien puedes bajar oprimiendo ", 600, 190);
  text("el bóton de flecha hacia abajo", 600, 230);
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
  
