/*////////////////////////////////////////////////////////////////////////////////
Em um campeonato, as equipes Alfa, Beta, Celta e Delta participaram de 03
jogos e obtiveram as seguintes pontuações:
Faça um programa para um campeonato similar a esse, que seja capaz de
receber os valores dos 03 jogos, como na tabela acima, bem como os nomes
das equipes, e forneça ao usuário as opções:
a) Ver a tabela inteira;
b) Ver os nomes das equipes;										//Lucas Adriano Pereira 03/05/2023
c) Ver a pontuação de uma equipe em determinado jogo;
d) Ver o nome da equipe vencedora em um jogo específico;
e) Ver o nome da equipe perdedora em um jogo específico.
Obs.: O usuário poderá fazer essas consultas quantas vezes desejar. As equipes
nunca terão pontuações iguais em um jogo. Os valores da tabela são exemplos,
o programa poderá receber quaisquer nomes de equipes e pontuações.
Armazene em um vetor os nomes das equipes.
 *////////////////////////////////////////////////////////////////////////////////
 programa
{
	cadeia equipe[4], continuar = ""
	inteiro pontos[4][3], totalPontos=0, opcao, totalEquipe[4], equipeInformada, jogoInformado, campeao = 0, jogo
	inteiro vencedor, perdedor, maiorPontos = 0, menorPontos = 0
	logico validar1, validar2
	
	funcao inicio()
	{
		escreva("Olá Fizemos um programa para um campeonato, que seja capaz de receber os valores de 03 jogos, e forneça ao usuário as opções: \n")
		
			para(inteiro i=0; i<4; i++){
				escreva("\nNos informe a " +(i+1)+ "º Equipe: ")
				leia(equipe[i])
				
				para(inteiro j=0; j<3; j++){
					faca{	
						escreva("Nos informe qual a pontuação da equipe '" +equipe[i]+ "' no " +(j+1)+ "º jogo: ")	
						leia(pontos[i][j])
								
							se(pontos[i][j] <= 0){
								validar1 = verdadeiro
								escreva("O número que você digitou é inválido, tente novamente! \n")	
							
							} senao {
								validar1 = falso
							}
							para(inteiro l = 0; l < i; l++) {
								se (pontos[i][j] == pontos[l][j]) {
									escreva("A pontuação não pode ser igual dos outros times! ")
									validar2 = verdadeiro
								
								} senao {
									validar2 = falso	
								}
							}
								se((nao validar2) e (nao validar1)) {
									totalPontos += pontos[i][j]
								}

							se(pontos[i][j] < campeao )
								campeao = pontos[i][j] 
							
					}enquanto((validar1 != falso) ou (validar2 != falso))
				}
			}	
		
		limpa()
		faca{
		escreva("--------------------------Escolha uma opção--------------------------\n\n")
		escreva(" (1) Ver a tabela inteira\n (2) Ver os nomes das equipes\n (3) Ver a pontuação de uma equipe em determinado jogo\n (4) Ver o nome da equipe vencedora em um jogo específico\n (5) Ver o nome da equipe perdedora em um jogo específico\n (6) Encerrar o programa \n")
		leia(opcao)	
			
			escolha(opcao){
				caso 1:
					limpa()
					para(inteiro i=0; i<4; i++){
						escreva("\n---------Equipe: " +equipe[i]+ "---------\n")
						
						para(inteiro j=0; j<3; j++){
							escreva("Pontuaçao do " +(j+1)+ "º Jogo: " +pontos[i][j]+ "\n")
						}
					}
				pare

				caso 2:
					para(inteiro i=0; i<4; i++){
						escreva("\n---------Equipe: " +equipe[i]+ "---------\n")
					}
				pare

				caso 3:
					para(inteiro i=0; i<4; i++){
						escreva("\n" +(i+1)+ "º Equipe: " +equipe[i])
					}
					
					escreva("\n\nInforme qual equipe você deseja ver? \n")
					leia(equipeInformada)
					
					escreva("\nInforme qual jogo dessa equipe você deseja ver a pontuação: ")
					leia(jogo)

					limpa()

					equipeInformada = equipeInformada - 1
					jogo = jogo - 1
					
					escreva("Equipe número: " +(equipeInformada+1)+ " | Jogo: " +(jogo+1)+ " | Total de Pontos: " +pontos[equipeInformada][jogo]+ "\n")
				pare

				caso 4:
					escreva("\nNos informe qual jogo você deseja ver: \n (1) Primeiro jogo\n (2) Segundo jogo\n (3) Terceiro jogo\n ")
					leia(jogo)

					jogo = jogo - 1
					vencedor = 0
					para(inteiro j=jogo; j==jogo; j++){
						para(inteiro i=0; i<4; i++){
							
							se(pontos[i][j] > maiorPontos){
								maiorPontos = pontos[i][j]
								vencedor = i
							} senao se(i == 0){
								maiorPontos = pontos[i][j]
								vencedor = i
							}
						}
					}
					escreva("O time vencedor do Jogo " + (jogo+1) + " foi: " + equipe[vencedor])
				pare	

				caso 5:
					escreva("\nNos informe qual jogo você deseja ver: \n (1) Primeiro jogo\n (2) Segundo jogo\n (3) Terceiro jogo\n ")
					leia(jogo)

					jogo = jogo - 1
					perdedor = 0
					para(inteiro j=jogo; j==jogo; j++){
						para(inteiro i=0; i<4; i++){
							
							se(pontos[i][j] < menorPontos){
								menorPontos = pontos[i][j]
								perdedor = i
							} senao se(i == 0){
								menorPontos = pontos[i][j]
								perdedor = i
							}
						}
					}
					escreva("O time perdedor do Jogo " + (jogo+1) + " foi: " + equipe[perdedor])
				pare		
			
			}
			
			escreva("\nDeseja fazer outra pesquisa? (s/n)")
			leia(continuar)
			
		}enquanto(continuar == "s")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4805; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pontos, 20, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */