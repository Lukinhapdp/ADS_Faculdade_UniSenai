programa		//Lucas Adriano Pereira 01/03/2023
{
/*////////////////////////////////////////////////////////////////////////////////////	
Construa um algoritmo que possibilite ao usuário informar dois números inteiros. Seu
objetivo é obter a divisão inteira (usando “\”) do primeiro número pelo segundo
número (quociente). Depois buscará o resto da divisão do primeiro número pelo
segundo (usando “%”). Para que o usuário vença esse pequeno desafio, devem ser
seguidas as seguintes condições:  	
*/////////////////////////////////////////////////////////////////////////////////////

	//declarando as variaveis
 
	inteiro quociente, numero1, numero2, resto 
	
	funcao inicio()
	{					//entrada de dados
		escreva("Olá, vamos fazer um jogo de divisão, você tem que informar um número para dividir com outro, tendo que: \n O quociente tem que ser ímpar e maior que 3; \n O resto da divisâo tem que ser par \n")
		
		escreva(" Vamos começar, insira um número: ")
		leia(numero1)
	
		escreva(" Muito bem, agora insira o segundo número: ") 
		leia(numero2)
	
		escreva(" Você informou os números: " + numero1 + " e " + numero2 + "\n")
		
		quociente = numero1/numero2
		resto = numero1 % numero2

		
 		escreva(" O quociente é: "+ quociente + "\n" + " E o resto é: " + resto + "\n")
	
	se ((quociente > 3 ) e (quociente % 3 == 1) e (resto % 2 == 0))
		{		//saidas de dados
			escreva("você ganhou")
		} senao {
			escreva ("Você perdeu")
		}
}													//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1453; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */