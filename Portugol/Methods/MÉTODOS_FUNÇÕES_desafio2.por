/*//////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que solicite o ano de nascimento de um usuário e seja mostrada a sua idade
em 2021. Não é necessário considerar se o usuário já fez ou não aniversário. Um método deve	//Lucas Adriano Pereira 06/06/2023
ser criado para solicitar o ano de nascimento ao usuário e retorná-lo, e outro método deve ser
criado para receber o ano de nascimento, calcular a idade atual e mostrá-la
*///////////////////////////////////////////////////////////////////////////////////////////////
programa
{	
	funcao inicio()
	{
		escreva("Este programa pede o ano de nascimento do usuário e mostra a sua idade!!\n")
		inteiro ano = anoNascimento()
		calcularIdade(ano)	
	}	

	funcao inteiro anoNascimento(){
		
		inteiro anoNasc
		escreva("Digite o ano do seu nascimento: ")
		leia(anoNasc)
		retorne anoNasc
	}

	funcao calcularIdade(inteiro ano){
		 inteiro idade = 2023 - ano
		 escreva("  sua idade é: "+idade)		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {anoNasc, 18, 10, 7}-{ano, 24, 30, 3}-{idade, 25, 11, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */