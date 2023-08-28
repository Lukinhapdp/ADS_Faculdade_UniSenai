/*////////////////////////////////////////////////////////////////////////////////
Faça um programa que peça ao usuário uma quantidade (valor inteiro), e que exiba
por essa quantidade de vezes o resultado da soma de dois valores diferentes,
dentro da seguinte lógica:
a) o primeiro valor deve iniciar de 0, e o segundo deve iniciar de 1.
b) a cada repetição, os dois valores devem ser somados, o primeiro valor			//Lucas Adriano Pereira 27/03/2023
deve receber o segundo valor, e o segundo valor deve receber o
resultado.
Veja abaixo um exemplo de como o programa deve funcionar (Nesse caso o valor
inserido foi 6 pelo usuário):
*/////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro numero, resultado
	
	inteiro numero1 = 0
	inteiro numero2 = 1
	funcao inicio()
	{
		escreva("Olá nesse programa vamos pedir um número que será o tanto de vezes que se repitirá.\n")
		escreva("Insirá o número: ")
		leia(numero)

		para(inteiro i=0; i<numero; i++){
			resultado = numero1 + numero2
			escreva(numero1+" + "+numero2+" = "+ resultado+"\n")
			numero1 = numero2
			numero2 = resultado
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */