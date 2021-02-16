class Obstaculo {
  int  y,an,al=148;
  float xpos;
  int ancho, altura, anchor;
  float contador=0,xspeed,contadorp=0,puntuacionp;
  PImage obstaculo,fmuerte;
  int y2=290,salto2=10,x2=110;
  Obstaculo(PImage tobstaculo,float tempxpos, float tempxspeed,int tempancho,int tempaltura,int tempy,int tempar) {
    xpos=tempxpos;
    xspeed=tempxspeed;
    obstaculo=tobstaculo;
    altura=tempaltura;
    ancho=tempancho;
    y=tempy;
    anchor = tempar;
  }
  void display() {
    image(obstaculo, xpos, y, ancho, altura);  
   xpos -= xspeed;
   if(xpos+anchor < 0){
     xpos = random(width+100,width+800);
   }
  }
    void recargap(){
    xpos -= xspeed;
    image(obstaculo, xpos, y, ancho, altura); 
    if(((xpos<=per.xp)&&(y+altura>per.yp)&&(xpos+ancho>=per.xp))||((xpos<=per.xp+per.anchop)&&(y+altura>per.yp)&&(xpos+ancho>=per.xp+per.anchop))){
     per.carga = 200;
     xpos = random(30000,40000);
    }
    if(xpos+anchor < 0){
    xpos = random(30000,40000);
   }
  }
    void recargav(){
    xpos -= xspeed;
    image(obstaculo, xpos, y, ancho, altura); 
    if(((xpos<=per.xp)&&(y+altura>per.yp)&&(xpos+ancho>=per.xp))||((xpos<=per.xp+per.anchop)&&(y+altura>per.yp)&&(xpos+ancho>=per.xp+per.anchop))){
     contador=0;
     per.vida=0;
     ch.contador=0;
     pl.contador=0;
     xpos=random(45000,55000);
    }
    if(xpos+anchor < 0){
    xpos = random(45000,55000);
   }
  }
  void muerte(int a,PImage fmuerte){

    if((xpos+an>=per.xp+10)&&(xpos-an+100<=per.xp+10+an)&&(y+a<=per.yp+al)){
     image(fmuerte,300,0,400,400);
     contador +=1;
    }else if((xpos+ancho>=per.xp+10)&&(xpos+ancho<=per.xp+10+an)&&(y+a<=per.yp+al)){
      image(fmuerte,300,0,400,400);
      contador +=1;
    }else if((xpos+ancho>=per.xp+10)&&(xpos+ancho<=per.xp+10+an)&&(y+a>=per.yp+148)){
      contadorp+=1;
    }else if((xpos+an>=per.xp+10)&&(xpos-an+100<=per.xp+10+an)&&(y+a>=per.yp+148)){
      contadorp+=1; 
    }
  }
  void puntuacion(){
    puntuacionp=ch.contadorp/9+(pl.contadorp/7);
    fill(255);
    text(puntuacionp,800,75);
  }
  

}
