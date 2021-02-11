/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
import ddf.minim.*;
Minim minim;
AudioPlayer Sinicio, Sfondo, Sefectos;
PImage Menu, PrimerM, Volver, SonOn, SonOff, charco, planta, personaje;;
PFont fuente;
int tipo, OP2;
boolean button=false, button2=false, musica=true, efectos=true;
Obstaculo ch;
Obstaculo pl;
Personaje per;

void setup() {
  size (1000, 500);
   minim = new Minim(this);
  Sinicio = minim.loadFile("Sinicio.wav"); 
  Sfondo = minim.loadFile("Sfondo.wav"); 
  Sinicio.setGain(-20);
  Sfondo.setGain(-20);
  Menu = loadImage("fondo.png");
  PrimerM = loadImage("PrimerMapa.png");
  Volver = loadImage("Volveri.png");
  fuente=loadFont("BradleyHandITC-40.vlw");
  textFont(fuente);
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
    if (musica==true) {
      Sinicio.play();
    } else {
      Sinicio.pause();
    }
    break;
  case 1:
    OPCIONES();
    break;
  case 2:
  OPCIONES();
    if (musica==true) {
      Sinicio.play();
    }
    if (musica==false) {
      Sinicio.pause();
    }
    break;
  case 3:
  image(PrimerM,0,0);
  ch.display();
  pl.display();
  per.movimiento();
  
  break;
  case 4:
  OPCIONES2();
  break;
  }
}
