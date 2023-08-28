programa
{
	
     cadeia nome 
	real nota1, nota2, nota3, media
	inteiro recuperacao
	funcao inicio()
	{
		escreva("Olá \n")
		escreva("Informe o nome do(a) aluno(a): ")
		leia(nome)	

		escreva("Que nota esse aluno(a) tirou na prova 1? ")
		leia(nota1)

		escreva("Que nota esse aluno(a) tirou na prova 2? ")
		leia(nota2)
		
		escreva("Que nota esse aluno(a) tirou na prova 3? ")
		leia(nota3)

		

		media = (nota1 + nota2 + nota3)/3
	
	se (media >=6)
		{
			escreva("O aluno(a): " + nome + " foi aprovado(a)!! e suas notas foram: "+ nota1, " na prova 1, "+ nota2 + " na prova 2 , " + nota3 + " na prova 3 e sua média foi: " +media)
		} senao {
			escreva("O aluno(a) precisa fazer a recuperação!! \n")
			escreva("Qual a nota da recuperação?")
			leia(recuperacao)
		
			se ((recuperacao > 6) e (media >=6))
			{
				recuperacao = 6.0
				escreva("O aluno(a): " + nome + " foi aprovado(a)!! e suas notas foram: "+ nota1, " na prova 1, "+ nota2 + " na prova 2 , " + nota3 + " na prova 3 e sua média foi: " +media)
		
		
		} senao {
			escreva("O aluno(a) foi reprovado(a)")
	}
}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1079; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */