/*/////////////////////////////////////////////////////////////////////////////
Melhore a solução anterior, mostrando na tela também a média desses 05 números.	 //Lucas Adriano Pereira 28/03/2023
*//////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero, media
	
	inteiro soma = 0
	funcao inicio()
	{
		escreva("Olá, fizemos uma solução que peça 05 números e mostre na tela, ao final, o total da soma desses 05 números. \n")
		
		para(inteiro i=0; i<5;i++){
		escreva("Escreva o "+(i+1)+ "º Número: ")
		leia(numero)
		soma = soma + numero
		
		}media = soma /5  
		escreva("Media: "+media+"\n")
		escreva("Soma: "+soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 674; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */