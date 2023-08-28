/*/////////////////////////////////////////////////////////////////////////////
Faça um programa que peça ao usuário dois números. Após, enquanto ele não
digitar o resultado correto da soma desses dois números, mostre na tela “tente		//Lucas Adriano Pereira 10/04/2023
novamente”, quando acertar “resultado correto!”. 
*//////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero1, numero2, resultado, qntd=0	//declarando variaveis
	funcao inicio()
	{
		escreva("Olá um programa que peça ao usuário dois números. Após ele informar esses dois valores, você perguntará para ele qual é o resultado da soma deles.\n")
		escreva("Digite o primeiro número: \n")
		leia(numero1)						//entrada de dados
	
		escreva("Digite o segundo número: \n")
		leia(numero2)	
	
		resultado = numero1 + numero2	//processo

		escreva("Qual o resultado da soma dos dois números digitados?: \n")
		leia(resultado)
		
		enquanto(resultado!=(numero1 + numero2)){		//entrada da estrutura de repetição enquanto
			escreva("Você errou tente de novo!!\n")
			escreva("Digite o resultado: \n")
			leia(resultado)
		}
		escreva("Parabéns o resultado está correto!!!")	//saidas de dados e fim!!
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */