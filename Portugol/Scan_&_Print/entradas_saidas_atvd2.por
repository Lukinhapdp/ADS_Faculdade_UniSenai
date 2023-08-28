programa	//Lucas Adriano Pereira 25/02/2023
{
	/*////////////////////////////////////////////////////////////////////////////////
	Agora vamos criar um programa que simula uma venda de uma loja para um cliente
	final. Então, precisamos de duas informações: valor final da compra e a quantidade
	de parcelas. Ainda não aplicaremos questões como formas de pagamento e juros,
	por exemplo. Isso faremos a frente. Pedimos novamente que copie integralmente
	o programa abaixo, execute e verifique se ele está funcionando adequadamente.
	Nunca se esqueça de salvar e guardar tudo aquilo que foi desenvolvido.  
	*//////////////////////////////////////////////////////////////////////////////////

	//declarando as variaveis
		
	real valor_compra, valor_parcela
	inteiro num_parcelas

	
	funcao inicio()
	{	
		//entrada de dados
		escreva("Olá, criamos um programa para sua loja aqui está uma simulação: ")
		escreva("Valor da compra: ")
		leia(valor_compra)

		escreva("Deseja parcelar em quantas vezes?: ")
		leia(num_parcelas)

		valor_parcela = valor_compra/num_parcelas

		//saidas de dados

		escreva("Sua compra foi de: " , valor_compra ," reais." + "\n" )
		escreva("Você optou por parcelar em: " + num_parcelas + " vezes " , "\n")
		escreva("Sua parcela mensal: " + " é de " + valor_parcela + " reais ")		//fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 35; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */