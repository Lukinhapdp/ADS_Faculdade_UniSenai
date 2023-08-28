/*////////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que leia três números inteiros e verifique qual é o maior entre eles. Crie um
método para dar a entrada de dados nos 3 números e um método que receba como parâmetro		//Lucas Adriano Pereira 07/06/2023
os 3 números e verifique/mostre qual é o menor número entre eles
*////////////////////////////////////////////////////////////////////////////////////////////////
programa
{
	funcao inicio()
	{	
		escreva("Este programa pede 3 números para o usuário e mostra o menor entre eles!!\n")
		inteiro num1 = solicitarNumero(1)
		inteiro num2 = solicitarNumero(2)
		inteiro num3 = solicitarNumero(3)
		metodoSaida(num1, num2, num3)
	}
	
	funcao inteiro solicitarNumero(inteiro i){
		inteiro numero
		
		escreva("Digite o " +(i)+ "º número: ")
		leia(numero)

		retorne numero
	}

	funcao metodoSaida(inteiro num1, inteiro num2, inteiro num3){
		inteiro menorNumero=0
		
		se(num1 < num2 e num1 < num3){
			menorNumero = num1
		}
		se(num2 < num3){
			menorNumero = num2
		}
		senao{
			menorNumero = num3
		}
	
		escreva("\nO menor número é: " +menorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 867; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */