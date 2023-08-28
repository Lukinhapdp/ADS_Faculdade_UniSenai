programa		//lucas adrinao pereira
			//28/02/2023
{
/*//////////////////////////////////////////////////////////////////////////////////////	
Você se lembra da atividade 3 desse material? Então, nosso primeiro desafio é pedir
para que você valide:
● Se os dois números informados estão incorretos;
● Se só o antecessor está incorreto;
● Se só o sucessor está incorreto;
Validando isso, você será capaz de informar se o usuário venceu o desafio ou se
perdeu. E ainda, por qual motivo ele perdeu, informando qual foi seu erro.  	
*////////////////////////////////////////////////////////////////////////////////////////

	
	//declaraçâo das variaveis
	
	inteiro numero
	inteiro sucessor
	inteiro antecessor
	
	funcao inicio()
	{
		//entradas
		
		escreva("Escreva um numero: \n")
		leia(numero)

		escreva("Escreva o antecessor do número que você escreveu: \n")
		leia(antecessor)

		escreva("Escreva o sucessor do número que você escreveu: \n")
		leia(sucessor)

		//processo

	se((antecessor == (numero - 1)) e (sucessor == (numero + 1 )))
 	{

 		//saidas
 		
 		escreva("Parabens você venceu!!!") 	
 	} 
 	senao se(antecessor != (numero -1) e (sucessor != (numero + 1)))
 	{
		escreva("Você perdeu pois os dois numeros não estao certos ")
	} 
 	
 	senao se(antecessor == (numero - 1) e (sucessor != (numero + 1)))
 	{
 		escreva("Você perdeu, pois somente o antecessor está certo!")
 	}
 	senao
 	{
 		escreva("Você perdeu, pois somente o sucessor está certo!")
 	}
 	} //fim
}			
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */