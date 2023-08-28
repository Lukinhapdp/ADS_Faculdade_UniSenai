programa	//Lucas Adriano Pereira 16/03/2023
/*/////////////////////////////////////////////////////////////////////////////		
Construa um algoritmo que seja capaz de solicitar ao cliente o código do item  
desejado, bem como, a quantidade de itens. Ao final, mostre para ele o produto 
selecionado, a quantidade, valor unitário e o valor final da compra.
*//////////////////////////////////////////////////////////////////////////////
{
	//declarando variaveis
	
	inteiro produto, quantidade
	real preco
	funcao inicio()
	{				//entrada de dados
		escreva("Olá Seja bem vindo a nossa lanchonete!!.\n ")
		escreva("Aqui está o nosso cardapio: \n")
		escreva("------------------------------")
		escreva("\n (100) Cachorro quente---R$ 1,70 \n (101) Bauru Simples---R$ 2,30 \n (102) Bauru com ovo---R$ 2,60 \n (103) Hamburguer---R$ 2,40 \n (104) Cheeseburguer---R$ 2,50 \n (106) Refrigerante---R$ 1,00 \n") 
		escreva("------------------------------\n")
		escreva("Digite o código do produto: ")
		leia(produto) 
	
			escolha(produto){
	
				caso 100:			//saidas de dados
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (1.70 * quantidade)
					escreva("Você comprou: "+quantidade+ " de unidades de Cachorro quente e o final da sua compra deu: R$ "+preco)
				pare
	
				caso 101:
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (2.30 * quantidade)
					escreva("Você comprou: "+quantidade+ " de unidades de Bauru Simples e o final da sua compra deu: R$ "+preco)
				pare
	
				caso 102:
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (2.60 * quantidade)
					escreva("Você comprou: "+quantidade+ " de unidades de Bauru com ovo e o final da sua compra deu: R$ "+preco)
				pare
	
				caso 103:
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (2.40 * quantidade)
					escreva("Você comprou: "+quantidade+ " de unidades de Hamburguer e o final da sua compra deu: R$ "+preco)
				pare
	
				caso 104:
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (2.50 * quantidade)
					escreva("Você comprou: "+quantidade+ " de unidades de Cheeseburguer e o final da sua compra deu: R$ "+preco)
				pare
	
				caso 105:
					escreva("Quantas unidades você comprou? ")
					leia(quantidade)
					preco = (1.00 * quantidade)		//saidas de dados
					escreva("Você comprou: "+quantidade+ " de unidades de Refrigerante e o final da sua compra deu: R$ "+preco)
				pare

				caso contrario: escreva("Erro!!!") //fim
		}
 	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */