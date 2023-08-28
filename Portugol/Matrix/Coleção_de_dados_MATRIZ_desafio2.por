/*////////////////////////////////////////////////////////////////////////////////////
O professor “Ludovico Volpato” necessita de uma solução em que dada uma
matriz de 4x5 elementos, fazer um algoritmo para calcular a soma de cada linha e a	//Lucas Adriano Pereira 27/04/2023
soma de todos os elementos.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro matriz[4][5], somaLinha[4], somaTotal=0 
	funcao inicio()
	{
		
		para(inteiro i=0; i<4; i++){
			para(inteiro j=0; j<5; j++){
				escreva("Digite um número para a "+(j+1)+"ª Linha e "+(i+1)+"ª Coluna: ")
				leia(matriz[i][j])
			
			somaLinha[i] = somaLinha[i] + matriz[i][j]
		
			}
		
		somaTotal = somaTotal + somaLinha[i]	
		
		}
		escreva("\n")
		para(inteiro i = 0; i < 4; i++){
			escreva("Soma total da "+ (i+1)+"ª linha: "+somaLinha[i]+"\n")	
		}
		escreva("\nSoma total de todos os elementos é: "+somaTotal+"\n1")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 941; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 8, 9, 6}-{somaLinha, 8, 23, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */