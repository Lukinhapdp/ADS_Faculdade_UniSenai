/*///////////////////////////////////////////////////////////////////////////////
 (ENADE 2011) Para entender um pouco mais sobre vetores, realize o teste de mesa
no algoritmo a seguir e demonstre, os resultados da execução, para os vetores VetA	//Lucas Adriano Pereira 20/04/2023
e VetB, nas linhas 12 e 19, respectivamente.
*////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetA[10], vetB[10]	
	funcao inicio()
	{
		para (inteiro i = 1; i < 10; i++) {
			vetB[i] = 0
			se (i % 2==0){
				vetA[i] = i	
			} senao {
				vetA[i] = 2 * i   
				escreva("Vetor B: " + vetB[i])
			}
		}
		
		para(inteiro i = 1; i < 10; i++) {
			enquanto(vetA[i] > i) {
				vetB[i] = vetA[i]	
				vetA[i] = vetA[i] - 1
			}
			escreva("\n\nVetor B: " +vetB[i])	
			escreva("\nVetor A: " +vetA[i])	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */