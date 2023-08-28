/*///////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que a partir do valor de uma compra, faça o cálculo de um desconto para o
usuário. O programa deve solicitar o valor total da compra por meio de um método, que deverá
retorná-lo. Um método deve ser criado para receber o valor da compra e mostrar o valor final
com desconto, considerando:														//Lucas Adriano Pereira 07/06/2023
● Até R$100 - sem desconto, o valor permanece o mesmo
● De R$100,01 a R$200 - desconto de 20%
● Acima de R$200 - desconto de 30% 
*///////////////////////////////////////////////////////////////////////////////////////////////
programa
{
	
	funcao inicio()
	{
		escreva("Este programa da ao usuário um desconto dependendo do valor da compra!!\n")
		real valorCompra = solicitarValor()
		valorFinal(valorCompra)
	}

	funcao real solicitarValor(){
		
		real valorCompraSolicitar
		faca{
		escreva("Digite o valor da sua compra: ")
			leia(valorCompraSolicitar)
		
		}enquanto(valorCompraSolicitar <=0)

		retorne valorCompraSolicitar
	}

	funcao valorFinal(real valorCompra){
		
		se(valorCompra > 100.01 e valorCompra < 200){
			valorCompra = valorCompra - (valorCompra * 20/100)
		}
		senao se(valorCompra > 200){
			valorCompra = valorCompra - (valorCompra * 20/100)
		}
		
		escreva("\nA sua compra foi um total de: R$ " +valorCompra+ " reais\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1051; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorCompra, 16, 7, 11}-{valorCompraSolicitar, 22, 7, 20}-{valorCompra, 32, 24, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */