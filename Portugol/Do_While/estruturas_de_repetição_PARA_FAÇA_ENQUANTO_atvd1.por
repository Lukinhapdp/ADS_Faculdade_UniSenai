/*///////////////////////////////////////////////////////////////////////////////////
Faremos a construção de um programa que fará a validação de um número. Sempre
que o usuário digitar um número par ele seguirá sendo executado. A partir do
momento em que um número ímpar for informado, o programa será encerrado.
Importante informar que o código será criado de modo a ser encerrado apenas		//Lucas Adriano Pereira 30/03/2023
quando um número par for digitado, ou seja, ele pode rodar infinitamente ou até que
o usuário se canse, enquanto a regra definida não for cumprida. Ao final de nosso
programa, informaremos quantos números foram digitados até que ele fosse
encerrado.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	funcao inicio()
	{

	inteiro qntdNumeros = 0, nmrDigitado
	logico numrPar = verdadeiro
		
		faca{
		escreva("Digite um número: ")
		leia(nmrDigitado)
		qntdNumeros++
		
		}enquanto(nmrDigitado%2==0)
		 escreva("Você digitou um número Impar, você não tem direito de digitar mais números.")
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */