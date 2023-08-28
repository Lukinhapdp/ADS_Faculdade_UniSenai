/*////////////////////////////////////////////////////////////////////////////////
Desenvolva um programa que solicite o valor da fatura de cartão de crédito do
usuário, os juros aplicados mensalmente pelo banco e o valor que o usuário pode
pagar mensalmente. Verifique em seguida se o valor pago pelo usuário irá
realmente diminuir o valor da próxima fatura (usar os 2 passos abaixo pode ajudar
você a pensar sobre como fazer essa verificação), e se isso não acontecer, peça
que ele informe um valor maior pois esse não fará a fatura diminuir, e teste
novamente esse valor. Depois de garantir que não vai acontecer um loop infinito,
faça uma estrutura de repetição que calcule o pagamento da fatura a cada mês,
fazendo os seguintes passos:
a) Acrescente os juros ao saldo da fatura restante, gerando o valor de
fatura do mês atual;
b) Subtraia o valor que o usuário informou que pagaria desse novo valor,
gerando o valor de fatura restante para o próximo mês.							//Lucas Adriano Pereira 10/04/2023
A repetição deve acontecer até que a fatura restante seja zero ou negativa, e
você deve considerar que o usuário não fará mais gastos nesse cartão.
Por fim, exiba quantos meses foram necessários para zerar a fatura, bem como
o valor da última fatura.
Exemplo:
● Valor da fatura: 3000,00
● Valor mensal a ser pago: 500,00
● Valor dos juros: 5%
Resultado:
O valor mensal a ser pago será suficiente para diminuir o valor da fatura.
Fatura mês 1: 3000.00
Fatura mês 2: 2625.00
Fatura mês 3: 2231.25
Fatura mês 4: 1817.81
Fatura mês 5: 1383.70
Fatura mês 6: 927.89
Fatura mês 7: 449.28
O valor será pago em 7 meses 
*///////////////////////////////////////////////////////////////////////////////
programa
{
	real fatura, juros, valorViavel,restante	//declarando variaveis
	inteiro cont=0
	logico quitado = falso	//inicio da variavel logica, armazenado a informção inicial
	
	funcao inicio()
	{
		escreva("Olá fizemos um programa que solicite o valor da fatura de cartão de crédito do usuário, os juros aplicados mensalmente pelo banco e o valor que o usuário pode pagar mensalmente.\n")

		escreva("Qual o valor da fatura?: ")
		leia(fatura)						//entrada de dados

		escreva("Qual o valor dos juros?: ")
		leia(juros)

		escreva("Qual o valor que você pode pagar?: ")
		leia(valorViavel)

		juros = juros/100				//operações
		restante = fatura - valorViavel
		
		faca{								//inicio da estrutura de repetição (faça)
			restante = restante + (restante * juros)

			enquanto(restante >= fatura){			//inicio da estrutura de repetição (enquanto)
				escreva("Erro!!! \nO valor que você pode pagar não irá diminuir o valor da fatura!! \nInsira um valor maior que você pode pagar: ")
				leia(valorViavel)
			
				restante = fatura - valorViavel
				restante = restante + (restante * juros)
			}	
			
			cont++
			escreva("Fatura do " + (cont) + "º mês: " + restante + "\n")

			
			//fim do (enquanto)


			 /*se(cont == 1){								//inicio de condicional
				escreva("Fatura do 1º mês: " + fatura + "\n")
			}senao*/	
			restante = restante - valorViavel
	
			se(restante <= 0){
				quitado = verdadeiro}	//usando a variavel (logica) para a validação
			
		}enquanto(quitado == falso)	//fim da estrutura de repetição (faça)

		escreva("O valor será pago em " + (cont)+ " meses.")	//saidas de dados e fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */