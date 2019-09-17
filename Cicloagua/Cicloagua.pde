//definições das variáveis
int defineOCiclo;//define o ciclo
Interface menuCiclos = new Interface();//objeto da classe interface onde está o menu e os ciclos
Testes testeLogicos = new Testes(menuCiclos);//objeto da classe testes para fazer os teste lógicos da aplicação
int posicaoRect1EixoX,posicaoRect1EixoY;//posições do botão do pequeno ciclo   
int posicaoRect2EixoX,posicaoRect2EixoY;//posições do botão do grande ciclo
int posicaoRect3EixoX,posicaoRect3EixoY;//posições do botão de voltar
int posicaoButtonNextX,posicaoButtonNextY;//posições do botão next
int posicaoButtonPlayX,posicaoButtonPlayY;//posições do botão play
int expessura,grossura;//expessura e grosurra dos botões do grande e pequeno ciclo
boolean testeSobreButton1,testeSobreButton2,testeSobreButton3,testeSobreButtonPlay,testeSobreNext;//variávies que vão guarda os teste se o mouse está sobre algum botão 
void setup() {
    size(800,750);//tamanho da janela
    /*
    iniciali zação das variáveis que fazem testes do mouse sobre os botões,
    iniciados com false
    */
    testeSobreButton1 = false;
    testeSobreButton2 = false;
    testeSobreButton3 = false;
    testeSobreButtonPlay = false;
    testeSobreNext = false;
    /*Define qual ciclo vai estar na tela definido como 0, para começar a mostrar
    o menu
    */
    defineOCiclo = 0;
    /*Definição das posições dos botões nos eixo x e y
    */
    posicaoRect1EixoX=167;
    posicaoRect1EixoY=270;
    
    posicaoRect2EixoX=464;
    posicaoRect2EixoY=270;

    posicaoRect3EixoX = 1;
    posicaoRect3EixoY = 1;

    posicaoButtonNextX = 50;
    posicaoButtonNextY = 1;

    posicaoButtonPlayX = 100;
    posicaoButtonPlayY = 1;

    
    expessura = 120;
    grossura = 120;

}

void draw(){
    testeLogicos.atualizar();//atualiza as posições do mouse sobre os botões
    testeLogicos.defineAIterface();//define qual será a interface a ser mostrada 
    
    
}

void mousePressed(){
    testeLogicos.testeMouseClicado();//teste caso o mouse seja clicado

}
