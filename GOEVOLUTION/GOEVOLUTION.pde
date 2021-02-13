/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
Obstaculo ch;
Obstaculo pl;
Personaje per;
Fondo bos;
PImage Menu, PrimerM, Volver, charco, planta, personaje,saltar,slt;
int tipo;
boolean button=false;
boolean button2=false;
int repeticion=0;
boolean salto,saltar2=false;

void setup() {
  size (1000, 500);
  Menu = loadImage("fondo.png");
  PrimerM = loadImage("PrimerMapa.png");
  Volver = loadImage("Volveri.png");
  charco = loadImage("Charco.png");
  planta = loadImage("Planta.png");
  personaje = loadImage("correr.png");
  saltar=loadImage("saltar.png");
  ch = new Obstaculo(charco,1000,25,130,60,400,150);
  pl = new Obstaculo(planta,1800,25,120,120,305,150);
  per = new Personaje(personaje,100,170,160,290);
  bos = new Fondo(PrimerM,-100);
  
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
  bos.display();
  ch.display();
  pl.display();
  per.movimiento();
  break;
  }
}
