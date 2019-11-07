class Chuva{
  float chuvaPosicaoX = random(380, 870);
  float chuvaPosicaoY = random(280, 550 );
  float velocidadeEmY = random(15,20);
   
   void cair(){
    chuvaPosicaoY += velocidadeEmY;
    if (chuvaPosicaoY>550) {
      chuvaPosicaoY = random(280, 550);
      velocidadeEmY = random(15,20);
    }
  }

  void cria() {
    stroke(0, 0, 255);
    line(chuvaPosicaoX, chuvaPosicaoY, chuvaPosicaoX, chuvaPosicaoY+10);
  } 
 
  void chover(){
    cria();
    cair();
  }
}
