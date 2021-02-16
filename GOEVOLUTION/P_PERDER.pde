void perder() { //metodo al perder
  image(fondo2, 0, 0);
  fill(0);
  textSize(80);
  text("PERDISTE!", 300, 100);
  fill(0, 160);
  rect(80, 165, 140, 60, 5);
  textSize(30);
  fill(255);
  text("Reiniciar", 90, 205);
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>165) && (mouseY<165+60) && (mousePressed==true)) {
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
}
