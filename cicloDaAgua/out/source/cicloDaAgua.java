import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class cicloDaAgua extends PApplet {

Telas telasAplicacao = new Telas();//objeto telas que faz o "desenho" das telas
Verificacao verificacaoBotoes = new Verificacao();//objeto que vai fazer as verificações dos botões

boolean testeBotaoInicio,testeBotaoSobre,testeBotaoDireitos;//que guardam o estado do botão em relação ao mouse 
boolean testeBotaoPequenoCilco,testeBotaoGrandeCiclo;//guardam o estado do botão quando o mouse está sobre alguma das opções
boolean testeBotaoDeVoltarPequenoCiclo,testeBotaoDeVoltarGrandeCiclo,testeBotaoDeVoltarEscolha;//gurada o estado do botão caso o mouse esteja sobre ele 
int alteracaoTelas;//variavel responsavel pela alteração das telas 

//exemplo mouse sobre um botao logo o estado será true se não será false
public void setup() {
    
    alteracaoTelas = 0;   
}

public void draw() {
    verificacaoBotoes.atualizarPosicaoMouse();
    verificacaoBotoes.definirTelas();
 
    
}

public void mousePressed(){
    verificacaoBotoes.testeMouseClicado();
}
class Telas{
    
    public void opacidade(int posX,int posY,int lar,int alt){//função que altera o opacidade do botão quando o mouse está sobre ele
        //a função deve receber as posições dos botões ,sua largura e altura
        noStroke();
        fill(0xffD4E5F7,200); 
        rect(posX,posY,lar,alt);   
    }
    public void imagemASerExibida(String nomeImagem){//Metodo responsavel por configurar a imagem
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

    public void pequenoCiclo(){//tela do pequeno ciclo
        imagemASerExibida("imagens/pequeno_ciclo.png");
         if(testeBotaoDeVoltarPequenoCiclo){
            opacidade(84,18,264,75);
        }
    }

    public void grandeCiclo(){
        imagemASerExibida("imagens/grande_ciclo.png");
         if(testeBotaoDeVoltarGrandeCiclo){
            opacidade(80,28,223,64);
        }
    }
   
}
/*
responsavel por fazer a verificação das posições do mouse e alterar
o estado dos botões
*/
class Verificacao{
    Telas telasCiclos = new Telas();
    
    public boolean testeLogicoDosBotoes(int posicaoBotaoX,int posicaoBotaoY,int width,int height){
        //verifica se o mouse está sobre algum botão
        if(mouseX >=posicaoBotaoX && mouseX <=posicaoBotaoX+width && mouseY >=posicaoBotaoY &&
        mouseY <= posicaoBotaoY+height){
            return true;//retorno caso o mouse esteja sobre um botao 

        }
        return false;
    }
    
    
    public void atualizarPosicaoMouse(){//metodo que atualiza a posicao do mouse
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

    public void definirTelas() {//usado para defini qual será a tela mostrada
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

    public void testeMouseClicado(){//metodo chamando quando o mouse é clicado
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
  public void settings() {  size(1200,650); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cicloDaAgua" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
