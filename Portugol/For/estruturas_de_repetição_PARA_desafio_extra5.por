/*////////////////////////////////////////////////////////////////////////////////////////
Desenvolva uma solução que mostre na tela um intervalo de números que o usuário desejar.
Para isso, o programa deve pedir o número inicial e final deste intervalo para o usuário.	   //Lucas Adriano Pereira 29/03/2023
*/////////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero1, numero2
	funcao inicio()
	{
		
		escreva("Olá. Fizemos uma solução que mostre na tela um intervalo de números que o usuário desejar. Para isso, o programa deve pedir o número inicial e final deste intervalo para o usuário.\n")
		escreva("Digite o primeiro número: ")
		leia(numero1)

		escreva("Digite o segundo número: ")
		leia(numero2)
	
		para(inteiro i=numero1; i<=numero2; i++)
		escreva(i+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 832; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */