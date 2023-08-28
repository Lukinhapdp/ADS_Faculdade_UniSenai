programa
{
	cadeia competidor1, competidor2, competidor3, competidor4, vencedor_rodada1, vencedor_rodada2
	inteiro nmr, nmr1, nmr2
	
	funcao inicio()
	{
		escreva("Bem Vindo a Risadóla!! \n")
		escreva("Digite o nome do competidor 1: ")
		leia(competidor1)
		
		escreva("Digite o nome do competidor 2: ")
		leia(competidor2)
		
		escreva("Digite o nome do competidor 3: ")
		leia(competidor3)
		
		escreva("Digite o nome do competidor 4: ")
		leia(competidor4)

		
		escreva("Rodada 1 \n")
	 	escreva("(1)"+competidor1 + " x " + "(2)"+competidor2 + "\n")
		escreva("Informe qual o número do vencedor da primeira rodada. (1 ou 2): ")
		leia(nmr)

		se (nmr == 1)
		{
			 vencedor_rodada1 = competidor1 
		
		} senao se (nmr == 2)
		{
			vencedor_rodada1 = competidor2
		} senao
			escreva("Erro!!")

limpa()
		escreva("Rodada 2 \n")
	 	escreva("(1)"+competidor3 + " x " + "(2)"+competidor4 + "\n")
		escreva("Informe qual o número do vencedor da segunda rodada. (1 ou 2): ")
		leia(nmr)

				se (nmr == 1)
				{
					 vencedor_rodada2 = competidor3 
				
				} senao se (nmr == 2)
				{
					vencedor_rodada2 = competidor4
				} senao
					escreva("Erro!!")

limpa()
				escreva("Rodada Final \n")
			 	escreva("(1)"+vencedor_rodada1+ " x " + "(2)"+vencedor_rodada2 + "\n")
				escreva("Informe qual o número do vencedor da rodada Final. (1 ou 2): ")
				leia(nmr)
					se (nmr == 1)
					{
						escreva("O vencedor da rodada final foi: " +vencedor_rodada1+ "\n")
					
					}senao se (nmr == 2)
					{
						escreva("O vencedor da rodada final foi: " +vencedor_rodada2+ "\n")
					}senao{
						escreva("Erro!!")
					}


}	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1382; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */