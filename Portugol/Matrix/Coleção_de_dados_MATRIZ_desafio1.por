/*/////////////////////////////////////////////////////////////////////////////
O síndico do prédio “Balança mais não cai” solicitou uma solução que armazene
em uma matriz a renda de cada família moradora de um edifício, calculando a
média e o total de renda do mesmo. O prédio possui 6 andares e quatro			//Lucas Adriano Pereira 27/04/2023
apartamentos por andar.
*//////////////////////////////////////////////////////////////////////////////
programa
{
	real renda[6][4], mediaAndar[6], mediaTotal=0.0

	funcao inicio()
	{
		escreva("Olá O síndico do prédio “Balança mais não cai” solicitou uma solução que armazene em uma matriz a renda de cada família moradora de um edifício, calculando a média e o total de renda do mesmo.\n")
		
		para(inteiro i=0; i<6; i++){
			para(inteiro j=0; j<4; j++){
				escreva("Nos informe a renda da "+(j+1)+"ª Família do "+(i+1)+"º andar: ")
				leia(renda[i][j])
				
			mediaAndar[i]+=renda[i][j]
			}
		mediaTotal+=mediaAndar[i]
		}
		para(inteiro i=0; i<6; i++){
			escreva("\nVendas do "+(i+1)+ "º andar: "+mediaAndar[i])
		}
		escreva("\n\nVendas totais do semestre: "+mediaTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 921; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {renda, 9, 6, 5}-{mediaAndar, 9, 19, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */