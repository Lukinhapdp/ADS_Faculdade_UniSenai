/*//////////////////////////////////////////////////////////////////////////////////
Aqui será feita uma solução para alimentar um vetor com 10 valores inteiros. Também 
será solicitado ao usuário uma entrada de dados de um valor inteiro qualquer. A 	//Lucas Adriano Pereira 13/04/2023
solução buscará no vetor o valor informado pelo usuário e terá como saída a posição 
em que este foi encontrado, se é que foi 
*///////////////////////////////////////////////////////////////////////////////////
 programa
{
	inteiro vetor[10], posicao=0, valor
	logico encontrou = falso
	
	funcao inicio()
	{
		para(inteiro i=0; i<10; i++){
			escreva((i+1)+"º Número: ")
			leia(vetor[i])
			escreva("\n")
		}
		limpa()

		escreva("Digite um valor para encontrar no vetor: ")
		leia(valor)

		limpa()
				
		para(inteiro i=0; i<10; i++){
			se(valor == vetor[i]){
				posicao = i
				encontrou = verdadeiro
			}
		}
		se(nao encontrou){
			escreva("O valor "+valor+" não foi encontrado no vetor: ")
		}senao{
			escreva("O valor "+valor+" foi encontrado na posição: "+posicao)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1068; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */