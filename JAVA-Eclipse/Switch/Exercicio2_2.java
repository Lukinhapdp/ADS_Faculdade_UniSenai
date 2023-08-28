/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Solicite que o usuário informe uma letra do alfabeto. Posteriormente, verifique se
essa letra é uma vogal, uma consoante ou um caractere inválido.						Lucas Adriano Pereira 05/07/2023
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio2_2 {

	public static void main(String[] args) {

		int escolha = 0;

		String letra = JOptionPane.showInputDialog(null,
				"Digite uma letra para sabermos se ela é vogal ou consoante!!");
		while(letra.length() > 1) {
			 letra = JOptionPane.showInputDialog(null,
					"Você digitou mais que um caracter!! Digite uma letra para sabermos se ela é vogal ou consoante!!");
		}

		// JOptionPane.showMessageDialog(null, "Vogal","A letra ("+letra+")
		// é:",JOptionPane.INFORMATION_MESSAGE);

		if (letra.equalsIgnoreCase("a") || letra.equalsIgnoreCase("e") || letra.equalsIgnoreCase("i")
				|| letra.equalsIgnoreCase("o") || letra.equalsIgnoreCase("u")) {
			escolha = 1;

		} else if (Character.isDigit(letra.charAt(escolha))) {
			escolha = 2;

		} else if (Character.isWhitespace(letra.charAt(escolha))) {
			escolha = 3;
		
		} else if (!Character.isLetter(letra.charAt(escolha))) {
			escolha = 4;
		
		} else {
			escolha = 5;
		}

		switch (escolha) {

		case 1:
			JOptionPane.showMessageDialog(null, "Vogal", "A letra (" + letra + ") é:", JOptionPane.INFORMATION_MESSAGE);
			break;

		case 2:
			JOptionPane.showMessageDialog(null, "Número", "O caracter (" + letra + ") é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		
		case 3:
			JOptionPane.showMessageDialog(null, "Espaço em branco", "O caracter (" + letra + ") é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		
		case 4:
			JOptionPane.showMessageDialog(null, "Simbolo", "O caracter (" + letra + ") é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;

		case 5:
			JOptionPane.showMessageDialog(null, "Consoante", "A letra (" + letra + ") é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		}
	}

}
