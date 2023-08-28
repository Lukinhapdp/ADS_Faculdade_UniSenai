/*//////////////////////////////////////////////////////////////////////////////////
 Você foi contratado para auxiliar um posto de combustíveis que precisa controlar os
valores de venda de seus produtos. Para aumentar sua clientela, eles decidiram
fazer uma promoção, aplicando descontos para cada litragem e tipo. Assim, o dono
do posto enviou uma mensagem contendo os descontos dados para cada alguns
casos
*/////////////////////////////////////////////////////////////////////////////////////  //Lucas Adriano Pereira 04/03/2023
programa
{					//declarando variaveis
	cadeia tipo_combustivel
	real litros, preco, desconto, g, a, d

	funcao inicio()
	{						//entrada de dados
		escreva("Qual a quantidade de litros? ")
		leia(litros)

		escreva("Qual tipo de combustivel? (Digite apenas a inicial). ")
		leia(tipo_combustivel)
		g = 5.09
		a = 4.39		//operações
		d = 6.39
	
	se ((litros <= 20) e (tipo_combustivel == "a"))//alcool 3%
	{
		
		preco = litros * a 
		desconto = preco - (preco * 3/100) 
		
		escreva("Você colocou R$ " + desconto +" reais de alcool ")
	}
		senao
		{se  ((litros > 20) e (tipo_combustivel == "a"))//alcool 5%
			{
			
			preco = litros * a
			desconto = preco - (preco * 5/100)
			
			escreva("Você colocou R$ " + desconto +" reais de alcool ")
			}
		}
			senao 
			{	se ((litros <= 20) e (tipo_combustivel == "g"))
				{ 
				
				preco = litros * g
				desconto = preco - (preco * 4/100) 
				
				escreva("Você colocou R$ " + desconto + " reais de gasolina")
				
				}senao {
					se ((litros > 20) e (tipo_combustivel == "g"))
					{
						preco = litros * g
						desconto = preco - (preco * 6/100)
						
						escreva("Você colocou R$ " + desconto + " reais de gasolina")
					
						} senao se
						
							(tipo_combustivel == "d")
							{	
							preco = litros * d
							desconto = preco - (preco * 2/100)
															//saidas de dados
							escreva("Você colocou R$ " + desconto + " reais de diesel")
				}
			}
		}										//fim
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1985; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */