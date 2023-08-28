programa		//Lucas Adriano Pereira 16/03/2023
{
	/*//////////////////////////////////////////////////////////////////////////////////
	Construa uma solução que faça a reserva de aluguel de um veículo, a partir da 
	necessidade do usuário. Para isso, você deve perguntar se ele precisa de um carro: 
	conversível, sedã, hatch, picape ou minivan. Após selecionar isso, você deve 
	perguntar qual o ano do veículo. Aqui o usuário poderá escolher entre carros dos 
	anos 2015, 2018, ou 2023. A partir daí, apresentar uma opção válida para o tipo e o 
	ano escolhido pelo cliente.
	
	Obs.: não serão dados os modelos de carro para cada tipo e ano que são parte 
	do questionário. A ideia aqui é que você mesmo pesquise um carro para cada 
	tipo e ano informados no enunciado  
	*//////////////////////////////////////////////////////////////////////////////////

	//declarando variaveis
	
	inteiro tipoCarro, ano, carro
	funcao inicio()
	{				//entrada de dados
		escreva("Olá Você quer alugar um carro. \n")
		escreva("Primeiro escolha o tipo de carro: \n ")
		escreva("------------------\n")
		escreva(" (1) Conversivel \n (2) Sedã \n (3) Hatch \n (4) Picape \n (5) Minivan \n")
		escreva("------------------\n")
		leia(tipoCarro)
	
			escolha(tipoCarro){

				caso 1:		//entrada de dados
					escreva("Você escolheu o tipo Conversivel. ")
					escreva("Agora informe o ano do carro: \n")
					escreva("------------------\n")
					escreva(" (2015) \n (2018) \n (2023) \n")
					escreva("------------------\n")
					leia(ano)
				
					escolha(ano){
						caso 2015:		//saidas de dados
							escreva("Você escolheu um Conversivel ano 2015, temos o carro ideal para você: Camaro 6.2 2ss")
						pare

						caso 2018:
							escreva("Você escolheu um Conversivel ano 2018, temos o carro ideal para você: Mercedes-benz Slc")
						pare
				
						caso 2023:
							escreva("Você escolheu um Conversivel ano 2018, temos o carro ideal para você: F-Type Conversível")
						pare
				
						caso contrario: escreva("Erro!!!")
				pare}
				pare
				caso 2:
					escreva("Você escolheu o tipo Sedã. ")
					escreva("Agora informe o ano do carro: \n")
					escreva("------------------\n")
					escreva(" (2015) \n (2018) \n (2023) \n")
					escreva("------------------\n")
					leia(ano)
				
					escolha(ano){
						caso 2015:
							escreva("Você escolheu um Sedã ano 2015, temos o carro ideal para você: Peugeot 207")
						pare

						caso 2018:
							escreva("Você escolheu um Sedã ano 2018, temos o carro ideal para você: Cruze 2018")
						pare
				
						caso 2023:
							escreva("Você escolheu um Sedã ano 2018, temos o carro ideal para você: BMW Série 3")
						pare

						caso contrario: escreva("Erro!!!")
				pare}
				pare
				caso 3:
					escreva("Você escolheu o tipo hatch. ")
					escreva("Agora informe o ano do carro: \n")
					escreva("------------------\n")
					escreva(" (2015) \n (2018) \n (2023) \n")
					escreva("------------------\n")
					leia(ano)
				
					escolha(ano){
						caso 2015:
							escreva("Você escolheu um Hatch ano 2015, temos o carro ideal para você: Palio 2015")
						pare

						caso 2018:
							escreva("Você escolheu um hatch ano 2018, temos o carro ideal para você: HB20 2018")
						pare
				
						caso 2023:
							escreva("Você escolheu um Hatch ano 2018, temos o carro ideal para você: Yaris XLS")
						pare

						caso contrario: escreva("Erro!!!")
				pare}
				pare
				caso 4:
					escreva("Você escolheu o tipo Picape. ")
					escreva("Agora informe o ano do carro: \n")
					escreva("------------------\n")
					escreva(" (2015) \n (2018) \n (2023) \n")
					escreva("------------------\n")
					leia(ano)
				
					escolha(ano){
						caso 2015:
							escreva("Você escolheu um Picape ano 2015, temos o carro ideal para você: Fiat Strada")
						pare

						caso 2018:
							escreva("Você escolheu um Picape ano 2018, temos o carro ideal para você: Renault Alaskan")
						pare
				
						caso 2023:
							escreva("Você escolheu um Picape ano 2018, temos o carro ideal para você: Chevrolet Silverado")
						pare
				
						caso contrario: escreva("Erro!!!")
				pare}
				pare
				caso 5:
					escreva("Você escolheu o tipo Minivan. ")
					escreva("Agora informe o ano do carro: \n")
					escreva("------------------\n")
					escreva(" (2015) \n (2018) \n (2023) \n")
					escreva("------------------\n")
					leia(ano)
				
					escolha(ano){
						caso 2015:
							escreva("Você escolheu um Minivan ano 2015, temos o carro ideal para você: Chevrolet Zafira")
						pare

						caso 2018:
							escreva("Você escolheu um Minivan ano 2018, temos o carro ideal para você: Kia G.Carnival 2018")
						pare
				
						caso 2023:			//saidas de dados
							escreva("Você escolheu um Minivan ano 2018, temos o carro ideal para você: Honda Odyssey")
				
						caso contrario: escreva("Erro!!!")
				
				pare}		
				
				caso contrario: escreva("Erro!!!")		//fim
	}		
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4931; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */