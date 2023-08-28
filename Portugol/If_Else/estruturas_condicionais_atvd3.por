programa					//lucas adriano pereira
						//28/02/2023
{
/*/////////////////////////////////////////////////////////////////////////////////////
Pensaremos numa solução que pedirá ao usuário um número inteiro, o seu antecessor
(aquele que vem antes) e seu sucessor (aquele que vem depois). Depois,
verificaremos se os dados informados estão corretos, validando essa informação a
partir do número informado. Se ele acertou, venceu o desafio. Se não, saiu derrotado.
*//////////////////////////////////////////////////////////////////////////////////////

		//declarando as variaveis

	inteiro numero_informado
	inteiro numero_antecessor
	inteiro numero_sucessor
	
	funcao inicio()
	{
		//entradas
		
		escreva("Olá!\n")
		escreva("Nesse programa verificaremos se o número antecessor e o sucessor estão corretos.\n")

		escreva("Informe o número a ser verificado; ")
		leia(numero_informado)
		escreva("\n")

		escreva("Informe seu número antecessor: ")
		leia(numero_antecessor)

		escreva("Informe seu número sucessor: ")
		leia(numero_sucessor)

		escreva("\n")

		//processo

		se((numero_antecessor == (numero_informado - 1)) e (numero_sucessor == (numero_informado + 1 )))
		{
		//saidas
			
			escreva("VOCÊ VENCEU!!!")
		} senao {
			escreva("Infelizmente, você perdeu.")
		}

		escreva("\n")			//fim
	
	

	
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */