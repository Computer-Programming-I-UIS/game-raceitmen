class Botones{
  int l;
  int a;
  int t;
  Botones(){

  }
  void Btn(){
    rect(800,200,140,65);
    if(button){ 
      rect(0,0,width,height);
      image(Volver,903,425,70,70);
    }
    if(button2){ 
      image(PrimerM,0,0);
    }
  }
}
