/*/////////////////////////////////////////////////////////////////////////////////////////////////////////
Peça ao usuário um número inteiro e exiba sua tabuada de 1 a 10.	Lucas Adriano Pereira 28/06/2023
*//////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {

		int num = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe um número: "));
		for(int i=0; i<11; i++) {
			System.out.println(num + " x "+ i+ " = "+(num * i));
		}
	}
}
