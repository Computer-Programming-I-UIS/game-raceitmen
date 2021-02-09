/*GOEVOLUTION Juego competitivo donde el objetivo es conseguir la mayor cantidad de 
puntos, saltando obstáculos que van saliendo a medida de que avanza el juego 
AUTORES: ANDRES CADENA SEBASTIAN SANCHEZ */
Botones B1;
PImage Menu;
PImage PrimerM;
PImage Volver;
boolean button=false;
boolean button2=false;
void setup() {
  size (1000, 500);
  B1 = new Botones();
  Menu = loadImage("fondo.png");
  PrimerM = loadImage("PrimerMapa.png");
  Volver = loadImage("Volveri.png");
  
}
void draw(){
  image(Menu,0,0);
  B1.Btn();
}
void mousePressed(){
if((mouseX>903)&&(mouseY>425)&&(mouseX<973)&&(mouseY<495)){
      if(button){
        button = false;
    }else{
      button= true; 
    }
  }
  if((mouseX>800)&&(mouseY>200)&&(mouseX<940)&&(mouseY<265)){
      if(button2){
        button2 = false;
    }else{
      button2 = true; 
    }
  }
}
