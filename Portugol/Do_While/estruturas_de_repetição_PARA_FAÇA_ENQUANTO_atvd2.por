/*///////////////////////////////////////////////////////////////////////////
Construiremos uma calculadora que nos permita fazer o cálculo das quatro
operações básicas:
● Soma representado pelo sinal + (Ex.: 1 + 1 = 2
● Subtração representado pelo sinal – (Ex.: 3 - 2 = 1)
● Multiplicação representado pelo sinal * (Ex.: 5 * 5 = 25)
● Divisão representado pelo sinal / (Ex.: 15 / 3 = 5)
Para isso, seguiremos os seguintes passos:						//Lucas Adriano Pereira 30/03/2023
● Solicitação do primeiro valor;
● Solicitação da operação matemática (+, -, * ou /);
● Solicitação do segundo valor;
● Realização do cálculo;
● Perguntar se o usuário deseja prosseguir calculando:
o Se sim, o processo será iniciado já no passo 2, tendo o resultado no
passo 4 como primeiro valor;
o Se não, será mostrado o resultado final:
▪ Por exemplo, 4 + 3 = 7 * 4 = 28 / 14 = 2. 
*////////////////////////////////////////////////////////////////////////////
 programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		real nm1, nm2, resultado
		cadeia continuar = ""
		logico operValido
		caracter oper
		
		limpa()
		resultado = 0.0
		escreva("\nPrimeiro Valor: ")
		leia(nm1)
	faca{
		escreva("\nOperação ( + , - , * , / ): ")
		leia(oper)

		escreva("\nSegundo Valor: ")
		leia(nm2)	

		escolha(oper) {
			caso '*':
				resultado = nm1 * nm2
			pare

			caso '+':
				resultado = nm1 + nm2
			pare

			caso '-':
				resultado = nm1-nm2
			pare

			caso '/':
				se(nm2==0){
					escreva("\nNão é possivel efetuar uma divisão por 0!!.")
					resultado = nm1/nm2
				}senao{
					resultado = nm1/nm2
				}
				pare
			
			caso contrario: escreva("\nOperação inválida!!!")	
					
					}
			nm1 = resultado
			escreva("\nDeseja continuar? (S/N) ")
			leia(continuar)
			continuar = t.caixa_alta(continuar)
		}enquanto (continuar=="S")
			escreva("\n" + nm1 + " " + oper + " " + nm2 + " = " + resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1885; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */