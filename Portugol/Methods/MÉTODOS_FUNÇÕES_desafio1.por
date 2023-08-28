/*//////////////////////////////////////////////////////////////////////////////////////
Faça um programa que leia o nome e a idade de uma pessoa e, em seguida, crie um método
que receba essas informações e imprima essas informações ao usuário.				    //Lucas Adriano Pereira 06/06/2023
*///////////////////////////////////////////////////////////////////////////////////////
programa
{
	funcao inicio()
	{
		escreva("Este programa lê o nome e a idade de uma pessoa e mostra essas informações ao usuário. \n")
		cadeia nome
		inteiro idade
		
		nome = solicitaNome()
		idade = solicitaIidade()
		mensagemFinal(nome, idade)
		
	}
	funcao cadeia solicitaNome(){

		cadeia nome
		escreva("Digite o seu nome: ")
		leia(nome)
		retorne nome
	}
	funcao inteiro solicitaIidade(){
		
		inteiro idade 
		escreva("Digite a sua idade: ")
		leia(idade)
		retorne idade
	}
	
	funcao mensagemFinal(cadeia nome, inteiro idade)
	{
		escreva("\nO seu nome é: " +nome+ " e você tem: " +idade+ " anos de idade!!\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 507; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */