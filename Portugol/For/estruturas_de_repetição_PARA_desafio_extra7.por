/*///////////////////////////////////////////////////////////////////////////////////
Crie uma solução que mostre na tela quantos números são pares e quantos números são
ímpares no intervalo de 0 a 231.
*////////////////////////////////////////////////////////////////////////////////////
programa
{			
	inteiro qtdPar = 0, qtdImpar = 0		//declarando vairaveis
	inteiro somaPar = 0, somaImpar = 0
	funcao inicio()
	{
		escreva("Olá Criamos uma solução que mostre na tela quantos números são pares e quantos números são ímpares no intervalo de 0 a 231.\n")

		para(inteiro i=0; i<231; i++)	//inicio da estrutura de repetição
		{
		escreva(i+"\n")
		se((i % 2) == 0) //usamos isso para dizer que o número é par, se fosse ((numero % 2) == 1) seria ímpar.
		{
			qtdPar = qtdPar + 1
			somaPar = somaPar + i
		} senao {
			
			qtdImpar = qtdImpar + 1
			somaImpar = somaImpar + i
		 	}
		}
			escreva("Quantidade de números pares: " + qtdPar + "\n")	//saidas de dados
			escreva("Quantidade de números impares: " + qtdImpar + "\n")	
	}																//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1059; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */