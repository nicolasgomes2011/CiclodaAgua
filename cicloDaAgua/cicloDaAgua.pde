Telas telasAplicacao = new Telas();//objeto telas que faz o "desenho" das telas
Verificacao verificacaoBotoes = new Verificacao();//objeto que vai fazer as verificações dos botões

boolean testeBotaoInicio,testeBotaoSobre,testeBotaoDireitos;//que guardam o estado do botão em relação ao mouse 
boolean testeBotaoPequenoCilco,testeBotaoGrandeCiclo;//guardam o estado do botão quando o mouse está sobre alguma das opções
boolean testeBotaoDeVoltarPequenoCiclo,testeBotaoDeVoltarGrandeCiclo,testeBotaoDeVoltarEscolha;//gurada o estado do botão caso o mouse esteja sobre ele 
int alteracaoTelas;//variavel responsavel pela alteração das telas 

//exemplo mouse sobre um botao logo o estado será true se não será false
void setup() {
    size(1200,650);
    alteracaoTelas = 0;   
}

void draw() {
    verificacaoBotoes.atualizarPosicaoMouse();
    verificacaoBotoes.definirTelas();
 
    
}

void mousePressed(){
    verificacaoBotoes.testeMouseClicado();
}
