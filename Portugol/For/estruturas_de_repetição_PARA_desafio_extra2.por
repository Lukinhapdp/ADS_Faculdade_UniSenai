/*/////////////////////////////////////////////////////////////////
Elabore uma solução que peça 05 números e mostre na tela, ao final,		//Lucas Adriano Pereira 28/03/2023
o total da soma desses 05 números.
*//////////////////////////////////////////////////////////////////
programa
{
	inteiro numero
	
	inteiro soma = 0
	funcao inicio()
	{
		escreva("Olá, fizemos uma solução que peça 05 números e mostre na tela, ao final, o total da soma desses 05 números. \n")
		
		para(inteiro i=0; i<5;i++){
		escreva("Escreva o "+(i+1)+ "º Número: ")
		leia(numero)
		soma = soma + numero
		
		} escreva(soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 613; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */