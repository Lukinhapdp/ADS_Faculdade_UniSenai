/*/////////////////////////////////////////////////////////////////////////////////
Você trabalha numa empresa que promove shows nacionais e internacionais. Ela
precisa controlar a entrada de pessoas, por meio de sua idade. Faça um
algoritmo que peça o nome do ingressante. Por enquanto, faremos um cadastro		//Lucas Adriano Pereira 22/03/2023
inicial de teste para a entrada de 10 (dez) pessoas. Caso ela tenha 18 ou mais, o
bilhete para entrada está liberado. Se não, a entrada da pessoa está proibida. Ao
final, mostre quantidade de pessoas que podem ou não entrar na festa. 
*/////////////////////////////////////////////////////////////////////////////////
programa
{			//declarando variaveis
	inteiro idade

	inteiro qntdMaior = 0
	inteiro qntdMenor = 0
	
	inteiro soma = 0
			
	funcao inicio()
	{					
		escreva("Olá nesse programa iremos controlar a entrada de pessoas, por meio de sua idade.\n")
		
		para(inteiro i=0; i<10; i++)
		{											
			escreva("Pessoa número "+ (i+1) + " nos fale sua idade: ") //entrada de dados
			leia(idade)
		
			se (idade >=18){
				qntdMaior = qntdMaior + 1 
				
			} senao {
				qntdMenor = qntdMenor + 1 
			}	
		}
			limpa() 		//função para limpar o console
			
				escreva("Foram o total de: "+ qntdMaior + " pessoas libereadas para a festa.\n1") 		//saidas de dados
				escreva("Foram o total de: "+ qntdMenor + " pessoas que não foram libereadas para a festa.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */