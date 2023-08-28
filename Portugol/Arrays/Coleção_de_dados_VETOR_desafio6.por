/*//////////////////////////////////////////////////////////////////////////
A empresa “CONSTATA TUDO LTDA.” solicitou uma solução que alimente um vetor
com 10 números inteiros e imprima o maior valor armazenado neste.			//Lucas Adriano Pereira 20/04/2023
*///////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[10],numeroMaior=0
	funcao inicio()
	{
		escreva("Olá A empresa “CONSTATA TUDO LTDA.” solicitou uma solução que alimente um vetor com 10 números inteiros e imprima o maior valor armazenado neste.\n")
	
		para (inteiro i=0; i<10; i++){
			escreva("\nDigite o " +(i+1)+ "º número do vetor: ")
			leia(vetor[i])
			
			se(numeroMaior< vetor[i]){
				numeroMaior = vetor[i]
			}
		}
		escreva("\n\nO maior número armazenado no vetor é: " +numeroMaior+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */