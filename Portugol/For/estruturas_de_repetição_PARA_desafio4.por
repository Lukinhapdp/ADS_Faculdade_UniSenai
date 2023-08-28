/*//////////////////////////////////////////////////////////////////////////////////
Sua empresa precisa fazer o balanço financeiro semestral, portanto faça um		   
algoritmo que peça o ganho bruto e os gastos da empresa para cada um dos 06	   
meses do primeiro semestre de um ano, e que mostre no final o ganho bruto		   
semestral, o gasto semestral e o saldo financeiro, informando também se a empresa   	//Lucas Adriano Pereira 23/03/2023
teve lucro, prejuízo ou saldo 0. Você fez esse exercício na lista de exercícios
condicionais, sem utilizar estrutura de repetição. Aqui você deve fazer utilizando e
após, fazer a comparação das duas soluções a fim de entender as vantagens do uso
da estrutura para-faça nesse contexto.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
			//declarando as variaveis
	real ganho1, ganho_bruto =0
	real gasto1, gasto_bruto= 0
	real saldo, semestre
	
	funcao inicio()
	{
		escreva("Olá nós iremos fazer o balanço do semestre desejado da sua impresa!!\nNos informe qual semestre você deseja: ")
		leia(semestre)
		//entradas
	para(inteiro i=0; i<6; i++){	
		escreva("Nos informe o ganho do " +(i+1)+ "º mês: ")
		leia(ganho1)

			}	escreva("Muito Bem!! Agora nos informe o gasto de cada mês \n")

	para(inteiro i=0; i<6; i++){	
		escreva("Nos informe o gasto do " +(i+1)+ "º mês: ")
		leia(gasto1)}
		
limpa()//Função para limpor o console

	//processo
	ganho_bruto = ganho_bruto + ganho1 
	gasto_bruto = gasto_bruto + gasto1
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
 * @POSICAO-CURSOR = 1425; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */