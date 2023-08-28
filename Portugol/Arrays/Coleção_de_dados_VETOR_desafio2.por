/*///////////////////////////////////////////////////////////////////////////////
Um professor do SENAI gostaria de uma aplicação que fizesse o cálculo da média
de seus 5 (cinco) alunos no bimestre. Como o bimestre é composto por 2 (duas)
notas, crie 2 (dois) vetores para armazenar cada uma das notas dos alunos. Depois,	//Lucas Adriano Pereira 18/04/2023
crie outro vetor com o resultado da média dos alunos, seguindo a seguinte fórmula:
Média da Nota[1] = (Nota do vetor A[1] + Nota do vetor B[1]) / 2 
*///////////////////////////////////////////////////////////////////////////////////
programa
{
	cadeia aluno[5],valor
	inteiro notaA[5], notaB[5],media[5], posicao=0
	
	funcao inicio()
	{
		escreva("Olá Somos do SENAI e fizemos uma aplicação que faz o cálculo da média de 5 (cinco) alunos no bimestre.\n\n")

		para(inteiro i=0; i<5; i++){

			escreva("\nQual o nome do "+(i+1)+"º aluno: ")
			leia(aluno[i])

			escreva("Digite a 1ª nota: ")
			leia(notaA[i])

			escreva("Digite a 2ª nota: ")
			leia(notaB[i])	
		
			media[i] = notaA[i] /notaB[i] 
		
		}
		escreva("Qual aluno você deseja ver o boletim?: ")
		leia(valor)	
		
		para(inteiro i=0; i<5; i++){
			se(valor == aluno[i]){
				posicao = i
			escreva("\nVocê selecionou o aluno: "+aluno[i]+ ", essas são as notas: \n") 	
			escreva("\n"+(i+1)+"º Aluno: "+aluno[i]+ "\n1ª Nota :"+notaA[i]+"\n2ª Nota: "+notaB[i]+ "\nMedia: "+media[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */