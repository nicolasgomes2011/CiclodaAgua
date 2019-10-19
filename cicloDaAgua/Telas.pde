class Telas{
    
    void opacidade(int posX,int posY,int lar,int alt){//função que altera o opacidade do botão quando o mouse está sobre ele
        //a função deve receber as posições dos botões ,sua largura e altura
        noStroke();
        fill(#D4E5F7,200); 
        rect(posX,posY,lar,alt);   
    }
    void imagemASerExibida(String nomeImagem){//Metodo responsavel por configurar a imagem
        PImage imagem = loadImage(nomeImagem);
        image(imagem, 0, 0, 1200, 650);
    }
    //configurações da tela do menu
    public void menu(){
        imagemASerExibida("imagens/1.png");//configurando a imagem do menu
        if(testeBotaoInicio){//caso o mouse esteja sobre o botão inicio a opacidade dele será alterada
            opacidade(958,61,175,63);                
        }else if(testeBotaoSobre){
            opacidade(958,140,175,63);
        }
    }
    public void escolhaCiclo(){//tela para escolha dos ciclos
        imagemASerExibida("imagens/escolha.png");
        if(testeBotaoPequenoCilco){
            opacidade(319,316,267,76);
        }else if(testeBotaoGrandeCiclo){
            opacidade(627,316,262,76);
        }else if(testeBotaoDeVoltarEscolha){
            opacidade(105,36,174,67);
        }
    }

    void pequenoCiclo(){//tela do pequeno ciclo
        imagemASerExibida("imagens/pequeno_ciclo.png");
         if(testeBotaoDeVoltarPequenoCiclo){
            opacidade(84,18,264,75);
        }
    }

    void grandeCiclo(){
        imagemASerExibida("imagens/grande_ciclo.png");
         if(testeBotaoDeVoltarGrandeCiclo){
            opacidade(80,28,223,64);
        }
    }

    void sobre(){
        imagemASerExibida("imagens/sobre.png");
        if(testeBotaoDeVoltarSobre){
            opacidade(105,37,174,63);
        }
    }
   
}