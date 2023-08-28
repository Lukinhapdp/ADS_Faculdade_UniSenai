programa		//desenvolvido por Lucas_Adriano_Pereira
			//data 24/02/2023
{
/*////////////////////////////////////////////////////////////////////////////
Faça um Programa que pergunte quanto você ganha por hora e o número de
horas trabalhadas no mês. Calcule e mostre o total do seu salário no referido
mês, sabendo-se que são descontados 11% para o Imposto de Renda, 8%
para o INSS e 5% para o sindicato, faça um programa que nos dê:
● o salário bruto.
● quanto pagou ao INSS.
● quanto pagou ao sindicato.
● o salário líquido.
*//////////////////////////////////////////////////////////////////////////////

	//declarando as variaveis
		
	real ganho_hora
	real horas_trabalhadas
	real salario_bruto
	real inss
	real sindicato
	real liquido
	real imposto

	funcao inicio()
	{
	//entrada
	 
	escreva("Digite o ganho por hora: ")
	leia(ganho_hora)

	escreva("Digite o número de horas trabalhadas no mês: ")
	leia(horas_trabalhadas)

	//processo

	salario_bruto = ganho_hora * horas_trabalhadas
	imposto = salario_bruto * 11/100
	inss = salario_bruto * 8/100
	sindicato = salario_bruto * 5/100
	liquido = salario_bruto - inss - sindicato 

	//saidas

	escreva("O funcionario recebe: "+ salario_bruto + " de salario bruto, " + " paga: " + inss + " de taxa do inss, " + " paga: " + sindicato + " de taxa do sindicato " + " e recebe " + liquido + " de salario liquido. ")                                                                                
	}				//fim
}						
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 845; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */