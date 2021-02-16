void botones() {  
  PLAY();
  OPCIONES();
}

void PLAY() {      
  fill(0, 180);
  rect(800,200,140,65);
  fill(255,150);
  textSize(40);
  text("PLAY", 820, 245);
  if ((mouseX>800)&&(mouseY>200)&&(mouseX<940)&&(mouseY<265) && (mousePressed==true)) {
    ban.xpos=30000;
    cor.xpos=50000;
    pl.xpos=1800;
    ch.xpos=1000;
    per.yp=290;
    ch.contadorp=0;
    pl.contadorp=0;
    ch.puntuacionp=0;
    ch.contador=0;
    pl.contador=0;
    repeticion=0;
    saltar2=false;
    poder=false;
    per.vida=0;
    per.carga=200;
    tipo = 3;

  }
}

void OPCIONES() { 
    if ((mouseX>903)&&(mouseY>425)&&(mouseX<973)&&(mouseY<495) && (mousePressed==true)) {
      tipo =4;
    }
}
