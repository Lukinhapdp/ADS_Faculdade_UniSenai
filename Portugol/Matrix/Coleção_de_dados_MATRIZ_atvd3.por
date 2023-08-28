/*//////////////////////////////////////////////////////////////////////////////////
Nessa atividade, criaremos uma matriz retangular, com as dimensões 2x3. Nela, o
usuário informará todos os valores inteiros que desejará para compor essa matriz.	//Lucas Adriano Pereira 26/04/2023
Ao final, será feita a soma de todos os elementos da matriz e mostrado ao usuário.
*///////////////////////////////////////////////////////////////////////////////////
 programa
{
	inteiro matriz[2][3], soma=0, cont=1
	
	funcao inicio()
	{
		para(inteiro i=0; i<2; i++){
			para(inteiro j=0; j<3; j++){
				escreva(cont+"º Valor: ")
				leia(matriz[i][j])
				soma += matriz[i][j]	//ou soma = soma + matriz[i][j]
				cont++
			}
		}
		escreva("Soma: "+soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */