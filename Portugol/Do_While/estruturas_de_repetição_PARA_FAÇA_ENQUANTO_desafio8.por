/*//////////////////////////////////////////////////////////////////////////////
Realizou-se uma pesquisa com “N” pessoas sobre a opinião em relação à
pré-estreia de um filme. Os dados solicitados na pesquisa foram: sexo, idade,
opinião em relação ao filme (nota de 0 - 10). As perguntas devem ser repetidas
enquanto existir pessoas para responder
Calcular e exibir as seguintes informações:										//Lucas Adriano Pereira 11/04/2023
a) A média de idade das pessoas que responderam o questionário;
b) O total de opiniões iguais a 10;
c) A quantidade de homens com opiniões inferiores a 5;
d) A quantidade de mulheres com opiniões superiores a 5. 
*///////////////////////////////////////////////////////////////////////////////
programa
{
	
	cadeia continuar=""
	inteiro idade, opniao, sexo, cont=0, mediaIdade=0 ,mediaOpniao=0, contOpniao=0		//declarando variaveis
	inteiro qntdMasc=0, qntdFemi=0, contMascMaior=0, contMascMenor=0, contFemiMenor=0, contFemiMaior=0
	funcao inicio()
	{
		escreva("Olá somos do cinema e queriamos fazer uma pesquisa sobre a sua opinião em relação à pré-estreia do filme: Shazam 2!!\n")
		
		faca{						//inicio da estrutura de repetição (faça)
		
		escreva("Qual a sua idade?: \n")	
		leia(idade)					//entrada de dados
	
		escreva("Qual a sua opnião de 0 a 10?: \n")
		leia(opniao)

	
	se(opniao>10 ou opniao<0){
		enquanto(opniao>10 ou opniao<0){
			escreva("Erro essa nota é invalida, coloque uma nota valida!!\n")
			escreva("Qual a sua opnião de 0 a 10?: \n")
			leia(opniao)}
		}

		escreva("Qual o seu gênero?: \n(1) Masculino \n(2) Feminino \n")
		leia(sexo)

		se(opniao == 10){			//inicio da estrutura condicional (se e senao)
			contOpniao = contOpniao + 1}

		se(sexo == 1){
			qntdMasc = qntdMasc + 1
			
			se(opniao<5)
				contMascMenor = contMascMenor +1
				
		}senao se(sexo == 2){
			qntdFemi = qntdFemi + 1
			
			se(opniao>5)
				contFemiMaior = contFemiMaior +1}
				
		escreva("Ainda tem pessoas para a pesquisa?: (s/n)")
		leia(continuar)
		
		cont++
	limpa()
	
		mediaIdade = (idade*cont)/cont	//operações
		mediaOpniao = (contOpniao*cont)/cont
		
		}enquanto(continuar =="s")		//fim da estrutura de repetição (faça)
		
		se(qntdMasc ==0){
			escreva("A média de idade das pessoas que responderam o questionário foi de: "+mediaIdade+"\n")
			escreva("O total de opiniões iguais a 10 foi de: "+mediaOpniao+"\n")
			escreva("Não teve nenhum homen nesta pesquisa! \n")
			escreva("A quantidade de mulheres com opiniões SUPERIORES a 5 foi de: "+contFemiMaior+"\n")
		}
		senao se(qntdFemi ==0){
			escreva("A média de idade das pessoas que responderam o questionário foi de: "+mediaIdade+"\n")
		escreva("O total de opiniões iguais a 10 foi de: "+mediaOpniao+"\n")
		escreva("A quantidade de homens com opiniões INFERIORES a 5 foi de: "+contMascMenor+"\n")
		escreva("Não teve nenhuma mulher nesta pesquisa! \n")
		}senao se(qntdFemi<0 e qntdMasc<0){
		escreva("A média de idade das pessoas que responderam o questionário foi de: "+mediaIdade+"\n")
		escreva("O total de opiniões iguais a 10 foi de: "+mediaOpniao+"\n")
		escreva("A quantidade de homens com opiniões INFERIORES a 5 foi de: "+contMascMenor+"\n")
		escreva("A quantidade de mulheres com opiniões SUPERIORES a 5 foi de: "+contFemiMaior+"\n")}//saidas de dados e fim
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1880; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */