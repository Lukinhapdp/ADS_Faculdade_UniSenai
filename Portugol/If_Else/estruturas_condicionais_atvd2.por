programa			//lucas adriano pereira
				//28/02/2023
{	
/*///////////////////////////////////////////////////////////////////////////////////		
Agora, faremos uma solução para um mercado. Eles vendem maçãs e querem aplicar
um desconto para o cliente. O preço normal das maçãs é R$ 1.30. Porém, a partir de
uma dúzia, ou 12 maçãs, é pago apenas R$ 1.00 por unidade. A ideia nossa é mostrar
quantas maçãs foram compradas e qual o valor que será pago ao final.	
*/////////////////////////////////////////////////////////////////////////////////////

 	//declarando as variaveis
	
	inteiro qtd_macas
	real	valor_macas
	real valor_final

	funcao inicio()
	{

		//descrição

		
		escreva("Olá!\n")
		escreva("Nesse programa faremos o cálculo do valor de venda de maçãs.\n")
	
		escreva("Informe a quantidade de maçãs vendidas: ")
		leia(qtd_macas)
		escreva("\n")

		//processo

		se(qtd_macas <= 0)
		{
			escreva("A quantidade de maçãs vendidas é zero ou negativa. Por isso, o programa será encerrado.")
		} senao {

			se(qtd_macas < 12)
		{
			valor_macas = 1.30
			
		} senao {
			valor_macas = 1.00
			
		}
		
		valor_final = qtd_macas * valor_macas

		//saida

		escreva("O valor final de venda das maçãs é de R$ " + valor_final)
		
		}
		escreva("\n")     //fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 456; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */