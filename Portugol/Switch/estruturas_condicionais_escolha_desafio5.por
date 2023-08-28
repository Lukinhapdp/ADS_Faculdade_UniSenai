programa	//Lucas Ariano Pereira 15/03/2023
{
	/*///////////////////////////////////////////////////////////////////////////////////
	As Lojas VestADS querem controlar suas vendas. Para isso, construa um programa
	que permitirá ao vendedor inserir o valor de compra do produto, bem como a forma
	de pagamento a ser utilizada. Para isso, siga algumas regras para calcular o valor
	final dessa compra.
	*////////////////////////////////////////////////////////////////////////////////////
	
	real valorCompra, valorFinal	//declarando variaveis
	inteiro formaPag, variacao		
	
	funcao inicio()
	{		//entrada de dados
		escreva("Bem vindo As Lojas VestADS.")
		escreva("Primeiro me informe o valor da compra:")
		leia(valorCompra)

		escreva("Qual a forma de pagamento?: \n (1) Cheque \n (2) Cartão de Credito \n (3) Cartão de Debito \n (4) Dinheiro/PIX \n")
		leia(formaPag)
	
	 	escolha(formaPag){
			
			caso 1: //entrada de dados
				escreva("Você ira pagar em cheque, você deseja fazer: \n (1) A Vista \n (2) Prazo \n ")
				leia(variacao)

				escolha(variacao){ 		//saidas de dados
					caso 1:
						escreva("Você decidiu fazer a vista o valor de R$"+valorCompra+ " reais, não há alteração de valor.\n")					
					pare
			
					caso 2:
						escreva("Você decidiu fazer a prazo o valor de R$"+valorCompra+ " reais, não há alteração de valor.\n")
					pare
			
					caso contrario:
						escreva("Erro!!!")
			
			pare}
			pare
			caso 2:
				escreva("Você ira pagar com cartão de crédito, você deseja fazer: \n (1) A Vista \n (2) Prazo \n ")
				leia(variacao)

				escolha(variacao){
					caso 1:
						escreva("Você decidiu fazer a vista o valor de R$"+valorCompra+ "reais, não há alteração de valor.\n")					
					pare

					caso 2:
						escreva("Você decidiu fazer a prazo o valor de R$"+valorCompra+ "reais, irá acrescentar 5% no valor final, conseguimos fazer somente em até 10x.\n")					
						valorFinal = (valorCompra * 1.05)
						escreva("Finalizamos seu pedido, sua compra ficou com um valor final de R$"+valorFinal+" reais.\n")
					pare

					caso contrario:
						escreva("Erro!!!")
			
			pare}
	 		pare
	 		caso 3:		//saidas de dados
	 			escreva("Você ira pagar com cartão de débito, você ganhara 5% de desconto.\n")
				valorFinal = (valorCompra - 1.05)
	 			escreva("A sua compra ficou com um valor de R$"+valorFinal+ " reais.\n")
	 		pare
			
	 		caso 4:
	 			escreva("Você ira pagar com dinheiro ou PIX, você ganhara 10% de desconto.\n")
				valorFinal = valorCompra - (valorCompra * 0.10)
	 			escreva("A sua compra ficou com um valor de R$"+valorFinal+ " reais.\n")
	 		pare
	 		
	 		caso contrario:
						escreva("Erro!!!")
	 	}		//fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2670; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */