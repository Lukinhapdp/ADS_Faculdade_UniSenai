/*//////////////////////////////////////////////////////////////////////////////////////
Faça um programa que peça a idade de 20 pessoas e mostre na tela quantas são maiores de
idade.																   //Lucas Adriano Pereira 29/03/2023
*///////////////////////////////////////////////////////////////////////////////////////
programa
{			//declarando variaveis
	inteiro idade

	inteiro qntdMaior = 0
	inteiro qntdMenor = 0
	
	inteiro soma = 0
			
	funcao inicio()
	{					
		escreva("Olá, Criamos um programa que peça a idade de 20 pessoas e mostre na tela quantas são maiores de idade.\n")
		
		para(inteiro i=0; i<20; i++)
		{											
			escreva("Pessoa número "+ (i+1) + " nos fale sua idade: ") //entrada de dados
			leia(idade)
		
			se (idade >=18){
				qntdMaior = qntdMaior + 1 
				
			} senao {
				qntdMenor = qntdMenor + 1 
			}	
		}
			limpa() 		//função para limpar o console
			
				escreva("Quantidade de pessoas maiores de idade: "+ qntdMaior+"\n") 		//saidas de dados
				escreva("Quantidade de pessoas menores de idade: "+ qntdMenor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1055; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */