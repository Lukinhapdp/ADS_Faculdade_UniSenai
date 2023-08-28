programa	//Lucas Adriano Pereira 25/02/2023
{
/*///////////////////////////////////////////////////////////////////////////////////
Criaremos um programa que simula uma atualização de dados cadastrais de um
funcionário em uma empresa. Solicitaremos: nome completo, telefone, e-mail,
logradouro, número da casa, se a pessoa é doadora de sangue e seu último
salário. Ainda não faremos nenhuma validação. Apenas faremos o uso dos tipos
de dados mais adequados para cada situação (cadeia de caracteres ou texto,
número inteiro, número real). Portanto, copie o código abaixo, execute e verifique
se ele está funcionando adequadamente. Salve tudo e deixe esse código-fonte
guardado para que você consulte posteriormente. 
*/////////////////////////////////////////////////////////////////////////////////////
	//declarando as variaveis

	cadeia nome, telefone, email, logradouro, doador_sangue
	inteiro num_casa
	real	salario
	

	
	funcao inicio()
	{		//entradas de dados
		escreva("Olá seja bem vindo ao nosso programa!!!\n Aqui perguntaremos as informações do usuário, e depois exibimos para o cliente")
		
		escreva("Nome: ")	
		leia(nome)		

		escreva("Telefone: ")	
		leia(telefone)

		escreva("Email: ")
		leia(email)

		escreva("Logradouro: ")
		leia(logradouro)
	
		escreva("Doador de sangue (S/N): ")
		leia(doador_sangue)

		escreva("Valor do último salario: ")
		leia(salario)

		limpa() //Função para resetar o console

		//saidas de dados
	
		escreva(" Nome: " + nome )
		escreva(" Telefone: " + telefone )
		escreva(" Email: " + email )
		escreva(" Doador de sangue (S/N): " + doador_sangue )
		escreva(" Valor do último salario: " + salario )	//fim
	
	
	
	
	
	
	
	
	
	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 35; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */