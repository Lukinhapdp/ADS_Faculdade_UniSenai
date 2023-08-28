/*/////////////////////////////////////////////////////////////////////////////////////////////////
Aqui, você fará uma solução capaz de identificar o tipo e a área de triângulo que corresponde a
valores indicados por um usuário. Por isso, construa uma solução que receba 3 (três) valores
positivos e maiores do que 0 (zero) e, a partir deles, verificará qual o tipo de triângulo seria
formado pelos números indicados. Para definir e indicar o tipo de triângulo que pode ser
formado pelos números indicados, lembre-se que:								    //Lucas Adriano Pereira 12/06/2023
- Triângulo equilátero: possui os 3 (três) lados do triângulo iguais;
- Triângulo isósceles: possui os 2 (dois) lados do triângulo iguais;
- Triângulo escaleno: todos os lados do triângulo são diferentes
 *//////////////////////////////////////////////////////////////////////////////////////////////////
 programa
{
	
	funcao inicio()
	{

		escreva("Óla nesse programa pediremos 3 números para cada lado de um triângulo e depois mostraremos se ele é um triângulo: equilátero, escaleno ou isósceles!! \n")
		
		inteiro num1 = metodo1(1)
		inteiro num2 = metodo1(2)
		inteiro num3 = metodo1(3)
		
		metodoFinal(num1, num2, num3)
	}

	funcao inteiro metodo1(inteiro i){
		inteiro numero
		
		escreva("\nDigite o " +(i)+ "º número: ")
			leia(numero)
	
		retorne numero
	}

	funcao metodoFinal(inteiro num1, inteiro num2, inteiro num3){
			
		se(num1 == num2 e num1 == num3){
			escreva("\nO triângulo é equilátero: possui os 3 lados iguais\n")
		}
		senao se(num1 == num2 ou num1== num3 ou num2 == num3 ){
			escreva("\nO triângulo é isósceles: possui 2 lados iguais\n")
		}senao{
			escreva("\nO triângulo é escaleno: possui os 3 lados diferentes\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1561; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */