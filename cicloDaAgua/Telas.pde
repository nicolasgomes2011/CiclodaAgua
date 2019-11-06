class Telas {
  Chuva[] animacao = new Chuva[500];
  public Telas(){
    for(int i = 0;i<animacao.length;i++){
      animacao[i] = new Chuva();
    }
  }
  void buttonsAction(float posX, float posY, float width_, float height_, boolean status) {
    //criando os botões de animação
    fill(#675456);
    ellipse(posX, posY, width_, height_);
    if (status) {
      fill(#86010C);
    } else {
      fill(#FF0318);
    }
    ellipse(posX, posY, width_-10, height_-10);
  }
  void opacidade(int posX, int posY, int lar, int alt) {//função que altera o opacidade do botão quando o mouse está sobre ele
    //a função deve receber as posições dos botões ,sua largura e altura
    noStroke();
    fill(#D4E5F7, 200); 
    rect(posX, posY, lar, alt);
  }
  void imagemASerExibida(String nomeImagem) {//Metodo responsavel por configurar a imagem
    PImage imagem = loadImage(nomeImagem);
    image(imagem, 0, 0, 1200, 650);
  }
  //configurações da tela do menu
  public void menu() {
    imagemASerExibida("imagens/1.png");//configurando a imagem do menu
    if (testeBotaoInicio) {//caso o mouse esteja sobre o botão inicio a opacidade dele será alterada
      opacidade(958, 61, 175, 63);
    } else if (testeBotaoSobre) {
      opacidade(958, 140, 175, 63);
    } else if (testeBotaoDireitos) {
      opacidade(958, 218, 175, 63);
    }
  }
  public void escolhaCiclo() {//tela para escolha dos ciclos
    imagemASerExibida("imagens/escolha.png");
    if (testeBotaoPequenoCilco) {
      opacidade(319, 316, 267, 76);
    } else if (testeBotaoGrandeCiclo) {
      opacidade(627, 316, 262, 76);
    } else if (testeBotaoDeVoltarEscolha) {
      opacidade(105, 36, 174, 67);
    }
  }

  void pequenoCiclo() {//tela do pequeno ciclo
    imagemASerExibida("imagens/pequeno_ciclo.png");
    
    buttonsAction(320, 300, 45, 45, testeBotaoDeActionPequenoCiclo_1);//criando os botões das animações
    buttonsAction(820, 490, 45, 45, testeBotaoDeActionPequenoCiclo_2);

    if (testeBotaoDeVoltarPequenoCiclo) {
      opacidade(84, 18, 264, 75);
    }
    
    if(animacoes_chuva){
      for(int i = 0;i<animacao.length;i++){
         animacao[i].chover();
      }
    }
    
  }

  void grandeCiclo() {
    imagemASerExibida("imagens/grande_ciclo.png");

    if (testeBotaoDeVoltarGrandeCiclo) {
      opacidade(80, 28, 223, 64);
    }
  }

  void sobre() {
    imagemASerExibida("imagens/sobre.png");
    if (testeBotaoDeVoltarSobre) {
      opacidade(105, 37, 174, 63);
    }
  }
}
