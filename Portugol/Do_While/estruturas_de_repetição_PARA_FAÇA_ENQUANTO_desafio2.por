/*/////////////////////////////////////////////////////////////////////////////////
Você deve criar um programa que peça ao usuário dois números. Após ele informar
esses dois valores, você perguntará para ele qual é o resultado da soma deles.
Enquanto ele errar o resultado da soma, você deve informar que ele está errado e	//Lucas Adriano Pereira 06/04/2023
deve solicitar esse número novamente. Ao acertar, você deve informar que o número
está correto e deve mostrar quantas vezes ele tentou até acertar.
*//////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero1, numero2, resultado, qntd=0	//declarando variaveis
	funcao inicio()
	{
		escreva("Olá um programa que peça ao usuário dois números. Após ele informar esses dois valores, você perguntará para ele qual é o resultado da soma deles.\n")
		escreva("Digite o primeiro número: \n")
		leia(numero1)						//entrada de dados
	
		escreva("Digite o segundo número: \n")
		leia(numero2)						//entrada de dados
	
		resultado = numero1 + numero2	//operações

		escreva("Qual o resultado da soma dos dois números digitados?: \n")
		leia(resultado)
		
		enquanto(resultado!=(numero1 + numero2)){	//inicio da estrutura de repetição (enquanto)
			escreva("Você errou tente de novo!!\n")
			escreva("Digite o resultado: \n")
			leia(resultado)
			qntd = qntd + 1 }					//fim da estrutura de repetição (enquanto)

			escreva("O resultado correto é: "+resultado+"\n")
			escreva("E o tanto de vezes que você errou até acertar foram: "+qntd+"\n")	//saidas de dados e fim
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1567; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */