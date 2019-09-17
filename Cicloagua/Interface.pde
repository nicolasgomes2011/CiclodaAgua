class Interface{
  color mouseSobre =#FFFFFF;//cor dos botões caso o mouse estiver sobre os botões
  color mouseFora = #6C562D;//cor dos botões caso o mouse estiver fora dos botões
  
  void menu(){
    PImage photoMenu;//variavel onde ira a imagem
    photoMenu = loadImage("fundoMenu.jpg");//imagem escolhida
    image(photoMenu,0,0);//demesionado a imagem
    PImage imagemPequenoCicloMenu;//imagem do botão do pequno ciclo
    imagemPequenoCicloMenu =loadImage("CicloP.jpg");//imagem escolhida
    
    alterarCorDosButtons(testeSobreButton1);//se o mouse estiver sobre o botão do pequeno ciclo então a cor do botão é alterada
    
    rect(posicaoRect1EixoX,posicaoRect1EixoY,expessura,grossura,7);//botão pequeno ciclo
    image(imagemPequenoCicloMenu,178,280,100,100);//definição da imagem do pequeno ciclo no menu
    

    alterarCorDosButtons(testeSobreButton2);
    
    PImage imagemGrandeCicloMenu = loadImage("cicloPg.jpg");//carregando a imagem do grande cilco no menu
    rect(posicaoRect2EixoX,posicaoRect2EixoY,expessura,grossura,7);//botão grande ciclo
    image(imagemGrandeCicloMenu,475,280,100,100);//definição da imagem no menu do grande ciclo
    fill(0,0,0);//cor do texto
    textSize(15);//tamanho do texto
    text("Pequeno Ciclo da Água",140,420);//texto
    
    fill(0,0,0);
    textSize(15);
    text("Grande Ciclo da Água",440,420);

  }

  void pequenoCiclo(){//metodo que mostra o pequeno ciclo
    PImage imagemPequenoCiclo;//variavel onde estará a imagem do pequeno ciclo
    imagemPequenoCiclo = loadImage("CicloP.jpg");//carregando a imagem
    image(imagemPequenoCiclo,0,0);//coloca a imagem na tela
    buttonVoltar();//metodo que cria o botão de voltar
    buttonPlay();//metodo que cria o botão de play
    buttonNext();//botão que fará o avanço para o proximo ciclo
    
  }

  void grandeCiclo(){//metodo que mostra o grande ciclo
    PImage imagemGrandeCiclo;//variavel onde estará a imagem do grande ciclo
    imagemGrandeCiclo = loadImage("cicloG.jpg");
    image(imagemGrandeCiclo,0,0);
    
    buttonVoltar();
    buttonNext();
    buttonPlay();


  }

  void buttonVoltar(){
    alterarCorDosButtons(testeSobreButton3);
    rect(posicaoRect3EixoX,posicaoRect3EixoY,50,50,7);//botão de voltar
    fill(0);//cor do texto
    textSize(30);//tamanho do texto
    text("<=",1,35);//texto do botão de  voltar

  }
  
  void buttonNext(){
    alterarCorDosButtons(testeSobreNext);
    rect(posicaoButtonNextX,posicaoButtonNextY,50,50,7);//botão de voltar
    fill(0);//cor do texto
    textSize(30);//tamanho do texto
    text("=>",50,35);//texto do botão de  voltar

  }
  void buttonPlay(){//botão que dara inicio as animações
    alterarCorDosButtons(testeSobreButtonPlay);
    rect(posicaoButtonPlayX,posicaoButtonPlayY,56,56,7);
    fill(0);//cor do texto
    textSize(26);//tamanho do texto
    text("Play",100,35);//texto do botão de play
  }
  void alterarCorDosButtons(boolean teste){
    if(teste){
      fill(mouseSobre);//cor caso o mouse estiver sobre o botão de voltar

    }else{
      fill(mouseFora);//cor caso o mouse estiver fora do botão de voltar
    }
    

  }
}
