/*/////////////////////////////////////////////////////////////////////////////
(ENADE 2017) Uma empresa de cosméticos comercializa cinco diferentes tipos de
produtos e os armazena em uma estante de 40 x 40 posições. Em cada posição da
estante, pode ficar armazenada apenas uma caixa com um desses produtos. Para
facilitar sua identificação, os produtos foram codificados da seguinte forma:
0. vazio
1. xampu
2. condicionador
3. hidratante
4. tintura
5. demaquilante														//Lucas Adriano Pereira 18/05/2023
Nessa situação e considerando o desenvolvimento de um sistema para gerenciar a
organização dos produtos na estante, estabeleceu-se a declaração de variáveis a
seguir.
Com base nessa declaração e considerando a codificação dos produtos exposta,
apresente um algoritmo que:
● Leia os códigos dos produtos e armazene-os na matriz Estante
● Realize a contagem e imprima a quantidade de caixas de cada tipo de
produto na estante.
Insira comentários no código explicando as linhas que apresentam as solicitações
acima.
*/////////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro estante[40][40], cont1 = 0, cont2 = 0 ,cont3 = 0, cont4 = 0, cont5= 0, cont0 = 0 //Declarando as Variaveis
	funcao inicio()
	{
		escreva("*Uma empresa de cosméticos comercializa cinco diferentes tipos de produtos e os armazena em uma estante Em cada posição da estante,\npode ficar armazenada apenas uma caixa com um desses produtos.\n")//Enunciado
		escreva("\n-------------Produtos-------------\n")
		escreva("\n (1) Xampu\n (2) Condicionador\n (3) Hidratante\n (4) Tintura\n (5) Demaquilante\n (0) Espaço vazio\n\n ")//Tabela de produtos
		escreva("Coloque um código do produto para cada lugar da prateleira:\n")

		
		para(inteiro i=0; i<40; i++){ //Início da estrutura de repetição para a matriz
			para(inteiro j=0; j<40; j++){
				faca{	//Início da estrutura de repetição "faça enquanto" para a validação
					escreva("\nPosição da linha " +(i+1)+ " e coluna " +(j+1)+ ": ") 
					leia(estante[i][j]) //Entrada de dados para a matriz "estante"
	
					se(estante[i][j] <=5 ou estante[i][j] >= 0){
						
						escolha(estante[i][j]){ //Início da estrutura condicional para fazer a soma de quantidade de cada produto colocado na matriz "estante"
		
							caso 1:
								cont1++
							pare
							caso 2:
								cont2++
							pare
							caso 3:
								cont3++
							pare
							caso 4:
								cont4++
							pare
							caso 5:
								cont5++
							pare
							caso 0:
								cont0++
							pare
						
							caso contrario: escreva("Erro!!!  O produto digitado não existe!!")//Validação se caso o usuário digitar um valor diferente da tabela conta como espaço vazio na estante
						}
					}
				}enquanto(estante[i][j] <=5 ou estante[i][j] >= 0)//Fim da estrutura de repetição "faça enquanto" para a validação
			}
		} //Fim das entradas de dados
	
		limpa() //Ferramenta para limpar o console
		para(inteiro i=0; i<40; i++){				//Início da estrutura de repetição para mostrar a matriz em forma de tabela
			para(inteiro j=0; j<40; j++){
				escreva(" | " +estante[i][j]+ " | ")
			}
			escreva("\n")
		}
		escreva("\nTotal de (1) Xampu: " +cont1)  	//Início das saídas
		escreva("\nTotal de (2) Condicionador: " +cont2)
		escreva("\nTotal de (3) Hidratante: " +cont3)
		escreva("\nTotal de (4) Tintura: " +cont4)
		escreva("\nTotal de (5) Demaquilante: " +cont5)
		escreva("\n1Total de (0) Espaço vazio: " +cont0+ "\n") //Fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2624; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */