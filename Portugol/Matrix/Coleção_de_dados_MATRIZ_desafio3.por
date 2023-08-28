/*////////////////////////////////////////////////////////////////////////////// 
A empresa “Só soma Ltda.” necessita de uma solução que leia uma matriz 4x3 de		//Lucas Adriano Pereira 28/04/2023
números reais e mostre a soma de seus elementos
*///////////////////////////////////////////////////////////////////////////////
 programa
{
	inteiro matriz[4][3],  somaTotal=0 
	funcao inicio()
	{
		para(inteiro i=0; i<4; i++){
			para(inteiro j=0; j<31; j++){
				escreva("Digite um número para a "+(j+1)+"ª Linha e "+(i+1)+"ª Coluna: ")
				leia(matriz[i][j])
			
				somaTotal += matriz[i][j]
			}	
		}	
		escreva("\nSoma total de todos os elementos é: "+somaTotal+"\n1")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */