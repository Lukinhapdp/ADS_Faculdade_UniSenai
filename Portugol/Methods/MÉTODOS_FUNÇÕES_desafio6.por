/*///////////////////////////////////////////////////////////////////////////////////////////////
Construa uma solução que receba um valor inteiro como parâmetro e determine se ele é primo
ou não. Como requisito básico, exija que o valor seja apenas positivo. Quanto a validação, faça
uso de uma variável lógica, sendo que: ele será Verdadeiro quando o valor for primo; e Falso,		//Lucas Adriano Pereira 12/06/2023
quando ele não for primo.
*/////////////////////////////////////////////////////////////////////////////////////////////////
programa
{
	funcao inicio()
	{
		escreva("Olá nesse programa pediremos um número e mostraremos se ele é primo ou não!!\n")
		
		inteiro numeroValidando = metodoOperacao()
		metodoFinal(numeroValidando)
	}

	funcao inteiro metodoOperacao(){
		inteiro numero

		faca{
			escreva("\nDigite um número positivo: ")
				leia(numero)
	
			se(numero <=0){
				escreva("\nErro você não digitou um número positivo!!\nDigite um número positivo (maior que zero): ")
					leia(numero)
			}
		}enquanto (numero <=0) 
		
		retorne numero
	}

 	funcao metodoFinal(inteiro numeroValidando){
		logico validacao = verdadeiro

		se(numeroValidando <= 1){
			validacao = falso
		} senao {
			para(inteiro i=2; i<numeroValidando; i++){	
				se(numeroValidando % i == 0){
					validacao = falso
				} 
			}	
		}		
		
		se(validacao == verdadeiro){
 			escreva("\nO número é primo \n")
 		} senao {	
 			escreva("\nO número não é primo \n")
 		}
 	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */