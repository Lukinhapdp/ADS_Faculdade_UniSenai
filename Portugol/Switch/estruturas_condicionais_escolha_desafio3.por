programa
{	//Lucas Adriano Pereira 15/03/2023
	
	/*Construa uma calculadora que faça as operações básicas de soma (+),
	subtração (-), multiplicação (*) e divisão (/). Você solicitará 2 (dois) números,
	solicitará a operação e mostrará o resultado desse cálculo. Caso seja
	selecionada uma divisão, você não pode permitir que o 2º número seja 0 (zero).
	*/

	//declarando variaveis
	cadeia multiplicacao, subtracao, soma,divisao
	inteiro operacao
	real numero1, numero2
	
	funcao inicio()
	{	//entradas de dados
		escreva("Olá \n")
		escreva("Digite o primeiro número: ")
		leia(numero1)

		escreva("Digite o segundo número: ")
		leia(numero2)

	se ((numero1 >= 0) e (numero2 >= 0)){

		//entrada de dados
		escreva("Digite a operação: \n (1) Multiplicação \n (2) Subtração \n (3) Soma \n (4) Divisão \n ")
		leia(operacao)
	
		escolha (operacao){
        
			caso 1: //saida de dados
				escreva(numero1 * numero2)
			pare
		
			caso 2: //saida de dados
				escreva(numero1 - numero2)
			pare
		
			caso 3: //saida de dados
				escreva(numero1 + numero2)
			pare

			caso 4: //saida de dados
				se (numero2 >=0)
				escreva(numero1 / numero2)
				senao escreva("Erro")
			pare
	
			caso contrario: 
				escreva("Erro!!!")
			}
	} senao 
		escreva("Erro!!!")
	}						//fim
}		

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */