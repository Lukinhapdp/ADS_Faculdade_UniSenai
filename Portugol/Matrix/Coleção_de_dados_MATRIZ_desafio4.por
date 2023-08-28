/*///////////////////////////////////////////////////////////////////////////////////
A empresa “Multiplica para ganhar Ltda.” solicitou uma solução que leia uma
matriz 5 x 5 de números inteiros e gere outra matriz, de mesmo tamanho em que		//Lucas Adriano Pereira 02/05/2023
cada elemento seja o dobro de seu respectivo da matriz original. Mostrar a matriz
original e a nova.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro matriz[5][5], resultado[5][5], resultado1=0, somaTotal=0
	funcao inicio()
	{
		escreva("\n---------------Matriz Entrada---------------\n")
		para(inteiro i=0; i<5; i++){
			para(inteiro j=0; j<5; j++){
				escreva("Digite um número para a "+(j+1)+"ª Linha e "+(i+1)+"ª Coluna: ")
				leia(matriz[i][j])
				resultado[i][j] = (matriz[i][j] * 2)
			}
		}
		escreva("\n---------------Matriz Resultado---------------\n")
		para(inteiro i=0; i<5; i++){
			para(inteiro j=0; j<5; j++){
				escreva("\nNúmero da "+(j+1)+"ª Linha e "+(i+1)+"ª Coluna: "+resultado[i][j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 967; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 10, 6}-{resultado, 9, 24, 9}-{resultado1, 9, 41, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */