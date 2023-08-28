programa	//Lucas Ariano Pereira 15/03/2023
{
	/*////////////////////////////////////////////////////////////////////////////////
	 Desenvolva um algoritmo que solicite ao usuário um mês pelo seu número e informe
	quantos dias ele tem (caso o mês seja Fevereiro, informe “Este mês tem 28 dias em
	anos comuns e 29 em anos bissextos.”).
	*/////////////////////////////////////////////////////////////////////////////////
	
	inteiro mes,ano //declarando variaveis
	
	funcao inicio()
	{	
		//entradas de dados
		escreva("Olá \n Nos informe o numero do mês que deseja, assim mostraremos o tanto de dias que o mês irá compor.\n")
		escreva("Digite um número correspondente a um mês: ")
		leia(mes)
limpa()
		escolha(mes){
	
			caso 1:
			caso 3:
			caso 5:
			caso	7:
			caso	9:
			caso 11:
				escreva(" Este mês tem 31 dias")
			pare
		
			caso 2:
				escreva("Nos informe se o ano é: \n (1) Comum \n (2) Bissexto \n")
				leia(ano)
				
				escolha(mes){
					
					caso 1:
						escreva(" Este mês tem 28 dias")
					pare
					
					caso 2:
						escreva(" Este mês tem 29 dias")					
					pare
					caso contrario:
						escreva("Erro!!!")
					
			pare}
			pare
			caso 4:	
			caso 6:
			caso 8:
			caso 10:
			caso 12:
				escreva(" Este mês tem 30 dias")
			pare
				
			caso contrario:
				escreva("Mês inválido.")
			
	}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */