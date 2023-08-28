/*///////////////////////////////////////////////////////////////////////////////////
A empresa “SÓ GASTA&NÃO LUCRA S.A.” necessita fazer um levantamento sobre
a folha de pagamento e para isso solicita uma solução que leia o nome, o sexo e o
salário dos seus 5 funcionários. Ao final deseja que imprima a média dos salários do	    //Lucas Adriano Pereira 28/03/2023
sexo masculino, a média dos salários do sexo feminino e o total da folha de
pagamento.
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	cadeia nome							//declarando variaveis
	inteiro salario, sexo, salarioM = 0, salarioF = 0, somaSalarios
	
	inteiro somaSexo1 = 0
	inteiro somaSexo2 = 0
	
	inteiro mediaFemi = 0
	inteiro mediaMasc = 0
	funcao inicio()
	{
		escreva("Olá Somos da empresa SÓ GASTA&NÃO LUCRA S.A. Estamos fazendo a folha de pagamento dos funcionarios dividindo pelo sexo!!!.\n")
		para(inteiro i=0; i<5; i++){										//entrada da estrutura de repetição
			escreva("Qual o nome do(a) "+(i+1)+ "º Funcionario(a): ")
			leia(nome)								//entrada de dados
			escreva("\n")
		
			escreva("Qual o Genero do(a) "+(i+1)+"º Funcionario(a): (1) Masculino (2) Feminino: ")
			leia(sexo)
			escreva("\n")
				
			escreva("Qual o Salario do(a) "+(i+1)+"º Funcionario(a): ")
			leia(salario)
			escreva("\n")

			se(sexo == 1){							//operação e uso de condicional
				somaSexo1 = somaSexo1 + 1
				salarioM = salarioM + salario 
				
				}senao se(sexo == 2){ 
				somaSexo2 = somaSexo2 + 1
				salarioF = salarioF + salario 
				
				}senao{
					escreva("Erro")}
			}
			somaSalarios = salarioF + salarioM
			mediaFemi = salarioF/ somaSexo2				
			mediaMasc = salarioM /somaSexo1					
			escreva("Média de pagamento Masculina: R$ "+mediaMasc+ " reais\n")	//saidas de dados
			escreva("Média de pagamento Feminina: R$ "+mediaFemi+ " reais\n")
			escreva("Média de pagamento Total: R$ "+somaSalarios+ " reais\n")
	}																//fim
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1670; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */