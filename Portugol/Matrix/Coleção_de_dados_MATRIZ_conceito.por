programa
{
	inteiro matriz[2][3]
	
	funcao inicio()
	{
		//1º linha
		matriz[0][0] = 10
		matriz[0][1] = 20
		matriz[0][2] = 30

		//2º linha
		matriz[1][0] = 40
		matriz[1][1] = 50
		matriz[1][2] = 60
	
		escreva("Vamos imprimir a matriz\n")

		para(inteiro i=0; i<2; i++){
			para(inteiro j=0; j<3; j++){
			escreva("Posição[", (i ), "][" +(j )+ "] = " + matriz[i][j]+ " ")
			
			}
		escreva("\n")
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */