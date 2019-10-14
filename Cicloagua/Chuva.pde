public class Chuva{
  //variaveis que vão definir as posições e a velocidade da chuva
  float chuvaPosicaoX = random(450, 700);
  float chuvaPosicaoY = random(200,400 );
  float velocidadeEmY = random(8,10);
  //variaveis que vão definir as posições e a velocidade da evaporação
  float evaporacaoPosicaoX = random(0,100);
  float evaporacaoPosicaoY = random(400,500);
  float velocidadeEvaEmY = random(2,6);
  //metodo que faz a chuva cair
  void cair(){
    // faz a chuva percorrer o eixo y
    chuvaPosicaoY += velocidadeEmY;
    if(chuvaPosicaoY>500){//delimita o caminho que a chuva percorre
      chuvaPosicaoY = random(200,400);//reseta a posicao y da chuva
      velocidadeEmY = random(8,10);// reseta a velocidade da chuva
    }
  }
  
  void cria(){//cria os pingos de chuva
    stroke(0,0,255);//define a cor da chuva
    //define o tamanho e o formato dos pingos
    line(chuvaPosicaoX,chuvaPosicaoY,chuvaPosicaoX,chuvaPosicaoY+10);
    
  }
  void Chover(){// junta os dois metodos de cima em apenas um para a animacao da chuva
    cria();
    cair();  
  }


}
