/*//////////////////////////////////////////////////////////////////////////////////////
A empresa “SÓ GASTA&NÃO LUCRA S.A.” necessita realizar um censo interno e
para isso necessita de uma solução que peça ao usuário, a idade dos seus 5
funcionários, ao final o programa deverá verificar se a média de idade varia entre 0 e   //Lucas Adriano Pereira 27/03/2023
25, 26 e 60 e maior que 60; e então, informar se a equipe é jovem, adulta ou idosa,
respectivamente conforme a média calculada.
*//////////////////////////////////////////////////////////////////////////////////////
programa
{		
	inteiro media, idade //declarando variaveis
	inteiro soma = 0
	
	funcao inicio()
	{
		escreva("Olá, Nos informe a idade de cada um dos 5 funcionarios:\n")
		
		para(inteiro i=0; i<5; i++){			//inicio das estruturas de repitição
			escreva(i+1+"º Funcionario: ")
			leia(idade)
			soma = soma + idade
			media = soma/5
		}
		se(media<=25 e media>0){
			escreva("A equipe é Jovem!!")
			}senao se (media>=26 e media<60){
				escreva("A equipe é Adulta!!")
			}senao {
			
			se(media>=60){	
				escreva("A equipe é Idosa!!")		//saidas de dados
			}
		}											//fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1147; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */