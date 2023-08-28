/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Peça ao usuário um número de 1 a 7. Ao final, seu programa indicará a qual dia da
semana esse número corresponde.														Lucas Adriano Pereira 29/06/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {	
		int num = 0;
			
		num = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe um número de 1 a 7: "));
		
		while (num > 7 || num < 1) {
			num = Integer.parseInt(JOptionPane.showInputDialog(null,
					"Você digitou um número errado, digite um válido", "Erro!!",JOptionPane.INFORMATION_MESSAGE));
		}
			
			if (num == 1) {
				JOptionPane.showMessageDialog(null, "Segunda Feira", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 2) {
				JOptionPane.showMessageDialog(null, "Terça Feira", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 3) {
				JOptionPane.showMessageDialog(null, "Quarta Feira", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 4) {
				JOptionPane.showMessageDialog(null, "Quinta Feira", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 5) {
				JOptionPane.showMessageDialog(null, "Sexta Feira", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 6) {
				JOptionPane.showMessageDialog(null, "Sabado", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);

			} else if (num == 7) {
				JOptionPane.showMessageDialog(null, "Domingo", "O número " + num + " corresponde a:",
						JOptionPane.INFORMATION_MESSAGE);
			}
	}
}
