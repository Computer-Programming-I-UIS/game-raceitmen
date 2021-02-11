/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
Obstaculo ch;
Obstaculo pl;
Personaje per;
PImage Menu, PrimerM, Volver, charco, planta, personaje;
int tipo;
boolean button=false;
boolean button2=false;

void setup() {
  size (1000, 500);
  Menu = loadImage("fondo.png");
  PrimerM = loadImage("PrimerMapa.png");
  Volver = loadImage("Volveri.png");
  charco = loadImage("Charco.png");
  planta = loadImage("Planta.png");
  personaje = loadImage("correr.png");
  ch = new Obstaculo(charco,1000,35,130,60,400,150);
  pl = new Obstaculo(planta,1600,35,150,150,305,150);
  per = new Personaje(personaje,100,170,160,290);
  
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
  ch.display();
  pl.display();
  per.movimiento();
  
  break;
  }
}
