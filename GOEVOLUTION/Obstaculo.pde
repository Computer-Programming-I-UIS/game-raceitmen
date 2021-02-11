class Obstaculo {
  int  y;
  float xpos;
  int ancho, altura, anchor;
  float xspeed;
  PImage obstaculo;
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
     xpos = width+30;
   }
  }
}
