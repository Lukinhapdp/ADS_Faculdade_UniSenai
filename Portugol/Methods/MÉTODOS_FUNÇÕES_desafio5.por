/*////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que leia um número inteiro por meio de um método e crie um outro
método que receba esse número como parâmetro para verificar e mostrar ao usuário se esse	//Lucas Adriano Pereira 07/06/2023
número é positivo, negativo ou zero
*//////////////////////////////////////////////////////////////////////////////////////////
programa
{
	
	funcao inicio()
	{
		escreva("Óla fizemos um programa que irá ler um número, verificar e mostrar ao usuário se esse número é positivo, negativo ou zero!!\n")
		
		inteiro numeroVefificar = metodoEntrada()
		metodoSaida(numeroVefificar)
	}
	
	funcao inteiro metodoEntrada(){
		inteiro numero

		escreva("\nDigite um número: ")
		leia(numero)

		retorne numero
	}

	funcao metodoSaida(inteiro numeroVerificar){
		inteiro verificador

		se(numeroVerificar >= 1){
			escreva("O número digitado é positivo!!!\n")
		}
		senao se(numeroVerificar < 0){
			escreva("O número digitado é negativo!!!\n")
		}
		senao{
			escreva("O número digitado é Zero!!!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */