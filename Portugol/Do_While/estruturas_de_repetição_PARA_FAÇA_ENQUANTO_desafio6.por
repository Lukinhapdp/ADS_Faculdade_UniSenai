/*///////////////////////////////////////////////////////////////////////////////
A prefeitura de “Xico City” deseja fazer uma pesquisa entre seus habitantes.
Desenvolva uma solução para coletar dados sobre o salário e número de filhos de
cada habitante e após as leituras, escrever:
a) Média de salário da população											//Lucas Adriano Pereira 10/04/2023
b) Média do número de filhos
c) Maior salário dos habitantes
d) Percentual de pessoas com salário menor que R$ 150,00
*////////////////////////////////////////////////////////////////////////////////
programa
{
	real salario, mediaMaior=0.0, mediaSalario=0.0, mediaMenor=0.0, porcentagem=0.0
	inteiro mediaFilhos=0 ,filhos, cont=0
	cadeia continuar=""		//declarando variaveis
	
	funcao inicio()
	{
		escreva("Olá A prefeitura de “Xico City” deseja fazer uma pesquisa entre seus habitantes.\n")	//enunciado
		faca{									//inicio da estrutura de repetição (faça)
			cont++	//contagem da repetição de 1 em 1

			escreva("Qual a renda do habitante?: ")
			leia(salario)						//entrada de dados
			mediaSalario = mediaSalario + salario	// operação individual

			escreva("Quantos filhos esse habitante tem?: ")
			leia(filhos)						
			mediaFilhos = mediaFilhos + filhos

			se(mediaMaior < salario){	//inicio de condicional
				mediaMaior = salario
			}se(salario < 150){
				porcentagem++
			}
			escreva("Ainda tem pessoas para a pesquisa? (s/n): ")
			leia(continuar)
		
		}enquanto(continuar =="s")		//fim da estrutura de repetição (faça)
			
			mediaSalario = mediaSalario / cont
			mediaFilhos = mediaFilhos / cont			//operacões finais
			porcentagem = (porcentagem * 100) / cont	//transformando em porcentagem

			escreva("\nMédia de salário da população: " + mediaSalario)
			escreva("\nMédia do número de filhos: " + mediaFilhos)
			escreva("\nMaior salário dos habitantes: " + mediaMaior)
			escreva("\nPercentual de pessoas com salário menor que R$ 150,00: " + porcentagem + "%")//saidas de dados e fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 739; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */