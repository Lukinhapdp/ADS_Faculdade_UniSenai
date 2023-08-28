/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Escreva um programa que solicite ao usuário que digite um número de 1 a 7 e exiba
o dia da semana correspondente.														Lucas Adriano Pereira 04/07/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		int num = 0;

		num = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe um número de 1 a 7: "));

		switch (num) {

		case 1:
			JOptionPane.showMessageDialog(null, "Segunda Feira", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 2:
			JOptionPane.showMessageDialog(null, "Terça Feira", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 3:
			JOptionPane.showMessageDialog(null, "Quarta Feira", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 4:
			JOptionPane.showMessageDialog(null, "Quinta Feira", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 5:
			JOptionPane.showMessageDialog(null, "Sexta Feira", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 6:
			JOptionPane.showMessageDialog(null, "Sabado", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		case 7:
			JOptionPane.showMessageDialog(null, "Domingo", "O número " + num + " corresponde a:",
					JOptionPane.INFORMATION_MESSAGE);
		default:
			num = Integer.parseInt(JOptionPane.showInputDialog(null,
					"\"Você digitou um número errado, digite um válido\", \"Erro!!\""));
			break;
		}
	}
}