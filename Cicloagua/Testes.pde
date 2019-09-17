class Testes{//Classe para fazer os teste lógicos 
    //Função para atualizar a posição do mouse sobre os botões
    Interface ciclos = new Interface();//objeto interface
    public Testes(Interface ciclos){//metodo construtor da classe testes
        this.ciclos = ciclos;

    }
    void atualizar(){//metodo que atualiza os dados do mouse na tela para que a inteface e os botões sejam mudados
        if(testeLogicoDosButtons(posicaoRect1EixoX,posicaoRect1EixoY,expessura,grossura)){//testa se o mouse está na área do botão do pequeno ciclo 
            testeSobreButton1 = true;//então define o teste como true
            mudarMouse();
            
            
                
        }else if(testeLogicoDosButtons(posicaoRect2EixoX,posicaoRect2EixoY,expessura,grossura)){//agora faz o tetse no botão do grande ciclo
            testeSobreButton2 = true;
            mudarMouse();
            
        }else if(testeLogicoDosButtons(posicaoRect3EixoX,posicaoRect3EixoY,50,50)){//faz o teste no botão de voltar
            testeSobreButton3 = true;
            testeSobreNext =  testeSobreButtonPlay = false;
            mudarMouseNextPlayVoltar();
            
        }else if(testeLogicoDosButtons(posicaoButtonNextX,posicaoButtonNextY,50,50)){//faz o teste no botão de next
            testeSobreNext = true;
            testeSobreButton3 = testeSobreButtonPlay = false;
            mudarMouseNextPlayVoltar();
        
        }else if(testeLogicoDosButtons(posicaoButtonPlayX,posicaoButtonPlayY,56,56)){
            testeSobreButtonPlay = true;
            testeSobreNext = testeSobreButton3 = false;
            mudarMouseNextPlayVoltar();

            
        }else{//se nem um dos casos acontecer logo todos serão falsos
            testeSobreButtonPlay = testeSobreNext =  testeSobreButton3 =  testeSobreButton2 = testeSobreButton1  = false;
            cursor(ARROW);
        }
        
    } 
    boolean testeLogicoDosButtons(int posicaoX,int posicaoY,int width,int height){
        //verifica se o mouse está sobre algum dos botões
        if(mouseX >= posicaoX && mouseX <= posicaoX+width && mouseY >= posicaoY
        && mouseY >= posicaoY && mouseY <= posicaoY+height){
            return true;//então retorna true

        }
        return false;//senão retorna falso;

    }
    void defineAIterface(){//define a interface que será mostrada
        if(defineOCiclo ==2){//caso o defineOCiclo seja 2 será mostrado o grande ciclo
            ciclos.grandeCiclo();
            testeSobreButton1 = false;
                   

        }else if(defineOCiclo==1){// caso o defineOCiclo seja 1 será mostrado o pequeno ciclo
            ciclos.pequenoCiclo();
            testeSobreButton2 = false;
            
            

        }else{//senão mostra o menu
            ciclos.menu();
            testeSobreButton3 = testeSobreButtonPlay = testeSobreNext = false;
           
           
            
        }

    }

    void testeMouseClicado(){//teste a serem feitos quando o mouse for clicado
        if(testeSobreButton1){//verfica se o mouse está sobre o botão pequeno ciclo para que se altere a interface
            defineOCiclo = 1;//define o ciclo como  1 para que seja mostrado a imagem do pequeno ciclo             
        }
        else if(testeSobreButton2){//verifaca se o mouse está sobre o botão gande ciclo para que se altere a inteface
            defineOCiclo = 2;//define o ciclo como 2 para que seja mostrado a imagem deo grande ciclo
        }else if(testeSobreButton3){//verifica se o mouse está sobre o botão de voltar
            defineOCiclo -= 1;//define o ciclo com 0 para que seja mostrado o menu
        
        }else if(testeSobreNext){//se o testeSobreNext for true
            if(defineOCiclo==2){//se o defineOCiclo for = a 2 ele será alterado para 0 para voltar ao menu
                defineOCiclo = 0;
            }else{
                defineOCiclo += 1 ;//passa para o proximo cilco por isso acrsenta 1
            }
        }

    }

    void mudarMouse(){//altera o icone do mouse
        if(defineOCiclo!=0){//caso o defineCiclo seja diferente de zero o mouse mantera igual
            cursor(ARROW);
        }else{
            cursor(HAND);//muda o cursor para a mão
        }
    }

    void mudarMouseNextPlayVoltar(){//altera o icone do mouse nos botões de play next e voltar devido a imcopatibilidade com os outro
        if(defineOCiclo ==0){//caso o defineCiclo seja diferente de zero o mouse mantera igual
            cursor(ARROW);
        }else{
            cursor(HAND);//muda o cursor para a mão
        }
    }

}
