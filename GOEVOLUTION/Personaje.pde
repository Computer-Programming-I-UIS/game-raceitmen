class Personaje {
  int x1,y1,corr,sal;
  int  yp,xp;
  int anchop, alturap, anchoppr;
  PImage personajem,posicion;
  int salto=10;
  float vida,carga=200,vc=10;
  
  Personaje(PImage tempers, int tempxp,int tempanchop,int tempalturap,int tempyp){
    xp=tempxp;
    alturap=tempalturap;
    anchop=tempanchop;
    yp=tempyp;
    personajem=tempers;
  }
  void movimiento(){
    
      boolean saltar2 = keyPressed == true &&  key==CODED && keyCode == UP && yp==290;
      boolean poder = keyPressed == true &&  key==CODED && keyCode == RIGHT ;
    if (saltar2){      
      repeticion=1;
      salto=48;
      } 
      boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
     if(bajar&&yp<290){
      yp=290;
      copy(personajem, x1, y1, anchop, alturap, xp, yp, anchop, alturap);
    }else if (repeticion==1 && yp<=290) { 
      posicion=saltar;
      delay(25);
      if(poder&&carga>=40){
        posicion=poderv;
       image(posicion,xp,yp);
       bos.v=100;
       ch.xspeed=70;
       pl.xspeed=70;
       carga-=vc;
       ch.an=150;
       ch.al=100;
       pl.an=150;
       pl.al=100;
      }else{
      ch.an=110;
      pl.an=110;
      ch.al=148;
      pl.al=148;
      yp-=salto;
      salto-=7;
      image(posicion,xp,yp);
      }
      }else {
        ch.an=92;
        pl.an=92;
      ch.xspeed=35;
      pl.xspeed=35;
      bos.v=50;        
      x1=(corr%3)*anchop-18;
      y1=(corr/3)*anchop;
      if (yp-salto<290) {
        salto=0;
      }
            if (yp>290) {
        salto=0;
        yp=290;
        repeticion=0;
      }
      copy(personajem, x1, y1, anchop, alturap, xp, yp, anchop, alturap);
    corr++;
    delay(80);
    if (corr==3) {
        corr=0;
      }
    }
  }
  void cargas(){
    vida=200-12*(ch.contador+pl.contador);
    fill(0,150);
    rect(46,36,208,25);
    rect(46,63,208,25);
    fill(255,0,0,70);
    rect(50,39,200,19);
    fill(0,0,255,70);
    rect(50,66,200,19);
    fill(255,0,0);
    rect(50,39,vida,19);
    fill(0,0,255);
    rect(50,66,carga,19);
    image(jugador,25,25,75,75);
    if(vida<=40){
     tipo=6;
    }
  }
}
