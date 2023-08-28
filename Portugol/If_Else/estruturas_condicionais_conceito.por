programa
{
	//lucas adriano pereira
	//27/02/2023


	
	//declarando variaveis
	
	inteiro ano_atual, ano_nasc, idade
	
	funcao inicio()
	{
		//entrada
		
		escreva("Escreva o ano atual: ")
		leia(ano_atual)

		escreva("Escreva o ano de seu nascimento: ")
		leia(ano_nasc)

		//processo
		
		idade = ano_atual - ano_nasc

		//saidas
		
	se (idade >= 18)
	{
		escreva("\n Sua idade é: " + idade + "\n Você é maior de idade!!!")
	}
 	senao se (idade >= 0)
 	{
 		escreva("\n Sua idade é " + idade + "\n Você é menor de idade!!!")
 	}
 	senao 
 	{
 		escreva("\n Essa pessoa nem nasceu ainda ")
 	}
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	}
 	
}
 

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 117; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */