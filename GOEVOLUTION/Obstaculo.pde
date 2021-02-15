class Obstaculo {
  int  y,an,al=148;
  float xpos;
  int ancho, altura, anchor;
  float contador=0,xspeed,contadorp=0,puntuacionp;
  PImage obstaculo,fmuerte;
  int y2=290,salto2=10,x2=110;
  Obstaculo(PImage tobstaculo,PImage tfmuerte,float tempxpos, float tempxspeed,int tempancho,int tempaltura,int tempy,int tempar) {
    xpos=tempxpos;
    xspeed=tempxspeed;
    obstaculo=tobstaculo;
    altura=tempaltura;
    ancho=tempancho;
    y=tempy;
    anchor = tempar;
    fmuerte=tfmuerte;
  }
  void display() {
    image(obstaculo, xpos, y, ancho, altura);  
   xpos -= xspeed;
   if(xpos+anchor < 0){
     xpos = random(width+100,width+800);
   }
  }
  void muerte(int a){

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
    //if(puntuacionp%10);
  }
  

}
