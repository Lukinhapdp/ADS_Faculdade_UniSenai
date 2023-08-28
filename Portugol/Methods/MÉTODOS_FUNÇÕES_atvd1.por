/*////////////////////////////////////////////////////////////////////////////////
Construiremos um programa inicial mais simples que solicitará apenas o ano de 
nascimento de 5 (cinco) pessoas e mostrará quais delas são a mais velha e a mais 	//Lucas Adriano Pereira 05/06/2023
nova.
 *////////////////////////////////////////////////////////////////////////////////
 programa
{
	
	funcao inicio()
	{
		
		inteiro nmrIdade[5]
		inteiro maisNovo, maisVelho

		maisNovo = 0
		maisVelho = 0
		
		para(inteiro i=0; i<5; i++){
			escreva("Insira a idade da " +(i+1)+ "ª pessoa: ")
			leia(nmrIdade[i])

			se(i == 0){// para o contador da primeira posição iniciar em zero
				maisVelho = nmrIdade[i]
				maisNovo = nmrIdade[i]
			}
		
			se(maisVelho < nmrIdade[i]) {
				maisVelho = nmrIdade[i]
			}
			
			se(maisNovo > nmrIdade[i]){
				maisNovo = nmrIdade[i]
			}
		}
	      //Recebe como Parametro 59, 18
		msgFinal(maisVelho, maisNovo)
	}
     // sem retorno  //59             //18
	funcao msgFinal(inteiro maisVelho, inteiro maisNovo){
		escreva("\nA pessoa mais velha tem " +maisVelho+ " anos")
		escreva("\nA pessoa mais nova tem " +maisNovo+ " anos\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */