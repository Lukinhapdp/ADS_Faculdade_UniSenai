programa				//lucas adriano pereira
					//01/03/2023
{
/*////////////////////////////////////////////////////////////////////////////////////	
 Você atua numa empresa de tecnologia que precisa fazer o balanço financeiro
semestral. Para auxiliar nessa questão, você se prontificou a construir um algoritmo
que solicitasse o ganho bruto e os gastos da empresa para cada um dos 06 meses
do primeiro semestre do ano de 2022. Ao final, sua ideia é mostrar no final o ganho
bruto semestral, o gasto semestral e o saldo financeiro, informando também se a
empresa teve lucro, prejuízo ou nem lucro nem prejuízo.
Obs.: Por enquanto, peça separadamente os ganhos e os gastos mensais do
semestre.	
*/////////////////////////////////////////////////////////////////////////////////////

	//declarando as variaveis
	
	real ganho1, ganho2, ganho3, ganho4, ganho5, ganho6
	real gasto1, gasto2, gasto3, gasto4, gasto5, gasto6
	real gasto_bruto
	real ganho_bruto
	real saldo
	
	funcao inicio()
	{
		//entradas
		
		escreva("Informe o ganho do mês de janeiro ")
		leia(ganho1)
		
		escreva("Informe o ganho do mês de fevereiro ")
		leia(ganho2)
		
		escreva("Informe o ganho do mês de março ")
		leia(ganho3)
		
		escreva("Informe o ganho de mês de abril ")
		leia(ganho4)
		
		escreva("Informe o ganho de mês de maio ")
		leia(ganho5)
		
		escreva("Informe o ganho de mês de junho ")
		leia(ganho6)

		
		escreva("Informe o gasto de mês de janeiro ")
		leia(gasto1)
		
		escreva("Informe o gasto de mês de fevereiro ")
		leia(gasto2)
		
		escreva("Informe o gasto de mês de março ")
		leia(gasto3)
		
		escreva("Informe o gasto de mês de abril ")
		leia(gasto4)
		
		escreva("Informe o gasto de mês de maio ")
		leia(gasto5)
		
		escreva("Informe o gasto de mês de junho ")
		leia(gasto6)

limpa()//Função para limpor o console

	//processo
	
	ganho_bruto = ganho1 + ganho2 + ganho3 + ganho4 + ganho5 + ganho6
	gasto_bruto = gasto1 + gasto2 + gasto3 + gasto4 + gasto5 + gasto6
	saldo = ganho_bruto - gasto_bruto

	//saidas

		escreva(" Ganho bruto; " + ganho_bruto + "\n"+ " Gasto bruto; " + gasto_bruto +"\n " + "Saldo líquido; " + saldo + "\n")

	se(saldo > gasto_bruto)
	{
			escreva("Sua impresa teve lucro!! \n")
	}
		senao se(saldo < gasto_bruto)
	{
			escreva("Sua impresa teve prejuízo!! \n")
	}
		senao
	{
			escreva("Sua impresa não teve lucro nem prejuízo!! \n")
	}
	}				//fim	
}	
		

		
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2201; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */