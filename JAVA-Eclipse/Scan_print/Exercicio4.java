/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Solicite ao usuário o nome, idade e altura (em metros). Ao final, mostre todas as
informações em uma única linha, de maneira organizada.								Lucas Adriano Pereira 28/06/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {
		
		String name = JOptionPane.showInputDialog(null, "Informe o seu nome:" );
		
		int age = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a sua idade:"));
		
		double height = Double.parseDouble(JOptionPane.showInputDialog(null,"Informe a sua altura em metros:"));
		
		JOptionPane.showMessageDialog(null,"Nome: " +name+ " Idade: "+age+" Altura: "+height,"Suas informações:",JOptionPane.INFORMATION_MESSAGE);
		 	
	}

}
