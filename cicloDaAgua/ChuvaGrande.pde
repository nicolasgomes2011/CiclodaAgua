class ChuvaGrande extends Chuva {
  Chuva chuva = new Chuva();
  float chuvaPosicaoX = random(209, 592);
  float chuvaPosicaoY = random(280, 550 );
  float velocidadeEmY = random(15, 20);
  float posicaoEmX = random(209, 592);
  float posicaoEmY = random(280, 580 );
  float velocidadeDeSubida = random(10, 15);
  
  void cair(int posicaoInicialY,int posicaoFinalY, int velocidadeInicialY, int velocidadeFinalY) {
  chuvaPosicaoY += velocidadeEmY;
    if (chuvaPosicaoY>550) {
      chuvaPosicaoY = random(posicaoInicialY, posicaoFinalY); // 280, 550
      velocidadeEmY = random(velocidadeInicialY, velocidadeFinalY); // 15, 20
    }
  }
  
  void cria() {
    stroke(0, 0, 255);
    line(chuvaPosicaoX, chuvaPosicaoY, chuvaPosicaoX, chuvaPosicaoY+10); 
    noStroke();
  } 

  void chover() {
    cria();
    cair(244, 465, 15, 20);
  }



  void subir() {
    posicaoEmY -= velocidadeDeSubida;
    if (posicaoEmY <200) {
      velocidadeDeSubida = random(10, 15);
      posicaoEmY = random(300, 580);
    }
  }

  void criar_evaporacao() {
    stroke(255, 255, 255);
    line(posicaoEmX , posicaoEmY,posicaoEmX , posicaoEmY+10);
    noStroke();
  }

  void evaporar() {
    criar_evaporacao();
    subir();
  }

  void animacaoChoverEvaporar(String animacao) {
    if (animacao == "chover") {
      chover();
    } else if (animacao == "evaporar") {
      evaporar();
    }
  }
}
