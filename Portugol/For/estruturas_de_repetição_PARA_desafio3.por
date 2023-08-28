/*//////////////////////////////////////////////////////////////////////////////
Você está organizando um evento beneficente e precisa distribuir um único
brinde para uma das pessoas participantes do evento. Contudo, esse evento não
permite sorteio nominal. Então, alguém deu a seguinte ideia: desenvolver uma
solução de adivinhação. A pessoa vai no computador e pode digitar até 5 (cinco)		//Lucas Adriano Pereira 23/03/2023
números, ou seja, ela terá 5 (cinco) chances. Se ela adivinhar um o número
escolhido aleatoriamente pelo computador, ela ganhará. Se acertar aparecerá
“PARABÉNS! Você ganhou o brinde!”. Se não, lerá “Que pena. Infelizmente você
não acertou.”
*///////////////////////////////////////////////////////////////////////////////
programa
{				
	inclua biblioteca Util
	
	funcao inicio()
	{		
		inteiro qntd = 0			//declarando variaveis
		inteiro numero = 0
		inteiro nmrAleatorio
		logico verificador = falso
		
		nmrAleatorio = Util.sorteia(0,10)
		//entrada de dados
		escreva("Olá seja bem vindo ao nosso evento benificente, vamos distribuir um bindre para cada participante.\n ")
		escreva("Para começar digite um número aleatorio!!\n ")
		
		para(inteiro i=0; i<5; i++){
			se (verificador == falso){
			escreva((i+1) +"ª tentativa ")
			leia(numero)
			}	
			se (nmrAleatorio == numero){
			
			verificador = verdadeiro
			qntd = qntd + 1
			}
       	}	
		se (verificador == falso){
			escreva("Que pena. Infelizmente você não acertou.\n")
		} senao{
			escreva("PARABÉNS! Você ganhou o brinde!\n")
		}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */