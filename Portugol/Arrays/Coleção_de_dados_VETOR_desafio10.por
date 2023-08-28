/*//////////////////////////////////////////////////////////////////////////////////
Professor “Ludovico Volpato” necessita de uma solução que alimente 2 vetores com
valores reais e após, armazenar em um terceiro vetor a soma dos elementos dos 2
vetores, respeitando as mesmas posições, ou seja, o valor da posição 1 do primeiro	   //Lucas Adriano Pereira 24/04/2023
vetor, somar com o valor da posição 1 do segundo vetor e assim por diante. Imprimir
os valores do terceiro vetor que, por sua vez, conterá a soma dos valores dos
vetores.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	real vetor1[5], vetor2[5], vetor3[5]
	funcao inicio()
	{
		escreva("\n--------------Primeiro Vetor--------------\n")
		
		para(inteiro i=0; i<5; i++){
			escreva("\nDigite o "+(i+1)+"º número do 1º vetor: ")
			leia(vetor1[i])
		}
		escreva("\n--------------Segundo Vetor--------------\n")
		
		para(inteiro i=0; i<5; i++){
			escreva("\nDigite o "+(i+1)+"º número do 2º vetor: ")
			leia(vetor2[i])
		}
		   
		para(inteiro i=0; i<5; i++){
			vetor3[i] = vetor1[i] + vetor2[i]
			escreva("\nO resultado da soma da posição "+(i+1)+" é: "+ vetor3[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 866; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */