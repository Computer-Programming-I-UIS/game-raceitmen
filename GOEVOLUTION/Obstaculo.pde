class Obstaculo {
  int  y,an;
  float xpos;
  int ancho, altura, anchor;
  float xspeed;
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
  void muerte(){
   boolean saltar2 = keyPressed == true &&  key==CODED && keyCode == UP && y2==290;
    if (saltar2){      
      repeticion2=1;
      salto2=48;
      } 
      boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
    if (bajar){
      y2=290;
    }
    if (repeticion2==1 && y2<=290) { 
      an=110;
      y2-=salto2;
      salto2-=7;
          delay(20);
    }else {
      an=92;
      if (y2-salto2<290) {
        salto2=0;
      }
        if (y2>290) {
        salto2=0;
        y2=290;
        repeticion2=0;
      }
    }
    if((xpos>=x2)&&(xpos<=x2+an)&&(y<=y2+148)){
     image(fmuerte,300,0,400,400);
    }else if((xpos+ancho>=x2)&&(xpos+ancho<=x2+an)&&(y<=y2+148)){
     image(fmuerte,300,0,400,400);
    }
  }
}
