programa			//lucas adriano pereira 27/02/2003
	
{	
/*////////////////////////////////////////////////////////////////////////////////////	
Construiremos um programa que perguntará ao usuário a maioridade civil do país que
ele mora. Depois, ele vai informar sua idade. Nossa missão será dizer apenas se ele
é ou não maior de idade.  	
*//////////////////////////////////////////////////////////////////////////////////////
	//declarando as variaveis

	inteiro maioridade
	inteiro idade
	
	funcao inicio()
	{
		//entrada
		
		escreva("Olá")
		escreva("Nesse programa verificamos se você é maior de idade ou não. \n")

		escreva("Informe a maioridade civil do país que você vive: ")
		leia(maioridade)
		escreva("\n")

	
	se(maioridade < 0)
	{
		escreva("A maioridade civil informada é negativa. Por isso o progama será encerrado. ")
	} senao {

		//processo
	
		escreva("Informe sua idade ")
		leia(idade)
		escreva("\n")

		//saida
	
		se(idade < 0)
		{
			escreva("A idade informada é negativa. Por isso o pri=ograma será encerrado ")		
		} senao {
	
			se(idade < maioridade)
			{
				escreva("Você é menor de idade. ")
			} senao {
				escreva("Você é maior de idade. ")

		    }
		}
	  }

	 	escreva("\n") //fim
	
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 330; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */