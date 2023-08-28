/*//////////////////////////////////////////////////////////////////////////////////////
Faça um programa que peça ao usuário um número e um incremento. Após, mostre na tela do
0 até este número, respeitando o incremento informado.
															//Lucas Adriano Pereira 29/03/2023
Ex.: Número = 20													
Incremento = 5
Saída do programa = 0, 5 ,10, 15 ,20.
*///////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero, incremento
	funcao inicio()
	{
		
		escreva("Olá. Fizemos um programa que peça ao usuário um número e um incremento. Após, mostre na tela do 0 até este número, respeitando o incremento informado.\n")
		escreva("Digite o primeiro número: ")
		leia(numero)

		escreva("Digite um incremento: ")
		leia(incremento)
		para(inteiro i=0; i<numero+1; i+=incremento)
		escreva(i+"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 860; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */