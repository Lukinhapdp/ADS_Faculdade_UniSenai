/*////////////////////////////////////////////////////////////////////////////
No Supermercado Alegria, existe um controle em relação ao valor das compras
dos clientes nos 03 últimos meses.
Faça um programa que peça os nomes dos 3 clientes e os valores das compras
feitas por eles nos 03 últimos meses e calcule:
a) A quantidade de compras;
b) A média das compras, considerando essa quantidade.
Após os cálculos serem efetuados, você deve exibir o menu a seguir ao			//Lucas Adriano Pereira 02/05/2023
usuário:
a) 1- Ver compras de um cliente (permitir que o dono do
supermercado consulte os valores das compras dos 3 meses, da
média das compras e quantidade de compras de um cliente
qualquer, consultando pelo seu nome);
b) 2- Ver todas as compras de todos os clientes (mostrar a tabela
inteira com todos os valores).
Obs.: Quando o cliente não tiver comprado naquele mês, deve ser informado 0
no valor da compra (equivale ao “R$ - “ da tabela). Guarde os nomes dos
clientes em um vetor. Os valores da tabela são exemplos, o programa poderá
receber quaisquer nomes de clientes e valores de compras. 
*//////////////////////////////////////////////////////////////////////////////
programa
{
	real matriz[3][3], contCompras=0.0, mediaCompras, mediaCliente[3], mediaMes[3], mediaTotal[3], mediaClientesTotal
	inteiro cont=0, posicao, contCliente[3], nome, qualTabela
	cadeia vetor[3], continuar = ""
	
	funcao inicio()
	{
		escreva("Olá No Supermercado Alegria, existe um controle em relação ao valor das compras dos clientes nos 03 últimos meses.\n")
		faca{
			
			para(inteiro i=0; i<3; i++){
				escreva("\nInforme o nome do cliente: ")
				leia(vetor[i])
				cont = 0
				
				para(inteiro j=0; j<3; j++){
					escreva("\nCliente: " +vetor[i]+" informe a compra do " +(j+1)+ "º Mês: ")
					leia(matriz[i][j])
					
					mediaMes[i] += matriz[i][j]
					mediaTotal[i] = matriz[i][j] 
					
					se(matriz[i][j] != 0){
						cont++
						contCliente[i] = cont
							
					}
					mediaTotal[i] = matriz[i][j] / cont
				} 
			limpa()
			}
			para(inteiro i=0; i<3; i++){
				mediaCliente[i] = mediaMes[i] / contCliente[i]
				mediaClientesTotal = mediaCliente[i]
			}
			limpa()
			
			escreva("Você deseja ver as informações do: \n(1) Cliente \n(2) De todos os clientes \n(3) Media de todas as compras \n")
			leia(qualTabela)
			
			escolha(qualTabela){
				
				caso 1:
				limpa()
					escreva("\nVocê deseja ver as informações de qual cliente?: \n")
					escreva("\nCliente 1: "+vetor[0])
					escreva("\nCliente 2: "+vetor[1])
					escreva("\nCliente 3: "+vetor[2]+"\n")
					leia(nome)
	
					escolha(nome){
	
						caso 1:
						limpa()
							escreva("\nCliente: "+vetor[0])
							escreva("\nO Cliente fez " +contCliente[0]+ " compras!!\nMédia de compras: R$ " +mediaCliente[0]+ "\n")
							para(inteiro j=0; j<3; j++) {
								se (matriz[0][j] > 0) {	
									escreva("Compras do "+(j+1)+"° mês: R$ "+ matriz[0][j] + "\n")
								}
							}
								
						pare
						
						caso 2:
						limpa()
							escreva("\nCliente: "+vetor[1])
							escreva("\nO Cliente fez " +contCliente[1]+ " compras!!\nMédia de compras: R$ " +mediaCliente[1]+ "\n")
							para(inteiro j=0; j<3; j++) {
								se (matriz[1][j] > 0) {
									escreva("Compras do "+(j+1)+"° mês: R$ "+ matriz[1][j] + "\n")
								}
							}
						pare
						
						caso 3:
						limpa()	
							escreva("\nCliente: "+vetor[2])
							escreva("\nO Cliente fez " +contCliente[2]+ " compras!!\nMédia de compras: R$ " +mediaCliente[2]+ "\n")
							para(inteiro j=0; j<3; j++) {
								se (matriz[2][j] > 0) {
									escreva("Compras do "+(j+1)+"° mês: R$ "+ matriz[2][j] + "\n")
								}
							}
						pare
	
						caso contrario:
						escreva("Erro!!")
						pare
					}
				pare
					
				caso 2:
					para(inteiro i=0; i<3; i++) {
						escreva("\n---------Cliente: "+vetor[i]+" ---------\n")
						
						para(inteiro j=0; j<3; j++) {
							se (matriz[i][j] > 0) {
								escreva(" | Compras do "+(j+1)+"° mês: R$ "+ matriz[i][j] + " | Total de compras: " +contCliente[i]+ " | \n")
							}
						}
						escreva(" | Media compras: R$ " +mediaCliente[i]+ " |\n")
					}
				pare
	
				caso 3:
					escreva(" | Media compras toal: R$ " +mediaClientesTotal+ " |\n")
				pare
				
				caso contrario:
					escreva("Erro!!")
			}
			escreva("\nVocê deseja continuar o programa? (s/n)\n")
			leia(continuar)		
					
		}enquanto(continuar == "s")
	}		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1921; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contCliente, 24, 26, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */