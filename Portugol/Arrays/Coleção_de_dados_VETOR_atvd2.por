/*///////////////////////////////////////////////////////////////////////////////
Agora sim, faremos a Atividade 01 com o uso de uma estrutura de repetição. Repare 
nas diferenças das versões. Como estrutura de repetição, faremos o uso do PARA.		//Lucas Adriano Pereira 13/04/2023
*////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[5]
	
	funcao inicio()
	{
		para(inteiro i=0; i<5; i++){
			
			escreva("Digite o "+(i+1)+ "º Valor: ")
			leia(vetor[i])
		
		}
		para(inteiro i=0; i<5; i++){	
			escreva("\n"+(i+1)+ "º Valor: "+vetor[i])
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