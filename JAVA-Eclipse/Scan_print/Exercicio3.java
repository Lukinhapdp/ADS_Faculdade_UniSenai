/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa uma solução que solicita ao usuário um número inteiro e exibe se o número
é par ou ímpar.																		//Lucas Adriano Pereira 27/06/2023
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {
		
		int num = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe um número:" ));
		
		if(num%2==0) {
			JOptionPane.showMessageDialog(null, num," O numero par é:", JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, num, " numero impar é:", JOptionPane.INFORMATION_MESSAGE);

		}
	}

}
