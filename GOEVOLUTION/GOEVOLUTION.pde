/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
PImage Menu, PrimerM, Volver;
int tipo;
boolean button=false;
boolean button2=false;
void setup() {
  size (1000, 500);
  Menu = loadImage("fondo.png");
  PrimerM = loadImage("PrimerMapa.png");
  Volver = loadImage("Volveri.png");
  
}
void draw(){
  background(#319003);
  switch (tipo) { 
  case 0:       
    image(Menu, 0, 0);
    fill(0,100);
    textSize(80);
    text("TITULO", 700, 120);
    botones();
    break;
  case 1:
    //Opciones();
    break;
  case 2:
  image(PrimerM,0,0);
  break;
  }
}
