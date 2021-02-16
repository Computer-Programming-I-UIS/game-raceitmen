void perder() {
  image(tfondof,0,0,width,height); 
  fill(0);
  textSize(80);
  text("PERDISTE!", 300, 100);
  fill(0, 160);
  rect(80, 165, 140, 60, 5);
  textSize(30);
  fill(255);
  text("Reiniciar", 90, 205);
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>165) && (mouseY<165+60) && (mousePressed==true)) {
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
  fill(0, 160);
  rect(80, 285, 140, 60, 5);
  textSize(30);
  fill(255);
  text("Menú", 110, 325);
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>285) && (mouseY<285+60) && (mousePressed==true)) {
    tipo = 0;
  }
  text(ch.puntuacionp,800,75);
}
