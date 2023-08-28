/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Crie uma solução que peça um número inteiro de 1 a 12. Depois mostre o mês do
ano que esse número representa. 												Lucas Adriano Pereira 05/07/2023
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {

		int num = Integer
				.parseInt(JOptionPane.showInputDialog(null, "Digite o número que corresponda a um mês do ano:"));

		switch (num) {

		case 1:
			JOptionPane.showMessageDialog(null, "Janeiro");
			break;
		case 2:
			JOptionPane.showMessageDialog(null, "Fevereiro");
			break;
		case 3:
			JOptionPane.showMessageDialog(null, "Março");
			break;
		case 4:
			JOptionPane.showMessageDialog(null, "Abril");
			break;
		case 5:
			JOptionPane.showMessageDialog(null, "Maio");
			break;
		case 6:
			JOptionPane.showMessageDialog(null, "Junho");
			break;
		case 7:
			JOptionPane.showMessageDialog(null, "Julho");
			break;
		case 8:
			JOptionPane.showMessageDialog(null, "Agosto");
			break;
		case 9:
			JOptionPane.showMessageDialog(null, "Setembro");
			break;
		case 10:
			JOptionPane.showMessageDialog(null, "Outubro");
			break;
		case 11:
			JOptionPane.showMessageDialog(null, "Novembro");
			break;
		case 12:
			JOptionPane.showMessageDialog(null, "Dezembro");
			break;
		default:
			JOptionPane.showMessageDialog(null, "Erro!! Opção inválida!!");
			break;
		}
	}
}
