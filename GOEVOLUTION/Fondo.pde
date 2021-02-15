class Fondo {
  float yf;
  int xi=0;
  int x2=width+25;
  float v;

  //constructor
  Fondo(PImage tempm, float tempyf,int tempv) {
    v=tempv;
    yf = tempyf;
    PrimerM = tempm;
  }
  void display() {
    xi-=v;
    x2-=v;
    image(PrimerM, xi, yf+100, width+100, PrimerM.height+20);
    image(PrimerM, x2+72, yf+100, width+200, PrimerM.height+20);
    if((xi<0)&&(xi+width+100<0)){
      xi=x2+width+270;
    }
    if((x2<0)&&(x2+width+272<0)){
      x2=xi+width+25;
    }
  }
}
