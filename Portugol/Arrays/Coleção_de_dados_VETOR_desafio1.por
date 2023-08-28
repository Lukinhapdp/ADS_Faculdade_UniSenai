/*//////////////////////////////////////////////////////////////////////////////////
Você foi contratado por uma empresa que oferece o serviço de síndico profissional
para condomínios. Eles precisam de um pequeno cadastro para administrar as 4
(quatro) famílias que moram no Condomínio Studiare Molto. O cliente quer uma
aplicação em que ele possa inserir: o sobrenome da família, o apartamento em que
moram; a quantidade de moradores; e a renda da família. Após inseridas as
informações, o síndico profissional quer poder pesquisar cada uma dessas famílias
cadastradas por meio do apartamento em que moram. Assim, o programa deverá
mostrar de maneira organizada as seguintes informações na seguinte ordem:
● Apartamento														//Lucas Adriano Pereira 13/04/2023
● Sobrenome da família
● Renda total
● Renda per capita (Renda total / quantidade de moradores)
Duas informações importantes:
1. Você não pode permitir que o usuário cadastre duas vezes o mesmo
apartamento;
2. O usuário pode realizar quantas pesquisas desejar, encerrando o programa
apenas quando não quiser saber mais nada.
*/////////////////////////////////////////////////////////////////////////////////////
 programa
{
	inteiro vetor[4], valor, posicao=0,ap[4]
	inteiro apto, rendaTotal[4], rendaCapita[4], qntdPessoas[4],renda[4],cont=0
	cadeia sobrenome[4], continuar=""
	logico encontrou = falso
	logico achou
	funcao inicio()
	{
		escreva("Olá Somos do Condomínio Studiare Molto fizemos um pequeno tipo de cadastro para administrar as que moram no Condomínio.\n\n")

		faca{
			cont++
			
			para(inteiro i=0; i<4; i++){
			
				escreva("\n"+(i+1)+"ª Família a cadastrar: \n\n")
			
				escreva("Qual o sobrenome da familia?: ")
				leia(sobrenome[i])
				
			faca{
				escreva("Qual o Apartemento em que moram?: ")
				leia(apto)
				se(apto == i){
					escreva("Erro você já digitou esse apartamento!!\n")
				}
				achou = falso
				para(inteiro j=0; j<4; j++)
				se(ap[j]==apto){
					achou=verdadeiro
				}
				
			}enquanto(achou==verdadeiro)
				
				ap[i] = apto
				
				escreva("Quantas pessoas compoem sua familia?: ")
				leia(qntdPessoas[i])
		
				escreva("Qual a renda total da familia?: ")
				leia(renda[i])
				
				rendaCapita[i] = renda[i] / qntdPessoas[i]
				rendaTotal[i] = renda[i]
			}		
		escreva("\nDigite qual apartamento você quer encontrar: ")
		leia(valor)
		
		para(inteiro i=0; i<4; i++){
			se(valor == ap[i]){
				posicao = i
				escreva("\nVocê selecionou o apto: "+ap[i]+ ", essas são as informações: \n") 
				escreva("Apartamento: "+ap[i]+ "\nSobrenome: "+sobrenome[i]+"\nRenda Total: "+rendaTotal[i]+"\nRenda per capita: "+rendaCapita[i]+"\n") 
				encontrou = verdadeiro
			}
		}
		se(nao encontrou){
			escreva("O apartamento "+valor+" não foi encontrado! ")
		}
		
		escreva("Ainda deseja continuar?: (s/n) ")
		leia(continuar)
		}enquanto(continuar =="s")
		escreva("Você finalizou o programa!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2924; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {rendaCapita, 23, 30, 11}-{qntdPessoas, 23, 46, 11}-{renda, 23, 61, 5}-{sobrenome, 24, 8, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */