/*//////////////////////////////////////////////////////////////////////////////////
 * Você está auxiliando o RH da FIESCademy. Sabe-se que a jornada de trabalho da 
empresa é de 40 horas. 
Quando chega ao final do mês, cada funcionário tem suas 
horas extras. 
Quando isso acontece, ele deverá receber 50% a mais do valor normal 
da hora por cada hora extra realizada. 
Construa um algoritmo que leia o número de 
horas trabalhadas em um mês, o valor normal a ser pago por hora e escreva o 
salário total do funcionário, que deverá ser acrescido das horas extras caso tenham 
sido trabalhadas. Num primeiro momento, considere que o mês possua 4 semanas 
exatas.
 */////////////////////////////////////////////////////////////////////////////////		//Lucas Adriano Pereira 02/03/2023
 

programa
{					//declarando variaveis
	real horas, valor_hora, salario, hora_extra,valor_extra, salarioNormal, salarioExtra
	cadeia nome
	
	funcao inicio()
	{					//entradas de dados
		escreva("Qual o nome do funcionario? ")
		leia(nome)
	
		escreva("Digite quantas horas esse funcionario fez em janeiro: ")
		leia(horas)
	
		escreva("Digite quantos esse funcionario ganha por hora: ")
		leia(valor_hora)

	salarioNormal = horas * valor_hora//operações
	
	se (horas <= 160)
	{
		escreva("O salario final do funcionario é de: R$ " + salarioNormal + " reais , e o funcionario ganha R$ "+ valor_hora + "reais por hora, e esse funcionario não tem horas extras a receber ")
	
	} senao
	{			//saidas de dados
		hora_extra = horas - 160
		valor_extra = hora_extra * valor_hora + (valor_hora*0.5)
		salarioExtra = valor_extra + salarioNormal
		escreva("O salario final do funcionario com hora extra é de: R$ " + salarioExtra + " reais , o funcionario ganha R$ "+ valor_hora + "reais por hora, e esse funcionario recebeu R$ " + valor_extra +"reais de hora extra.")
	}
}															//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */