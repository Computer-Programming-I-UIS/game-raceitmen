/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
import ddf.minim.*;
Minim minim;
AudioPlayer Sinicio, Sfondo, Sefectos;
Obstaculo ch;
Obstaculo pl;
Personaje per;
Fondo bos;
PImage Menu, PrimerM, Volver, SonOn, SonOff, charco, planta, personaje,saltar,muertepl,muertech,jugador,poderv;
PFont fuente;
int tipo, OP2;
boolean button=false, button2=false, musica=true, efectos=true;
int repeticion=0,repeticion2=0;
boolean salto,salto2,saltar2=false,poder=false;

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
  saltar=loadImage("saltar.png");
  muertepl=loadImage("MuertePlanta.png");
  muertech=loadImage("MuerteCh.png");
  jugador=loadImage("jugador.png");
  poderv=loadImage("poder.png");
  ch = new Obstaculo(charco,muertech,1000,35,175,60,400,150);
  pl = new Obstaculo(planta,muertepl,1800,35,120,120,320,150);
  per = new Personaje(personaje,100,170,160,290);
  bos = new Fondo(PrimerM,-100,100);
  
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
  bos.display();
  OPCIONES();
    if (musica==true) {
      Sinicio.play();
    }
    if (musica==false) {
      Sinicio.pause();
    }
    break;
  case 3:
  bos.display();
  ch.display();
  pl.display();
  per.movimiento();
  pl.muerte(0);
  ch.muerte(15);
  per.cargas();
  ch.puntuacion();
  break;
  case 4:
  OPCIONES2();
  break;
  case 5:
  fill(100,200,100);
  rect(0,0,width,height);
  break;
  }
}
