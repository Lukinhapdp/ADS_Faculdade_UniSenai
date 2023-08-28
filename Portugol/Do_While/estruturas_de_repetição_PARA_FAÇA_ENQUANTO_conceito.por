programa
{
	
	funcao inicio()
	{
		inteiro nmrContador
		logico logRepete
		
		nmrContador = 0
		//log Repete = falso

		faca {
			nmrContador += 1

			escreva("Deseja continuar? Digite verdadeiro para SIM e falso para NÃO\n")
			leia(logRepete)
		
		} enquanto(logRepete == verdadeiro)

		escreva("\nLembre-se que o contador se iniciou com a quantidade ZERO")
		escreva("\nO contador executou "+nmrContador+" o FAÇA ENQUANTO")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 439; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */