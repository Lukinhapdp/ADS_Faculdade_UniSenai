/*////////////////////////////////////////////////////////////////////////////
A instituição de ensino “TODOSAPROVADOS” necessita de uma solução que
calcule e mostre a soma dos números pares entre 100 e 200 (inclusive). Para a	//Lucas Adriano Pereira 27/03/2023
realização desse exercício, pesquise sobre variáveis acumuladoras.
*/////////////////////////////////////////////////////////////////////////////
programa
{		
	inteiro soma = 0	//declarando variaveis
	funcao inicio()
	{
		para(inteiro i=100; i<200; i++){
			se(i % 2 == 0){
				
				soma = soma + i
				escreva("Os números pares são: "+ i +"\n")	//saidas de dados
			}
		}escreva("A soma dos números pares são: "+ soma +"\n")
	}													//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */