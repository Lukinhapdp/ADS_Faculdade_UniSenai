programa	//Lucas Adriano Pereira 16/02/2023
{
	/*/////////////////////////////////////////////////////////////////////////
	Construa um programa que solicite dois números e seja capaz de executar uma 
	operação selecionada pelo usuário. 
	*//////////////////////////////////////////////////////////////////////////
	
	//declarando variaveis

	inteiro operacao
	inteiro numero1, numero2, resultado
	
	funcao inicio()
	{		//entrada de dados
		escreva("Olá, criamos um programa para você.\n ")
		escreva("Nos informe o primeiro número: ")
		leia(numero1)
	
		escreva("Nos informe o segurança número: ")
		leia(numero2)

		escreva("Agora nos informe o que você irá fazer com esses números:\n (1) Média entre os números digitados \n (2) Diferença entre os números \n (3) Produtos entre os números digitados \n (4) Divisão do primeiro pelo segundo \n (5) Resto da divisão do primeiro pelo segundo \n (6) Divisão do segundo pelo primeiro \n (7) Resto da divisão do segundo pelo primeiro \n (8) Soma dos dois números \n")
		leia(operacao)
			
			escolha(operacao){
	
			caso 1:    		//saidas de dados
				escreva("Você quer saber a Média entre os números digitados.\nO resultado é: ")
				escreva((numero1 + numero2)/2 )
			pare
	
			caso 2:
				escreva("Você quer saber a Diferença entre os números.\nO resultado é: ")
				resultado = numero1 - numero2
				escreva(resultado)
			pare
	
			caso 3:
				escreva("Você quer saber a Produtos entre os números digitados.\nO resultado é: ")
				resultado = numero1 * numero2
				escreva(resultado)
			pare
	
			caso 4:
				escreva("Você quer saber a Divisão do primeiro pelo segundo.\nO resultado é: ")
				escreva(numero1 / numero2)
			pare
	
			caso 5:
				escreva("Você quer saber a Resto da divisão do primeiro pelo segundo.\nO resultado é: ")
				escreva(numero1 % numero2)
			pare
		
			caso 6:
				escreva("Você quer saber a Divisão do segundo pelo primeiro.\nO resultado é: ")
				escreva(numero2 / numero1)
			pare
	
			caso 7:
				escreva("Você quer saber a Resto da divisão do segundo pelo primeiro.\nO resultado é: ")
				escreva(numero2 % numero1)
			pare
	
			caso 8:			//saidas de dados
				escreva("Você quer saber a Soma dos dois números.\nO resultado é: ")
				escreva(numero1 + numero2)
			pare

			caso contrario:escreva("Erro!!!")		//fim
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */