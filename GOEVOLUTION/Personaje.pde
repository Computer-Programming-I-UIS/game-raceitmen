class Personaje {
  int x1,y1,corr;
  int  yp;
  float xposp;
  int anchop, alturap, anchopr;
  PImage personajem;
  Personaje(PImage tempers, float tempxposp,int tempanchop,int tempalturap,int tempyp){
    xposp=tempxposp;
    alturap=tempalturap;
    anchop=tempanchop;
    yp=tempyp;
    personajem=tempers;
  }
  void movimiento(){
    x1=(corr%3)*anchop-18;
    y1=(corr/3)*anchop;
    copy(personajem, x1, y1, anchop, alturap, int(xposp), yp, anchop, alturap);
    corr++;
      delay(100);
      if (corr==3) {
        corr=0;
      }
  }
}
