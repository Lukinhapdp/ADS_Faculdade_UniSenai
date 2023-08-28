programa
{
	//Lucas Adriano Pereira 15/03/2023

////////////////////////////////////////////////////////////////////////////////////////////////
		/*Você trabalha na SENAIflix e foi solicitado que você adicione e valide as seleções
		e opções de um usuário no sistema.
		*/
////////////////////////////////////////////////////////////////////////////////////////////////
	//declarando variaveis
	inteiro tipo, genero
	
	funcao inicio()
	{
		// entrada de dados
		escreva("Bem Vindo ao SENAIflix \n")
		escreva("O que você vai querer assistir?: \n (1) Filmes \n (2) Series \n (3) Documentarios \n ")
		leia(tipo)
	

		escolha(tipo){

			caso 1:  //entrada de dados
					escreva("Você escolheu filmes. \n Você quer assistir qual gênero de filme?:\n (1) Drama \n (2) Ação \n")
					leia(genero)

					escolha(genero){
					
						caso 1: //saida de dados
							escreva("Você escolheu o genero drama, recomendo para você o filme: Ex_Machina: Instinto Artificial. \n")
						pare
			
						caso 2: //saida de dados
							escreva("Você escolheu o genero ação, recomendo para você o filme: Minority Report. \n")
						pare

						caso contrario:
							escreva("Erro!!!")
					pare}
			pare
			caso 2:	//entrada de dados
					escreva("Você escolheu series. \n Você quer assistir qual gênero de serie?: \n (1) Suspense \n (2) Ficção Cientifica \n")	
					leia(genero)
					
					escolha(genero){

						caso 1: //saida de dados
							escreva("Você escolheu o genero suspence, recomendo para você a serie: Black Mirror. \n")				
						pare		
			
						caso 2: //saida de dados
							escreva("Você escolheu o genero ficção cientifica, recomendo para você a serie: Better Than Us. \n")				
						pare

						caso contrario:
							escreva("Erro!!!")
					pare}
			pare
			caso 3:	//entrada de dados
					escreva("Você escolheu documentarios. \n Você quer assistir qual gênero de documentario?: \n (1) Tecnologia \n (2) Biografia \n")		
					leia(genero)
			
					escolha(genero){
					
						caso 1: //saida de dados
							escreva("Você escolheu o genero tecnologia, recomendo para você o documentario: Watson da IBM: a máquina mais inteligente da Terra.\n")				
						pare

						caso 2: //saida de dados
							escreva("Você escolheu o genero biografia, recomendo para você o documentario: O Código Bill Gates.\n")
						caso contrario:
							escreva("Erro!!!")
					pare}
			pare
			
			caso contrario:
							escreva("Erro!!!") //fim
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */