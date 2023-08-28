/*///////////////////////////////////////////////////////////////////////////////////
Por fim, você criará um algoritmo que peça a idade, o gênero e o salário de um
grupo de pessoas. Quando o usuário quiser sair e encerrar o programa, ele deve
digitar “Finalizar”. Não se esqueça de validar para que o usuário digite exatamente	
“Finalizar”. Ao final, você deve apresentar ao usuário:						//Lucas Adriano Pereira 06/04/2023
● A média de salário do grupo;
● A média de todas as idades;
● A média de salário do gênero feminino;
● A média de salário do gênero masculino
*////////////////////////////////////////////////////////////////////////////////////
programa
{
	cadeia iniciar="" 							//declarando variaveis
	inteiro salario, idade, sexo, salarioM=0, salarioF=0, mediaSalarios=0, cont=0, contM=0, contF=0, mediaIdade=0
	
	inteiro mediaFemi = 0
	inteiro mediaMasc = 0
	funcao inicio()
	{
		escreva("Olá Somos da empresa SÓ GASTA&NÃO LUCRA S.A. Estamos fazendo a folha de pagamento dos funcionarios!!!.\n")
		escreva("Deseja iniciar agora?: (s/n) ")
		leia(iniciar)
		enquanto(iniciar == "s"){										//entrada da estrutura de repetição	
		cont++	
			
			escreva("\nQual o salario do: "+ (cont) +"º Funcionario: ")
			leia(salario)								//entrada de dados
			escreva("\n")
		
			escreva("Qual a idade do: "+ (cont) +"º Funcionario: ")
			leia(idade)
			escreva("\n")
			mediaIdade = mediaIdade + idade 
				
			escreva("Qual o genero do(a) funcionario(a):\n (1) Masculino\n (2) Feminino\n ")
			leia(sexo)
			escreva("\n")

			se(sexo == 1){							//operação e uso de condicional
				salarioM = salarioM + salario 
				contM++
				
				}senao se(sexo == 2){ 
				salarioF = salarioF + salario 
				contF++
				
				}senao{
					escreva("Erro")}
			limpa()
			
			escreva("Para encerrar o programa escreva: (finalizar). Para continuar (s).\n")
			leia(iniciar)		
		se((iniciar != "finalizar") ou (iniciar != "s")){
			escreva("Erro você digitou uma opção errada!!!")
		}
		}
			mediaSalarios = salarioM + salarioF
			mediaIdade = mediaIdade / cont				
			mediaMasc = salarioM / contM
			mediaFemi = salarioF / contF					
			
			escreva("● A média de salário do grupo: " + mediaSalarios)	//saidas de dados
			escreva("\n● A média de todas as idades: " + mediaIdade)
			escreva("\n● A média de salário do gênero feminino: " + mediaFemi)
			escreva("\n● A média de salário do gênero masculino: " + mediaMasc)	
																		//fim
		}
	}		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */