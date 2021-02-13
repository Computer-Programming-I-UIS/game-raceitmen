class Fondo {
  float yf;
  int xi=0;
  int x2=width+25;
  float v=40;

  //constructor
  Fondo(PImage tempm, float tempyf) {

    yf = tempyf;
    PrimerM = tempm;
  }
  void display() {
    xi-=v;
    x2-=v;
    image(PrimerM, xi, yf+100, width+28, PrimerM.height+20);
    image(PrimerM, x2, yf+100, width, PrimerM.height+20);
    if((xi<0)&&(xi+width-25<0)){
      xi=x2+width-3;
    }
    if((x2<0)&&(x2+width-25<0)){
      x2=xi+width+25;
    }
  }
}
