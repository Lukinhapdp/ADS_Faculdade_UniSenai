/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Foi conduzida uma pesquisa com "N" indivíduos sobre suas opiniões em relação à
pré-estreia de um filme. Os dados coletados incluíram sexo, idade e uma nota de 0 a
10 referente à opinião sobre o filme. As perguntas foram feitas repetidamente até que
todas as pessoas disponíveis tivessem respondido.
Com base nos resultados da pesquisa, podemos calcular e apresentar as seguintes
informações:
● A média de idade das pessoas que responderam ao questionário;								//Lucas Adriano Pereira 07/08/2023
● Lista de pessoas que deram nota igual a 10;
● A quantidade de homens cujas opiniões sobre o filme foram inferiores a 5;
● A quantidade de mulheres cujas opiniões sobre o filme foram inferiores a 5;
● A quantidade de homens cujas opiniões sobre o filme foram superiores a 7;
● A quantidade de mulheres cujas opiniões sobre o filme foram superiores a 7;
● Média das notas informadas.
Essas informações podem ajudar a compreender melhor a recepção do público em
relação ao filme e a orientar decisões futuras da equipe responsável pela sua
promoção.
Obs.: não esqueça de validar se a nota está entre 0 e 10.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Do_While;

import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {

		int cont = 0, contFemiMaior = 0, contMascMaior = 0, contMascMenor = 0, contFemiMenor = 0, mediaNotas = 0, mediaIdade = 0;
		boolean continuar = false;
		ArrayList<String> lista = new ArrayList<String>();

		do {
			cont++;

			String nome = JOptionPane.showInputDialog(null, "Informe o seu nome:");

			int sexo = Integer.parseInt(JOptionPane.showInputDialog(null,
					"Informe o sexo do crítico(a):" + "\n(1) Masculino" + "\n(2) Feminino"));

			while (sexo != 1 && sexo != 2) {
				sexo = Integer.parseInt(JOptionPane.showInputDialog(null,
						"Informe o sexo do crítico(a):" + "\n(1) Masculino" + "\n(2) Feminino", "Erro!!",
						JOptionPane.INFORMATION_MESSAGE));
			}

			int idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a idade do crítico(a): "));

			while (idade < 1) {
				idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a idade do crítico(a): ", "Erro!!",
						JOptionPane.INFORMATION_MESSAGE));
			}
			mediaIdade += idade;

			Double nota = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a nota do crítico(a):"));
			while (nota < 0 || nota > 10) {
				nota = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a nota do crítico(a): ", "Erro!!",
						JOptionPane.INFORMATION_MESSAGE));
			}
			mediaNotas += nota;

			if (sexo == 1) {
				if (nota > 7) {
					contMascMaior++;

				} else if (nota < 5) {
					contMascMenor++;
				}

			} else if (sexo == 2) {
				if (nota > 7) {
					contFemiMaior++;

				} else if (nota < 5) {
					contFemiMenor++;
				}
			} 
			
			String resposta = JOptionPane.showInputDialog(null,
					"Hà mais pessoas para votar? (s) para sim / (n) para não");

			if (nota == 10) {
				lista.add(nome);
			}
			while (!resposta.equalsIgnoreCase("s") && !resposta.equalsIgnoreCase("n")) {
				resposta = JOptionPane.showInputDialog(null, "Deseja continuar? (s) para sim / (n) para não", "Erro!!!",
						JOptionPane.INFORMATION_MESSAGE);
			}

			if (resposta.equalsIgnoreCase("s")) {
				continuar = false;
			} else {
				continuar = true;
			}

		} while (!continuar);

		if (cont > 0) {
			mediaNotas /= cont;
			mediaIdade /= cont;
		}
		JOptionPane.showMessageDialog(null,
				"Media de idade geral: " + mediaIdade + "\nQuantidade de notas masculinas acima de 7: " + contMascMaior
						+ "\nQuantidade de notas masculinas abaixo de 5: " + contMascMenor
						+ "\nQuantidade de notas femininas acima de 7: " + contFemiMaior
						+ "\nQuantidade de notas femininas abaixo de 5:"+contFemiMenor + "\nMedia de notas geral: " + mediaNotas
						+ "\nLista de pessoas com avaliação máxima: " + lista);
	}
}