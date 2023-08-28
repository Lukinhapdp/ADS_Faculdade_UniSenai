/*///////////////////////////////////////////////////////////////////////////////
A empresa “ORDEM DECRESCENTE” necessita de uma solução que alimente um
vetor com 4 valores numéricos inteiros. Como resultado deseja-se que imprima os		//Lucas Adriano Pereira 20/04/2023
valores na ordem inversa com que foram armazenadas, ou seja, do valor localizado
na última posição para o valor localizado na primeira posição do vetor.
*/////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[4],vet=0
	
	funcao inicio()
	{
		para (inteiro i=0; i<4; i++){
			escreva("\nDigite o " +(i+1)+ "º número do vetor: ")
			leia(vetor[i])
		}	
		
		para (inteiro i=4; i>0; i--){
			vet = i - 1
			escreva("\n"+(i)+"ª Vetor: "+vetor[vet])
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 765; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */