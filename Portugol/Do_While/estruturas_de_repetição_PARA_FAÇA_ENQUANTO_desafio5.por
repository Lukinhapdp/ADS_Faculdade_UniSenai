/*//////////////////////////////////////////////////////////////////////////////
A academia de ginástica “SÓENGORDA LTDA.” necessita de uma solução que
calcule e informe o IMC (Indice de Massa Corpórea) de uma pessoa, considerando:		//Lucas Adriano Pereira 10/04/2023
IMC = Peso / (Altura) ^2. Permita que este programa seja executado quantas vezes
o usuário desejar. 
*///////////////////////////////////////////////////////////////////////////////
programa
{
	real altura, peso, imc=0.0	//declarando variaveis
	cadeia continuar =""
	funcao inicio()
	{
		escreva("Olá. A academia de ginástica “SÓENGORDA LTDA.” necessita de uma solução que calcule e informe o IMC\n")
	faca{									//inicio da estrutura de repetição (faça)
		
		escreva("Nos informe o seu peso em Kg: \n")
		leia(peso)							//entrada de dados

		escreva("Nos informe a sua altura em metros: \n")	
		leia(altura)							//entrada de dados
		
		imc = peso / (altura*altura) 		//operações

		escreva("O seu imc é: "+ imc+"\n\n")
		escreva("Você deseja medir novamente?: (s/n) \n")
		leia(continuar)

		}enquanto(continuar == "s")		//fim da estrutura de repetição (faça)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */