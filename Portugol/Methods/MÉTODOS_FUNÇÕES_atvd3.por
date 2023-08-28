/*/////////////////////////////////////////////////////////////////////////////////////////////
Agora complementaremos a atividade acima, deixando-a mais complexa. 
Perguntaremos se o professor que uma média aritmética ou ponderada.
A nota aritmética é aquela clássica: se tenho 3 (três) notas, divido a soma das minhas 
notas por 3 (três). Por exemplo:
																	    //Lucas Adriano Pereira 06/06/2023
MÉDIA ARITMÉTICA

Nota 1 = 7.1 Nota 2 = 8.3 Nota 3 = 6.6
Soma das notas = 22 Quantidade de notas = 3
Média = Soma das notas / Quantidade de notas
Média = 22 / 3 = 7.333333333333333
Média arredondada = 7.33

A nota ponderada exige que se saiba o peso de cada nota, ou seja, a importância de 
cada avaliação. Por exemplo:

MÉDIA PONDERADA

Nota 1 = 7.1 Nota 2 = 8.3 Nota 3 = 6.6
Peso da nota 1 = 1 Peso da nota 2 = 2 Peso da nota 3 = 3
Cálculo da nota 1 = 7.1 * 1 = 7.1
Cálculo da nota 2 = 8.3 * 2 = 16.6
Cálculo da nota 3 = 6.6 * 3 = 19.8
Soma dos cálculos das notas = 43,5
Soma dos pesos = 6
Média = Soma dos cálculos das notas / Soma dos pesos
Média = 43.5 / 6 = 7.25
Média arredondada = 7.25

Agora sim! Depois de toda essa explicação, partiremos para a solução do nosso 
problema!
*////////////////////////////////////////////////////////////////////////////////////////////
 programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real notas[3]
		real mediaNotas = 0.0
		inteiro tipoMedia
		real peso[3]
		
		escreva("Esse programa tem a finalidade de calcular a média das notas do aluno.\n")
		
		para(inteiro i=0; i<3; i++){
			notas[i] = insereNota(i)
		}
		
		escreva("\nQual o tipo de média que você gostaria de calcular? Digite (1) para o cálculo aritriétrico; ou (2) para o cálculo ponderado")
		leia(tipoMedia)

		escolha(tipoMedia){

			caso 1:
				escreva("\nVocê selecionou o cálculo da média aritrimétrica. ")
				mediaNotas = mediaAritrimetrica(notas)
			pare

			caso 2: 
				escreva("\nVocê selecionou o cálculo da média ponderada. ")
				
				para(inteiro i=0; i<3; i++){
					escreva("Informe o peso da " +(i+1)+ "ª nota: ")
					leia(peso[i])
				}
				mediaNotas = mediaPonderada(notas, peso)
			pare

			caso contrario: 
				escreva("Selecione uma opção válida. ")
			pare
		}
		mediaNotas = Matematica.arredondar(mediaNotas, 2)

	avaliacaoMedia(mediaNotas)	
	}
	
	funcao real insereNota(inteiro ordem){
		
		real notaAvaliacao
		
		escreva("Informe a " +(ordem+1)+ "ª nota: ")
		leia(notaAvaliacao)
		
		retorne notaAvaliacao
	}
	funcao real mediaAritrimetrica(real notas[]){

		real somaNotas, mediaNotas

		somaNotas = 0.0

		para(inteiro i=0; i<3; i++){
			somaNotas += notas[i]
		}
		mediaNotas = (somaNotas / 3)

		retorne mediaNotas
	}

	funcao real mediaPonderada(real notas[], real peso[]){

		real mediaNotas
	mediaNotas = (notas[0] * peso[0] + notas[1] * peso[1] + notas[2] * peso[2]) / (peso[0] + peso[1] + peso[2])
	
	retorne mediaNotas
	}

	funcao avaliacaoMedia(real mediaFinal){

		se(mediaFinal >= 7){
			escreva("\nEsse aluno foi aprovado com média " +mediaFinal+ "!")
		} senao {
			escreva("\nInfelizmente esse aluno foi reprovado com média " +mediaFinal+ "!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */