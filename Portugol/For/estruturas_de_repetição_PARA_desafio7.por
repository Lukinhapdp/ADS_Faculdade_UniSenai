/*/////////////////////////////////////////////////////////////////////////
No mesmo pacote de solicitações a instituição de ensino “TODOSAPROVADOS”
solicitou também uma solução que peça 10 números inteiros ao utilizador do		//Lucas Adriano Pereira 27/03/2023
programa, calcule e mostre a quantidade de números pares, a quantidade de
números ímpares e a soma de todos os números. 
*//////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero

	inteiro qtdPar = 0
	inteiro somaPar = 0			//declarando variaveis
 
	inteiro qtdImpar = 0
	inteiro somaImpar = 0

	inteiro somaTotal
	funcao inicio()
	{
		para(inteiro i=0; i<10; i++){
			
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
			somaTotal = somaImpar + somaPar
		 	escreva("Dos 10 números informados, temos o seguinte: \n\n")
			escreva("Quantidade de números pares: " + qtdPar + "\n")
			escreva("Quantidade de números impares: " + qtdImpar + "\n")
			escreva("Soma de todos os números : " + somaTotal + "\n ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 942; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */