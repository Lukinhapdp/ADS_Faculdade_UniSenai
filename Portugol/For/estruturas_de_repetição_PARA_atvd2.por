/*/////////////////////////////////////////////////////////////////////////////////
Criaremos um algoritmo capaz de solicitar ao usuário 10 (dez) números inteiros. Em
seguida, será feita a separação desses números entre pares e ímpares. Ao final,		//Lucas Adriano Pereira 20/03/2023
mostraremos a quantidade e a soma dos números pares e também dos ímpares.  
*//////////////////////////////////////////////////////////////////////////////////
programa			
{	inteiro numero

	inteiro qtdPar = 0
	inteiro somaPar = 0			//declarando variaveis
 
	inteiro qtdImpar = 0
	inteiro somaImpar = 0
	
	funcao inicio()
	{
	
	escreva("Este programa foi criado para fazer a contagem e a soma números, separando entre pares e ímpares.\n")
										//inicio das estruturas de repetição
		para(inteiro i=0; i<10; i++)
		{
			escreva("Insira o " + (i+1) + "º número: ")	//entrada de dados
			leia(numero)
		
		se((numero % 2) == 0) //usamos isso para dizer que o número é par, se fosse ((numero % 2) == 1) seria ímpar.
		{
			qtdPar = qtdPar + 1
			somaPar = somaPar + numero
		} senao {
			
			qtdImpar = qtdImpar + 1
			somaImpar = somaImpar + numero
		 	}
		}
		
	limpa()						//saidas de dados
		
	escreva("Dos 10 números informados, temos o seguinte: \n\n ")
	escreva("Quantidade de números pares: " + qtdPar + "\n")
	escreva("Soma dos números pares: " + somaPar + "\n\n ")
	escreva("Quantidade de números impares: " + qtdImpar + "\n")
	escreva("Soma dos números impares: " + somaImpar + "\n ")												//fim
	}											//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */