programa
{
	
	inteiro valor1, valor2, resultado
	
	funcao inicio()
	{
		valor1 = solicitaNmr("1")
		valor2 = solicitaNmr("2")
	
		resultado = valor1 + valor2
	
		limpa()
	
		escreva("\nO resultado de operação é: " +resultado)
	}

	funcao inteiro solicitaNmr(cadeia ordem)
	{
		inteiro valor
		escreva("\nInforme o " +ordem+ "º valor: ")
		leia(valor)

		retorne valor 
	}

	funcao imprimeTxt(inteiro soma)
	{
		escreva("\nO resultado desta soma é: " +soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */