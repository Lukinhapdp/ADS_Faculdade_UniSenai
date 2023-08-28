/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você foi contratado para desenvolver um simulador de sistema de recomendação de 
filmes. O sistema deve solicitar ao usuário informações sobre um filme, como nome, 
duração em minutos e classificação indicativa. Com base nessas informações, o 
sistema deve classificar o filme em uma categoria específica, levando em 
consideração a duração e a classificação indicativa. As categorias são:
● Infantil: Filmes com duração menor que 60 minutos e classificação indicativa 
livre;

● Adolescente: Filmes com duração entre 60 e 120 minutos e classificação 				Lucas Adriano Pereira 03/07/2023
indicativa de 10, 12 ou 14 anos;

● Adulto: Filmes com duração maior que 120 minutos e classificação indicativa 
de 16 ou 18 anos;

● Não recomendado: Filmes com duração maior que 60 minutos e classificação 
indicativa livre.

Seu programa deve solicitar as informações do filme ao usuário, fazer as verificações 
necessárias e exibir a categoria do filme de acordo com as regras acima. Caso o filme 
não se enquadre em nenhuma categoria, o programa deve exibir uma mensagem 
adequada
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio8 {

	public static void main(String[] args) {

		String nome = JOptionPane.showInputDialog(null, "Insira o nome do filme:");
		int duracao = 0;
		int classificacao = 0;

		duracao = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual a duração do filme:"));
		
			while (duracao <= 0) {
			JOptionPane.showMessageDialog(null, "Você digitou uma duração inválida!!", "ERRO!!!!",
					JOptionPane.INFORMATION_MESSAGE);
			
			duracao = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual a duração do filme:"));
		}
		
		classificacao = Integer.parseInt(JOptionPane.showInputDialog(null,
				"Qual a classificação indicativa do filme (digite 0 para classificação livre):"));

			while (classificacao < 0 || classificacao > 18) {
				JOptionPane.showMessageDialog(null, "Você digitou uma duração ou classificação inválida!!", "ERRO!!!!",
						JOptionPane.INFORMATION_MESSAGE);
				
				classificacao = Integer.parseInt(JOptionPane.showInputDialog(null,
						"Qual a classificação indicativa do filme (digite 0 para classificação livre):"));
			}
		
		if (duracao <= 60 && classificacao == 0) {
			JOptionPane.showMessageDialog(null, "Infantil!", "O filme " + nome + ":" + " é recomendado para o público:",
					JOptionPane.INFORMATION_MESSAGE);
		
		} else if (duracao >= 60 || duracao <= 120 && classificacao >= 10 && classificacao <= 14) {
			JOptionPane.showMessageDialog(null, "Adolescente!",
					"O filme " + nome + ":" + " é recomendado para o público:", JOptionPane.INFORMATION_MESSAGE);
		
		} else if (duracao >= 120 && classificacao >= 16 && classificacao <= 18) {
			JOptionPane.showMessageDialog(null, "Adulto", "O filme " + nome + ":" + " é recomendado para o público:",
					JOptionPane.INFORMATION_MESSAGE);
		
		} else if (duracao > 60 && classificacao == 0) {
			JOptionPane.showMessageDialog(null, "Não é recomendado", "O filme " + nome + ":",
					JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, "Esse filme não existe", "Erro!!",
					JOptionPane.INFORMATION_MESSAGE);
		}
	}
}
