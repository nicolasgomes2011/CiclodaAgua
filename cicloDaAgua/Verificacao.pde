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
        }else if(testeLogicoDosBotoes(105,36,174,67)&&alteracaoTelas==1){
            testeBotaoDeVoltarEscolha = true;
            cursor(HAND);
        }
        else{
            testeBotaoInicio = testeBotaoSobre = testeBotaoPequenoCilco = testeBotaoGrandeCiclo = false;
            testeBotaoDeVoltarPequenoCiclo = testeBotaoDeVoltarGrandeCiclo=testeBotaoDeVoltarEscolha  =false;
            cursor(ARROW);
        }

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
        }
    }

    void testeMouseClicado(){//metodo chamando quando o mouse é clicado
        if(testeBotaoInicio){//se o mouse for clicado  e estiver sobre o botão de inicio ocorrera uma alteração para a tela do pequeno ciclo
            alteracaoTelas = 1;
        }else if(testeBotaoPequenoCilco){
            alteracaoTelas = 2; 
        }else if(testeBotaoGrandeCiclo){
            alteracaoTelas = 3;
        }else if(testeBotaoDeVoltarPequenoCiclo){
            alteracaoTelas -= 1;//diminui 1 para que volte para a escolha
        }else if(testeBotaoDeVoltarGrandeCiclo){
            alteracaoTelas -=2 ;//diminui 2 para que volte para a esolha
        }else if(testeBotaoDeVoltarEscolha){
            alteracaoTelas -= 1;
        }
    }
    
    
}