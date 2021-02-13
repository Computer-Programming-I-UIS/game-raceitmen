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
    tipo = 3;

  }
}

void OPCIONES() { 
    if ((mouseX>903)&&(mouseY>425)&&(mouseX<973)&&(mouseY<495) && (mousePressed==true)) {
      tipo =4;
    }
}
