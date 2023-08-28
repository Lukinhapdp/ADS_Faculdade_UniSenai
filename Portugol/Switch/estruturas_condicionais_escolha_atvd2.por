/*//////////////////////////////////////////////////////////////////////////////////
A prefeitura de Chuville quer implantar um sistema de rodízio de veículos, a fim de
diminuir os congestionamentos da cidade. Para isso solicitou que fosse criado um
programa que verificasse e definisse o dia que uma pessoa pode circular com		//Lucas Adriano Pereira 13/03/2023
seu veículo, a partir de sua placa. Para isso, construiremos um algoritmo que
pede ao usuário o último número da placa de seu veículo e, a partir disso,
informará o dia da semana que ele não pode circular nas ruas. 
*///////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro ultimoNumero	//declarando variaveis
	
	funcao inicio()
	{					//entradas de dados
		escreva("Qual o último número da placa?: ")
		leia(ultimoNumero)
	
		escolha(ultimoNumero){
													//saidas
		caso 0:
			escreva("Segunda-Feira")
			pare

		caso 1:
			escreva("Terça-Feira")
			pare

		caso 2:
			escreva("Quarta-Feira")
			pare

		caso 3:
			escreva("Quinta-Feira")
			pare

		caso 4:
			escreva("Sexta-Feira")
			pare

		caso 5:
			escreva("Segunda-Feira")
			pare

		caso 6:
			escreva("Terça-Feira")
			pare

		caso 7:
			escreva("Quarta-Feira")
			pare

		caso 8:
			escreva("Quinta-Feira")
			pare

		caso 9:
			escreva("Sexta-Feira")
			pare
		
		caso contrario:
			escreva("Valor Inválido")
		}										//fim
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */