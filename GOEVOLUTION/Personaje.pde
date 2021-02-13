class Personaje {
  int x1,y1,corr,sal;
  int  yp;
  int xp;
  int anchop, alturap, anchoppr;
  PImage personajem;
  int salto=10;
  
  Personaje(PImage tempers, int tempxp,int tempanchop,int tempalturap,int tempyp){
    xp=tempxp;
    alturap=tempalturap;
    anchop=tempanchop;
    yp=tempyp;
    personajem=tempers;
  }
  void movimiento(){
    

      boolean saltar2 = keyPressed == true &&  key==CODED && keyCode == UP && yp==290;
    if (saltar2)
    {      
      repeticion=1;
      salto=36;
      } 
      boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
    if (bajar){
      yp=290;
    }
    if (repeticion==1 && yp<=290) { 
      image(saltar,xp,yp);
      yp-=salto;
      salto-=4;
          delay(25);
    }else {
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
    delay(100);
    if (corr==3) {
        corr=0;
      }

    }

  }
}
