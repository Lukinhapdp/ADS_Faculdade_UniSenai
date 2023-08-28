/*/////////////////////////////////////////////////////////////////////////////////////////
A empresa “CONSTATA TUDO LTDA.” solicitou uma solução que alimente um vetor
com 10 números inteiros e imprima o menor valor armazenado neste e também			//Lucas Adriano Pereira 20/04/2023
imprimir a posição onde este encontra-se no vetor.
*//////////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[10],menorValor=0, posicao,valor
	funcao inicio()
	{
		escreva("Olá a empresa “CONSTATA TUDO LTDA.” solicitou uma solução que alimente um vetor com 10 números inteiros e imprima o menor valor armazenado neste e também!!\n")
		para (inteiro i=0; i<10; i++){
			escreva("\nDigite o " +(i+1)+ "º número do vetor: ")
			leia(vetor[i])

			menorValor = vetor[0] 
			se(menorValor > vetor[i]){
				menorValor=vetor[i]
				posicao = i
			}
		} 
		escreva("\nO menor valor é: "+menorValor+"\nE a posição do menor vetor é: "+(posicao+1)+"º Vetor!\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 874; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */