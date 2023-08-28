programa			//desenvolvido por Lucas_Adriano_Pereira
				//data 23/02/2023
{
/*	///////////////////////////////////////////////////////////////////////////
  Uma concessionária pediu para que você crie uma solução para calcular o
valor final de salário de seus colaboradores. Por momento, eles farão isso
individualmente. Portanto, você não precisa se preocupar ainda em calcular
vários salários de uma só vez. Vamos ao cálculo repassado por eles:
● O salário fixo é de R$500,00;
● Para cada carro vendido, o vendedor recebe R$50,00;
● O vendedor recebe 5% do valor de todas as vendas da loja.
Portanto, você precisará pedir ao usuário algumas informações:
● Nome do vendedor
● Quantidade de carros vendidos pelo vendedor
● Total vendido pela concessionária
Ao final, você deve informar um relatório contendo:
● Nome do vendedor
● Valor total de comissão
● Salário total do vendedor	
*/////////////////////////////////////////////////////////////////////////////
	
	//declarando as variaveis

	cadeia nome
	real vendasV
	real vendasC
	real salarioV
	real comissao
	
	funcao inicio()
	{
		//entradas
		
		escreva("qual o seu nome ? ")
		leia(nome)

		escreva("qual o total de carros vendidos ? ")
		leia(vendasV)

		escreva("qual é o valor total de carros vendidos pela concessionaria ? ")
		leia(vendasC)
	
		//operações

	
  		comissao= vendasV * 50
  		salarioV= comissao + 500 + vendasC * 0.05

		//saidas
 
		escreva(" o seu nome é "+ nome)
		escreva(" a comissão do vendedor é: "+ comissao)
		escreva(" o salário total do vendedor é :"+ salarioV)
	
	}		//fim

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */