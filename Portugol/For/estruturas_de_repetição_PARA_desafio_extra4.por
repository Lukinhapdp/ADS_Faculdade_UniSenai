/*///////////////////////////////////////////////////////////////////////////////////////
Elabore uma solução que a partir de 10 números informados, mostre na tela quantos desses
números são maiores do que 05.												 //Lucas Adriano Pereira 29/03/2023
*////////////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero1, numero2	

	inteiro qntdMaior = 0 
	inteiro qntdMenor = 0
	inteiro somaMaior = 0
	inteiro somaMenor = 0
	funcao inicio()
	{
		escreva("Olá fizemos uma solução que a partir de 10 números informados, mostre na tela quantos desses números são maiores do que 05.\n")
		escreva("Digite um número que começe o intervalo: ")
		leia(numero1)

		escreva("Digite um número que termine o intervalo: ")
		leia(numero2)
				
		para(inteiro i=numero1; i<numero2; i++){

		escreva(i+"\n")
		se(i > 5){
			qntdMaior = qntdMaior + 1
			somaMaior = somaMaior + i
			}
		senao se (i < 5){
			qntdMenor = qntdMenor + 1
			somaMenor = somaMenor + i
			}
			
		}escreva("quantidade maior: "+qntdMaior+"\n")
		escreva("quantidade menor: "+qntdMenor)	
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */