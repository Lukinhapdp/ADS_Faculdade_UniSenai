/*//////////////////////////////////////////////////////////////////////////////////
A empresa “SÓ CALCULO SEM PRECONCEITO” necessita agora de uma solução
que alimente um vetor com 5 valores inteiros e também que solicite ao usuário a
entrada de dados de um valor inteiro, após as devidas entradas de dados o			   //Lucas Adriano Pereira 24/04/2023
programa deve multiplicar o valor informado pelo usuário por cada elemento do vetor
sendo que o resultado deste cálculo deve ser armazenado em outro vetor, em suas
respectivas posições. Como resultado deseja-se a impressão dos valores dos
resultados dos cálculos, armazenados no segundo vetor.
*///////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro vetor[5],valor,resultado[5]
	
	funcao inicio()
	{
		escreva("Digite um número para multiplicar por cada um dos vetores: ")
		leia(valor)

		escreva("Muito bem agora digite os vetores: \n")
		
		para(inteiro i=0; i<5; i++){
			escreva("Digite o "+(i+1)+ "º Vetor: ")
			leia(vetor[i])
			resultado[i]=valor*vetor[i]		
		}
		
		para(inteiro i=0; i<5; i++){
		escreva("\nO resultado do "+(i+1)+"º Vetor é: "+resultado[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */