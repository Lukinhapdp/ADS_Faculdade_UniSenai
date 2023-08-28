/*//////////////////////////////////////////////////////////////////////////////////////////////
Peça um número real e exiba o mesmo arredondado para o inteiro.
Obs.: pesquise como funcionam os arredondamentos em Java.		Lucas Adriano Pereira 28/06/2023
*///////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {

		double num = Double.parseDouble(JOptionPane.showInputDialog(null,"Informe um número: "));

		JOptionPane.showMessageDialog(null,Math.round(num),"O numero " +num+ " arredondando é: ",JOptionPane.INFORMATION_MESSAGE);

		System.out.println("O numero " +num+ " arredondando é: "+Math.round(num));
	}

}
