/*//////////////////////////////////////////////////////////////////////////////
Você foi contratado por um clube esportivo para criar um programa que atuará em
suas eleições presidenciais. Ou seja, você criará uma urna eletrônica para essa		//Lucas Adriano Pereira 30/03/2023
eleição. Para tanto, você trabalhará com um menu que apresentará as seguintes
opções para o eleitor:Além disso, o eleitor também pode optar por votar em branco. Ou seja, essa é uma
opção válida e, portanto, deve constar em sua lista de opções.
Por fim, há o caso de ocorre um voto nulo. Um voto nulo ocorre quando o eleitor
digita um número aleatório que não corresponde a um candidato. Isso não é uma
opção, mas uma possibilidade que deve ser tratada.
Nem sempre os sócios comparecem para votar, então não tem como saber quantos
votos serão contabilizados. Por isso, é preciso validar se há ou não votantes já no
início das eleições.
Ao final de cada voto, o programa deve perguntar ao usuário se ainda existe mais
uma pessoa para votar, se sim, o usuário deve informar “SIM”, se não, informar
“NÃO”. Ao final, deverá ser mostrado:
● Quantidade de votos para cada candidato, em branco e nulo;
E o resultado final da eleição, que pode ser:
● Eleição cancelada: Se não houverem votantes ou se a soma dos
votos nulos e brancos exceder a soma dos votos válidos (um voto é
considerado válido quando for um voto em algum candidato);
● Empate: se a condição acima for falsa e a quantidade dos votos dos
candidatos serem iguais;
● Candidato eleito: se as condições acima forem falsas e a soma dos
votos para um dos candidatos seja maior que a do outro.
*///////////////////////////////////////////////////////////////////////////////
programa
{
	inteiro candidato, qntdVotos15=0, qntdVotos32=0, qntdVotos44=0, qntdNulo=0, qntdBranco=0, votosInvalidos 
	inteiro votosValidos, totalVotos				//declarando variaveis
	cadeia continuar = ""
	
	funcao inicio()
	{
		escreva("Olá seja bem vindo a eleição.")
		escreva("Há pessoas para votar?\n Digite: (s/n)\n")
		leia(continuar)								//declarando variaveis
		escreva("\n")

	enquanto(continuar == "s" ){		//inicio da estrutura de repetição enquanto
		
		se (continuar == "s" )   {	//uso das estruturas condicionais
			escreva("Os candidatos são: \n(15) Osmar Profundo \n(32) Alceu Dispôr \n(44) Armando Goupe \n(0) nulo \n(100) branco\n")
			escreva("Escolha o candidato: ")
			leia(candidato)  }
	
		escolha(candidato){			//inicio da estrutura condicional escolha
			caso 100:
				escreva("O seu voto foi branco!!\n")
				qntdBranco++
			pare
			
			caso 0:
				escreva("O seu voto foi nulo!!\n")
				qntdNulo++
			pare

			caso 15:
				escreva("O seu voto foi para o cadidato: (15) Osmar Profundo!!\n")
				qntdVotos15++
			pare
		
			caso 32:
				escreva("O seu voto foi para o candidato: (32) Alceu Dispôr!!\n")
	   			qntdVotos32++		
			pare

			caso 44:
				escreva("O seu voto foi para o canditado: (44) Armando Goupe!!\n")
				qntdVotos44++
			pare

			caso contrario: 
			escreva("O seu voto foi nulo!!\n")
			qntdNulo++	
						}	
			escreva("Ainda tem pessoas para votar? (s/n)\n")
			leia(continuar)
	limpa()
		} 		
			votosInvalidos = qntdNulo + qntdBranco 
			votosValidos = qntdVotos15 + qntdVotos32 + qntdVotos44	    //operações
			totalVotos = votosValidos + qntdNulo

			escreva("---------------------------------------------\n")		//saidas de dados
			escreva("Quantidade de votos para cada candidato: \n")
			escreva("Quantidade de votos para (15) Osmar Profundo: "+qntdVotos15+"\n")
			escreva("Quantidade de votos para (32) Alceu Dispôr: "+qntdVotos32+"\n")
			escreva("Quantidade de votos para (44) Armando Goupe: "+qntdVotos44+"\n")
			escreva("Quantidade de votos Nulo: "+qntdNulo+"\n")
			escreva("Quantidade de votos Branco: "+qntdBranco+"\n\n")
			escreva("Quantidade total de votos: "+totalVotos+"\n")
			escreva("----------------------------------------------\n")
			
			se(votosInvalidos>votosValidos ou votosValidos+ votosInvalidos == 0){			//estruturas condicionais
				escreva("A eleição foi cancelada pois não havia pessoas para votar ou não obteve votos válidos suficiente!!!")}
			
			senao se(qntdVotos15 == qntdVotos32 e qntdVotos15 == qntdVotos44 e qntdVotos44 == qntdVotos32){
				escreva("O resultado das eleições foi: Empate!!!")}
			
			senao se(qntdVotos15 > qntdVotos32 e qntdVotos15> qntdVotos44){
				escreva("O resultado das eleições foi: (15) Osmar Profundo com: "+qntdVotos15+" de votos \n!!!")}	
			
			senao se(qntdVotos32 > qntdVotos15 e qntdVotos32> qntdVotos44){
				escreva("O resultado das eleições foi: (32) Alceu Dispôr com: "+qntdVotos32+" de votos \n!!!")}
			senao {
				escreva("O resultado das eleições foi: (44) Armando Goupe com: "+qntdVotos44+" de votos \n!!!")}	//saidas de dados e fim
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4767; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */