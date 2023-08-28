/*////////////////////////////////////////////////////////////////////////////////////
Um “amigo” quer testar seus conhecimentos para desenvolver programas de
computador. Por isso, você quer esfregar na cara dele que sabe e decidiu criar um
algoritmo em que ele vai digitar 3 (três) números e vai mostrar para ele qual é o		//Lucas Adriano Pereira 04/03/2023
menor deles. E para complementar, você não vai permitir que o “miguxo” digite
números repetidos
Obs.: nenhum dos números podem se repetir entre si. Ou seja: 1 ≠ 2; 1 ≠ 3; e 2 ≠ 3.
*/////////////////////////////////////////////////////////////////////////////////////
programa
{				//declarando variaveis
	inteiro numero1, numero2, numero3
	
	funcao inicio()
	{								//entradas de dados
		escreva("Olá amigo, criei um algoritimo para você, ele vai te mostrar os 3 números que você colocou e o menor ente eles! \n")
		escreva("Digite o primeiro número: ")
		leia(numero1)	

		escreva("Digite o segundo número: ")
		leia(numero2)
	
		escreva("Digite o terceiro número: ")
		leia(numero3)
												//condições
	se ((numero1 < numero2 e numero1 < numero3 ) e (numero1 != numero2 e numero1 != numero3 e numero3 != numero2))
	{	
		escreva("Os numeros que você colocou foram: " + numero1 + ", " + numero2+ ", " + numero3 + " e menor entre eles é :" + numero1)
	}
	senao se ((numero2 < numero1 e numero2 < numero3) e (numero1 != numero2 e numero1 != numero3 e numero3 != numero2))
	{
		escreva("Os numeros que você colocou foram: " + numero1 + ", " + numero2+ ", " + numero3 + " e menor entre eles é :" + numero2)
	}
	senao{  
			se ((numero3 < numero1 e numero3 < numero2) e (numero1 != numero2 e numero1 != numero3 e numero3 != numero2))
				{
				escreva("Os numeros que você colocou foram: " + numero1 + ", " + numero2+ ", " + numero3 + " e menor entre eles é :" + numero3)
				}
			senao se (numero1 == numero2 ou numero1 == numero3 ou numero3 == numero2)
			
				{				//saidas
				escreva("Você perdeu pois digitou algum número igual a outro!!! ")
				}
	}							//fim
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2029; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */