/*//////////////////////////////////////////////////////////////////////////////
Aqui será criado um programa que carregará os valores de vendas de uma loja ao
longo do primeiro semestre de 2022. Para isso, será construída uma matriz 6x4.
Com isso, serão representados os primeiros 6 meses do ano, sendo que cada mês é		//Lucas Adriano Pereira 26/04/2023
formado por 4 semanas (6 meses x 4 semanas). Ao final, será mostrado o
faturamento da loja da seguinte forma:
● Total de vendas do semestre
● Total vendido em cada mês 
*///////////////////////////////////////////////////////////////////////////////
programa
{
	real vendas[6][4], totalVendasMes[6], totalVendasSemestre=0.0
	
	funcao inicio()
	{
		para(inteiro i=0; i<6; i++){
			para(inteiro j=0; j<4; j++){
				escreva("Venda da "+(j+1)+ "ª semana do "+(i+1)+"º mês: ")
				leia(vendas[i][j])
	
				totalVendasMes[i]+=vendas[i][j]
			}
			totalVendasSemestre+=totalVendasMes[i]
		}
		limpa()
	
		para(inteiro i=0; i<6; i++){
			escreva("\nVendas do "+(i+1)+ "º mês: "+totalVendasMes[i])
		}
		escreva("\n\nVendas totais do semestre: "+totalVendasSemestre)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 700; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */