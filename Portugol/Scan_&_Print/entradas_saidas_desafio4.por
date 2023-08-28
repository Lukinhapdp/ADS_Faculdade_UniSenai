programa			//desenvolvido por lucas_adriano_pereira
				//data 24/02/2023
{
/*////////////////////////////////////////////////////////////////////////////
Você é responsável das soluções tecnológicas para o setor de Atendimento ao
Cliente de sua empresa. Então, seu chefe comentou que, para ele, é mais fácil
e perceptível saber quantos segundos um atendente dedicou dando suporte
para um cliente. Para solucionar esse problema, ele quer que você crie uma
solução que seja capaz de converter horas, minutos e segundos apenas para
segundos.
*//////////////////////////////////////////////////////////////////////////////
	
	//declarando as variaveis
		
	cadeia nome
	real horas, minutos, segundos
	real tempo
	
	funcao inicio()
	{		//entradas
			
		escreva("Nome do atendente: ")
		leia(nome)		


		escreva("Digite a quantidade de horas: ")
		leia(horas)


		escreva("DIgite a quantidade de minutos: ")
		leia(minutos)


		escreva("Digite a quantidade de segundos: ")
		leia(segundos)

		//processo
		
		horas = horas*3600
		minutos = minutos*60
		tempo = horas + minutos + segundos

		//saidas

		escreva("O atendente :"+ nome + " dedicou "+ tempo+ " segundos de atendimento")
	}		
	//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1183; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */