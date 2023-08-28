programa
{
	//lucas adriano pereira
	//06/03/2023
	
	//declarando as variaveis
	cadeia nome, teste_p, teste_t
	n
	
	inteiro idade
	
	funcao inicio()
	{
		//entrada
		
		escreva("Olá")
		escreva("Gostariamos de saber se você está apto ou não para dirigir. \n")

		escreva("Informe o seu nome: \n")
		leia(nome)
		
		escreva("Informe a sua idade: ")
		leia(idade)
		escreva("\n")



		//processo
	se (idade < 18)
	{
		escreva("Você não é maior de 18 anos. Você está Inapto a dirigir!")
	
	}senao{ 
	
	escreva("Você fez o curso teórico? (s/n) \n")
 		leia(teste_t)

 		escreva("Você fez o curso prático? (s/n) \n")
		leia(teste_p)
	
	}se((idade >= 18) e (teste_t == "s") e (teste_p == "s"))
	
		//saida
	{
		escreva("Você tem 18 anos ou mais e fez os testes prático e teórico. Você está Apto a dirigir! ")
		escreva("\n")
	} senao {
		
		se((idade >= 18) e (teste_t == "s") e (teste_p == "n"))
			{
				escreva("Você tem 18 anos ou mais, mas você não terminou o teste prático apenas o teórico. Você está Inapto a dirigir! ")
			} senao {
				
				se ((idade >= 18) e (teste_t == "n") e (teste_p == "s"))
				{
					escreva("Você tem 18 anos ou mais, mas você não terminou o teste teórico. Você está Inapto a dirigir! ")
				} senao {
					
					se ((idade >=18) e (teste_t == "n") e teste_p == "n"))
					{
						escreva("Você tem 18 anos ou mais, mas você não terminou os testes práticos e teóricos. Você está Inapto a dirigir! ")
					} senao  
					
					{
						
					}
				}
			
			
		    }
		}
	  

	 	escreva("\n")
	
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */