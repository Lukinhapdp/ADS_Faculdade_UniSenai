/*///////////////////////////////////////////////////////////////////////////////////////////////////////////
Solicite ao usuário uma palavra e exibe o número de caracteres da palavra.
Obs.: pesquise como se faz a contagem de caracteres de um texto em Java. 	Lucas Adriano Pereira 28/06/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio8 {

	public static void main(String[] args) {

		String word = JOptionPane.showInputDialog(null,"Informe uma palavra ou frase: ");
	
		int stringLenght = word.length();
	
		JOptionPane.showMessageDialog(null,stringLenght+" caracteres.", "A sua palavra ou frase possui:",JOptionPane.INFORMATION_MESSAGE);
	}

}
