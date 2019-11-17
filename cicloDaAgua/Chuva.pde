class Chuva {
  float chuvaPosicaoX = random(380, 870);
  float chuvaPosicaoY = random(280, 550 );
  float velocidadeEmY = random(15, 20);

  void cair() {
    chuvaPosicaoY += velocidadeEmY;
    if (chuvaPosicaoY>550) {
      chuvaPosicaoY = random(280, 550);
      velocidadeEmY = random(15, 20);
    }
  }

  void cria() {
    stroke(0, 0, 255);
    line(chuvaPosicaoX, chuvaPosicaoY, chuvaPosicaoX, chuvaPosicaoY+10); 
    noStroke();
  } 

  void chover() {
    cria();
    cair();
  }

  float posicaoEmX = random(380, 870);
  float posicaoEmY = random(300,550 );
  float velocidadeDeSubida = random(10, 15);

  void subir() {
    posicaoEmY -= velocidadeDeSubida;
    if (posicaoEmY <300) {
      velocidadeDeSubida = random(10,15);
      posicaoEmY = random(300, 550);
    }
  }

  void criar_evaporacao() {
    fill(#FFFFFF);
    ellipse(posicaoEmX, posicaoEmY, 10, 10);
  }

  void evaporar() {
    criar_evaporacao();
    subir();
  }
  
  void animacaoChoverEvaporar(String animacao){
    if(animacao == "chover"){
      chover();
    }else if(animacao == "evaporar"){
      evaporar();
    }
  }
}
