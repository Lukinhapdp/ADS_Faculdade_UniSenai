programa//lucas adriano pereira 26/02/2023
{
/*//////////////////////////////////////////////////////////////////////////////
 Você está desenvolvendo uma solução para uma loja de roupas. Num primeiro
momento, eles só querem calcular o valor final de venda de um item a partir de
seu custo, incidindo comissão para o representante e impostos do governo.
Para isso, a gerente da loja explicou que para realizar esses cálculos você que
o:
● Usuário informe o valor de custo do item direto da fábrica (VLC);
● Usuário informe a porcentagem de comissão que o representante
receberá a partir do custo (CR);
● Usuário informe a porcentagem de margem de lucro desejada a partir do
valor acumulado entre custo e comissão (ML);
● Usuário informe a porcentagem de impostos governamentais para o
valor final acumulado de todos os itens anteriores (GOV).
Assim, o usuário visualizará em sua tela o valor final do produto com todos
esses itens acumulados e também discriminadamente, ou seja, item a item dos
valores obtidos. Abaixo, deixamos a fórmula de cálculos a ser utilizada:
*/////////////////////////////////////////////////////////////////////////////////
	
	//declarando as variaveis
	
	real vlc
	real cr
	real ml
	real gov
	real valor_comissao
	real margem_lucro
	real impostos
	real valor_final
	funcao inicio()
	{
		//entradas
		
	 	escreva("Informe o valor de custo do item de fábrica: ")
		leia(vlc)


		escreva("Informe a porcentagem de comissão que o representante receberá a partir do custo: ")
		leia(cr)


		escreva("Informe a porcentagem de margem de lucro desejada a partir do valor acumulado entre custo e comissão: ") 
		leia(ml)

	
		escreva("Informe a porcentagem de impostos governamentais para o valor final acumulado de todos os itens anteriores: ")
		leia(gov)

		//operações
	 
		valor_comissao = vlc * (cr/100)
		margem_lucro = vlc * (cr/100) * (ml/100)
		impostos = vlc * (cr/100) * (ml/100) * (gov/100)
		valor_final = valor_comissao + margem_lucro + impostos

		//saida
		
		escreva(" O valores são: \n ")
		escreva("Valor da comissão: "+valor_comissao+ "\n"+ " Margem de lucro: "+margem_lucro+"\n"+" Impostos: "+impostos+ "\n"+" Valor final: " +valor_final)
			
	}			//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 34; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */