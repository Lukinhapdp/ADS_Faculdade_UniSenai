/*//////////////////////////////////////////////////////////////////////////////////////////////////////////
Prepare um código que solicita ao usuário dois números inteiros e exibe a soma, a
subtração, a multiplicação e a divisão desses números.					//Lucas Adriano Pereira 26/06/2023
*///////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		//entrada	
		int num1 = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe o primeiro número: "));
		int num2 = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe o segundo número: "));
		
		JOptionPane.showMessageDialog(null, num1 + " + "+ num2+ " = "+(num1 + num2), "Soma", JOptionPane.INFORMATION_MESSAGE);
		JOptionPane.showMessageDialog(null, num1 + " - "+ num2+ " = "+(num1 - num2), "Subtração", JOptionPane.INFORMATION_MESSAGE);
		JOptionPane.showMessageDialog(null, num1 + " / "+ num2+ " = "+(num1 / num2), "Divisão", JOptionPane.INFORMATION_MESSAGE);
		JOptionPane.showMessageDialog(null, num1 + " * "+ num2+ " = "+(num1 * num2), "Multiplicação", JOptionPane.INFORMATION_MESSAGE);

	}

}
