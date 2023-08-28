programa
{
	real base, altura, pi, raio, lado1, lado2, lado_maior, lado_menor, area
	cadeia objeto
 
	
	funcao inicio()
	{
		escreva("Olá, você irá calcular a area de que objeto? \n digite 1 para triângulo \n digite 2 para retângulo \n digite 3 para circulo \n digite 4 para quadrado \n digite 5 para trapézio ")
		leia(objeto)
	
	
	
	se (objeto == "1")
		{
		escreva("Informe a base do triângulo: ")
		leia(base)
		
		escreva("Informe a altura do triângulo: ")
		leia(altura)
		
		area = base * altura/2
	
		escreva("A área do triângulo é: " + area+ " e a formula usada foi: area = base * altura/2 ")
	} senao {
		se (objeto == "2")
		{
			escreva("Informe a base do retângulo: ")
			leia(base)
			
			escreva("Informe a altura do retângulo: ")
			leia(altura)
		
			area = base * altura
		
			escreva("A área do retângulo é: " + area+ " e a formula usada foi: area = base * altura")
		} senao {
			se (objeto == "3")
			{
				escreva("Informe somente o raio do circulo: ")
				leia(raio)
		
				pi = 3.14
				
				area = 2 * pi * raio * raio
	
				escreva("A área do circulo é: " + area+ " e a formula usada foi: area = 2 * pi * raio * raio")
			} senao {
				se (objeto == "4")
				{
					escreva("Informe o lado de baixo do quadrado: ")
					leia(lado1)
		
					escreva("Informe o lado do lado do quadrado: ")
					leia(lado2)
		
					area = lado1 * lado2
	
					escreva("A área do quadrado é: " + area+ " e a formula usada foi: area = lado1 * lado2")
				} senao {
					se (objeto == "5")
					{
							escreva("Informe o lado maior do trapézio: ")
							leia(lado_maior)
		
							escreva("Informe o lado menor do trapézio: ")
							leia(lado_menor)

							escreva("Informe a altura do trapézio: ")
							leia(altura)
							
							area = (lado_maior + lado_menor) * altura/2
	
							escreva("A área do trapézio é: " + area+ " e a formula usada foi: area = (lado_maior + lado_menor) * altura/2")
					}
			
				}
			}
	}

	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1727; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */