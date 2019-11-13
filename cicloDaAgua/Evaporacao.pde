class Evaporacao extends Chuva{
  float posicaoEmX = random(380, 870);
  float posicaoEmY = random(550,400);
  float velocidadeDeSubida = random(15,20);
  
  void subir(){
    posicaoEmY -= velocidadeDeSubida;
    if(posicaoEmY <200){
      velocidadeDeSubida = random(15,20);
      posicaoEmY = random(550,400);
    }
  }
  
  void cria(){
    fill(#FFFFFF);
    ellipse(posicaoEmX,posicaoEmY,10,10);
  }
  
  void evaporar(){
      cria();
      subir();
  }

}
