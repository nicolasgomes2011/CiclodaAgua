
class Telas {
  void explicacao(){
    if(explicacao1){
      opacidade(0,0,1200,600);
      PImage imagem = loadImage("imagens/explicação_chuva.png");
      image(imagem, 400,100, 400, 400);
      animacoes_evaporacao = animacoes_chuva = false;
    }else if(explicacao2){
      opacidade(0,0,1200,600);
      PImage imagem = loadImage("imagens/explicação_evaporação.png");
      image(imagem, 400,100, 400, 400);
      animacoes_evaporacao = animacoes_chuva = false;
    }else if(explicacao3){
      opacidade(0,0,1200,600);
      PImage imagem = loadImage("imagens/explicação_grande_ciclo.png");
      image(imagem, 400,100, 400, 400);
      animacoes_evaporacao = animacoes_chuva = false;
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
  
  void buttonsExplicacao(float posX, float posY, float width_, float height_, boolean status){
    fill(#675456);
    ellipse(posX, posY, width_, height_);
    if (status) {
      fill(#055512);
    } else {
      fill(#08FA2D);
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
    
    buttonsExplicacao(270, 300, 35, 35, testeBotaoDeExplicacao_1Pc );
    buttonsExplicacao(770, 490, 35, 35, testeBotaoDeExplicacao_2Pc );
    
    explicacao();
    
    if (testeBotaoDeVoltarPequenoCiclo) {
      opacidade(84, 18, 264, 75);
    }
  }  

  void grandeCiclo() {
    imagemASerExibida("imagens/grande_ciclo.png");
    buttonsExplicacao(310, 590, 45, 45, testeBotaoGrandeCiclo_1);
    
    buttonsAction(765, 485, 45, 45, testeBotaoGrandeCiclo_2);
    buttonsAction(150, 290, 45, 45, testeBotao3);//
    
    buttonsExplicacao(200, 290, 35, 35, testeExplicacao_1Gc );
    buttonsExplicacao(715, 485, 35, 35,  testeExplicacao_2Gc );

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

  void direitos() {
    imagemASerExibida("imagens/direitos.JPG");
    if (testeBotaoDeVoltarDireitos) {
      opacidade(105, 37, 174, 63);
    }
  }
}
