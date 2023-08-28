programa					//desenvolvido por Lucas_Adriano_Pereira
						//data 24/02/2023
{
/*/////////////////////////////////////////////////////////////////////////////////	
Faça um programa para uma loja de tintas. O programa deverá pedir o tamanho
em metros quadrados da área a ser pintada. Considere que a cobertura da tinta
é de 1 litro para cada 3 metros quadrados e que a tinta é vendida em latas de 18
litros, que custam R$ 80,00. Informe ao usuário a quantidades de latas de tinta a
serem compradas e o preço total.  	
*//////////////////////////////////////////////////////////////////////////////////
	
	//declarando as variaveis
	
	inteiro area
 	inteiro litros
 	inteiro preco
 	inteiro quantidade

	funcao inicio()
	{
		//entrada
		
		escreva("Quantos metros quadrados você deseja pintar ")
		leia(area)
	
		//processo

		litros = area/3
		quantidade = (litros/18) + 1
		preco = quantidade * 80

		//saidas

		escreva("O comprador precisara de: " + quantidade + " latas de tinta, " + " e pagara: " + preco)
	}									//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */