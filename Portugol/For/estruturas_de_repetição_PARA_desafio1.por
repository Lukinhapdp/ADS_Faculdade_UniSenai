/*//////////////////////////////////////////////////////////////////////////////
Seu priminho mais novo está estudando Matemática, mas não entendeu o que
são números pares. Para ajudá-lo, você decidiu construir um programa que
mostrasse os números pares em um intervalo. Por exemplo: no intervalo entre 1
e 8 temos os seguintes números pares: 2 (dois), 4 (quatro), 6 (seis) e 8 (oito).	//Lucas Adriano Pereira 22/03/2023
Para incrementar você ainda quer somar esses números: 2 + 4 + 6 + 8 = 20.
Construa esse algoritmo capaz de mostrar os números pares de um intervalo e
ainda mostrar a soma desses números. 
*////////////////////////////////////////////////////////////////////////////////
programa
{					//declarando variaveis
	inteiro numero1, numero2
	inteiro soma = 0
	
	funcao inicio()
	{					//entrada de dados
		escreva("Olá nesse programa mostraremos a você os números pares e a soma entre eles!! \n")
		escreva("Digite o começo de um intervalo de números: ")
		leia(numero1)

		escreva("Digite o final do intervalo: ")
		leia(numero2)

	se(numero1<numero2){
		para(inteiro i=numero1; i<=numero2; i++){
		se(i % 2 == 0){
		
			soma = soma + i			
			escreva("Os números pares são: "+ i +"\n")	//saidas de dados
			}	 
	 	}	
			escreva("A soma dos números pares são: "+ soma +"\n")		
		} senao {
			para(inteiro i=numero2; i<=numero1; i++){
			se(i % 2 == 0){
		
				soma = soma + i			
				escreva("Os números pares são: "+ i +"\n")	//saidas de dados
			}	 
		}	escreva("A soma dos números pares são: "+ soma +"\n")
		} 															//fim	
	}
}																									
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1028; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */