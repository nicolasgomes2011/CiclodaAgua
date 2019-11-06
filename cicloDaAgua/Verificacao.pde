/*
responsavel por fazer a verificação das posições do mouse e alterar
o estado dos botões
*/
class Verificacao{
    Telas telasCiclos = new Telas();
    
    boolean testeLogicoDosBotoes(int posicaoBotaoX,int posicaoBotaoY,int width,int height){
        //verifica se o mouse está sobre algum botão
        if(mouseX >=posicaoBotaoX && mouseX <=posicaoBotaoX+width && mouseY >=posicaoBotaoY &&
        mouseY <= posicaoBotaoY+height){
            return true;//retorno caso o mouse esteja sobre um botao 
        }
        return false;
    }
    
    boolean testeLogicoEllipseButtons(int x, int y, int diameter) {
      float disX = x - mouseX;
      float disY = y - mouseY;
      if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
          return true;
      }
       return false;
    }
    
    
    void atualizarPosicaoMouse(){//metodo que atualiza a posicao do mouse
        if(testeLogicoDosBotoes(958,61,175,63)&&alteracaoTelas==0){//teste se mouse está sobre o botão de inicio 
            testeBotaoInicio = true;
            cursor(HAND);
                    
        }else if(testeLogicoDosBotoes(958,140,175,63)&&alteracaoTelas==0){//testa se o mouse está sobre o botão de sobre
            testeBotaoInicio = false;//botão deve ser definido como false pois como eles estão muito perto as vezes o resultado não era atualizado
            testeBotaoSobre = true;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(319,316,262,76)&& alteracaoTelas==1){//testa se o mouse está sobre o botão do pequeno ciclo
            testeBotaoPequenoCilco = true;
            testeBotaoGrandeCiclo = false;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(627,316,262,76)&& alteracaoTelas==1){//testa se o mouse  está sobre o botão do grande ciclo
            testeBotaoPequenoCilco = false;
            testeBotaoGrandeCiclo = true;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(84,18,264,75)&&alteracaoTelas==2){//testa se o mouse está sobre o bota de voltar
            testeBotaoDeVoltarPequenoCiclo = true;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(80,28,223,64)&&alteracaoTelas==3){//teste se o mouse está sobre o botão de voltar grande ciclo
            testeBotaoDeVoltarGrandeCiclo = true;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(105,36,174,67) && alteracaoTelas == 1){
            testeBotaoDeVoltarEscolha = true;
            cursor(HAND);
        }else if(testeLogicoDosBotoes(105,37,174,63) && alteracaoTelas == 4){
            testeBotaoDeVoltarSobre =true;
            cursor(HAND);

        }else if(testeLogicoDosBotoes(958,218,175,63)){
            testeBotaoDireitos = true;
             testeBotaoSobre = false;
            cursor(HAND);
        }else if(testeLogicoEllipseButtons(320,300,60)&& alteracaoTelas == 2 ){//fazendo a verificação se o mouse está sobre o botão de action
          testeBotaoDeActionPequenoCiclo_1 = true;
          cursor(HAND);
        }else if(testeLogicoEllipseButtons(820,490,75)&& alteracaoTelas ==2){
          testeBotaoDeActionPequenoCiclo_2 = true;
          cursor(HAND);
        
        
        }else{
            desabilitarButtons();
            cursor(ARROW);
        }
        //println("TELA: " + alteracaoTelas + " mouseX: "+ mouseX + " mouseY: " + mouseY);

    }

    void definirTelas() {//usado para defini qual será a tela mostrada
        if(alteracaoTelas == 0){//se aletracaoTelas for 0 o menu será mostrado
            telasCiclos.menu();               
        }else if(alteracaoTelas == 1){//caso seja 1 a tela de escolha será mostrada
            telasCiclos.escolhaCiclo();
        }else if(alteracaoTelas ==2){//caso seja 2 a tela  do pequeno ciclo será mostrada
            telasCiclos.pequenoCiclo();
        }else if(alteracaoTelas ==3){//caso seja 3 a tela do grande ciclo será mostrada
            telasCiclos.grandeCiclo();
        }else if(alteracaoTelas ==4){
            telasCiclos.sobre();

        }
    }

    void testeMouseClicado(){//metodo chamando quando o mouse é clicado
        if(testeBotaoInicio){//se o mouse for clicado  e estiver sobre o botão de inicio ocorrera uma alteração para a tela do pequeno ciclo
            alteracaoTelas = 1;
        }else if(testeBotaoSobre){
            alteracaoTelas = 4;//4 será o valor para que a tela de sobre seja mostrado
        }else if(testeBotaoPequenoCilco){
            alteracaoTelas = 2; 
        }else if(testeBotaoGrandeCiclo){
            alteracaoTelas = 3;
        }else if(testeBotaoDeVoltarPequenoCiclo){
            alteracaoTelas = 1;//seta 1 para que volte para a escolha
        }else if(testeBotaoDeVoltarGrandeCiclo){
            alteracaoTelas =1 ;//seta 1 para que volte para a esolha
            print(testeBotaoDeVoltarGrandeCiclo);
        }else if(testeBotaoDeVoltarEscolha){
            alteracaoTelas = 0;
        }else if(testeBotaoDeVoltarSobre){
            alteracaoTelas = 0;
        }
        testeDasAnimacoes();
        desabilitarButtons();//essa parte deve ficar para que cada atualização de click do mouse os botões sejam atuazlizados
    }
    void desabilitarButtons(){
        testeBotaoInicio = testeBotaoSobre = testeBotaoPequenoCilco = testeBotaoGrandeCiclo = false;
        testeBotaoDeVoltarPequenoCiclo = testeBotaoDeVoltarGrandeCiclo = testeBotaoDeVoltarEscolha  =false;
        testeBotaoDireitos = testeBotaoDeActionPequenoCiclo_1 = testeBotaoDeActionPequenoCiclo_2 =false;
        testeBotaoDeActionPequenoCiclo_2 = false;
    }
     
    void testeDasAnimacoes(){
      if(testeBotaoDeActionPequenoCiclo_1 && animacoes_chuva == false){
        animacoes_chuva = true;
      }else if(animacoes_chuva == true ){
        animacoes_chuva = false;
      }
    }
    
}
