programa		//Lucas Adriano Pereira 16/03/2023
{
/*/////////////////////////////////////////////////////////////////////////////////
 Um fã de esportes nos solicitou um programa que informe como são organizadas as
divisões da NFL, liga de futebol americano dos EUA. Para isso, ele pede que o
usuário informe a conferência que se deseja ver (AFC ou NFC), e depois informe
qual divisão dessa conferência ele deseja ver (as 4 divisões, de nomes iguais em
ambas conferências, são East, North, South e West). Com essas duas informações,
o programa deve exibir os 4 times pertencentes a essa divisão. A imagem a seguir
mostra as 8 divisões (à esquerda as 4 da AFC e à direita as 4 da NFC) e quais são
os 4 times que pertencem a cada uma delas. Você pode informar apenas os nomes
em negrito, já é suficiente de acordo com nosso solicitante
 */////////////////////////////////////////////////////////////////////////////////
	
	//declarando variaveis
	inteiro conferencia, divisao
	funcao inicio()
	{	
		escreva("Olá somos da NFL !!! \n")		//entrada de dados
		escreva("Nos informe qual conferencia você deseja: \n (1)AFC \n (2)NFC \n")
		leia(conferencia)
	
			escolha(conferencia){

				caso 1:	//entrada de dados
					escreva("Você escolheu a AFC, agora escolha a divisão: \n (1) East \n (2) North \n (3) South \n (4) West \n")
					leia(divisao)
					
					escolha(divisao){
						caso 1:			//saidas de dados
							escreva("Você escolheu a divisão East, esses são os times que compoem essa divisão: \n")
							escreva(" (Bills) \n (Dolphins) \n (Patriots) \n (Jets) \n")
						pare
				
						caso 2:
							escreva("Você escolheu a divisão North, esses são os times que compoem essa divisão: \n")
							escreva(" (Ravens) \n (Bengals) \n (Browns) \n (Steelers) \n")
						pare
				
						caso 3:
							escreva("Você escolheu a divisão South, esses são os times que compoem essa divisão: \n")
							escreva(" (Texans) \n (Colts) \n (Jaguars) \n (Titans) \n")
						pare
				
						caso 4:
							escreva("Você escolheu a divisão West, esses são os times que compoem essa divisão: \n")
							escreva(" (Broncos) \n (Chiefs) \n (Raiders) \n (Chargers) \n")
						pare
						caso contrario: escreva("Erro!!!")
				pare}
				pare
				caso 2:
					escreva("Você escolheu a NFC, agora escolha a divisão: \n (1) East \n (2) North \n (3) South \n (4) West \n")
					leia(divisao)
					
					escolha(divisao){
						caso 1:
							escreva("Você escolheu a divisão East, esses são os times que compoem essa divisão: \n")
							escreva(" (Cowboys) \n (Giants) \n (Eagles) \n (Redskins) \n")
						pare
				
						caso 2:
							escreva("Você escolheu a divisão North, esses são os times que compoem essa divisão: \n")
							escreva(" (Bears) \n (Lions) \n (Packers) \n (Vikins) \n")
						pare
				
						caso 3:
							escreva("Você escolheu a divisão South, esses são os times que compoem essa divisão: \n")
							escreva(" (Falcons) \n (Panthers) \n (Saints) \n (Buccaneers) \n")
						pare
				
						caso 4:	//saidas de dados
							escreva("Você escolheu a divisão West, esses são os times que compoem essa divisão: \n")
							escreva(" (Cardinais) \n (49ers) \n (Seahawks) \n (Rams) \n")
						pare
						caso contrario: escreva("Erro!!!")
				pare}
				caso contrario: escreva("Erro!!!")	//fim
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */