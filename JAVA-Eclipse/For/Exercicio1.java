/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Solicite uma palavra ao usuário. Depois, apresente cada letra daquilo que ele
escreveu e conte quantos caracteres essa palavra tem.                             //Lucas Adriano Pereira 24/07/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package For;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {

		String palavra = JOptionPane.showInputDialog(null, "Escreva uma palavra:", JOptionPane.INFORMATION_MESSAGE);
		String mensagem = "";
		
		for (int i = 0; i < palavra.length(); i++) {
			mensagem = mensagem + palavra.charAt(i)+ "  ";
		}		
		JOptionPane.showMessageDialog(null,mensagem,"letras",
				JOptionPane.INFORMATION_MESSAGE);
	
		int quantidadeLetra = palavra.length();
		JOptionPane.showMessageDialog(null, quantidadeLetra + " letras!!", "A palavra: '" + palavra + "' tem:",
				JOptionPane.INFORMATION_MESSAGE);
	}
}
