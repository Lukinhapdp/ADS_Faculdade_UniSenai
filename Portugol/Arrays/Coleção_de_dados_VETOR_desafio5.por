/*/////////////////////////////////////////////////////////////////////////
A empresa “SÓ CALCULO SEM PRECONCEITO” solicita uma solução que alimente
um vetor com 5 valores inteiros. Como resultado deseja que seja apresentado	//Lucas Adriano Pereira 20/04/2023
quantos valores pares foram armazenados neste vetor. 
*///////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[5], contPar=0
	
	funcao inicio()
	{
		escreva("Olá fizemos uma solução que alimenta um vetor com 5 valores inteiros e no final mostramos apenas o números páres.\n")
	
		para (inteiro i=0; i<5; i++){
			escreva("\nDigite o " +(i+1)+ "º número do vetor: ")
			leia(vetor[i])

			se((vetor[i] % 2)==0){
				contPar = contPar ++
			} 
		}
		escreva("\nO total de números pares armazenados nesse vetor são: " +contPar+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 840; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */