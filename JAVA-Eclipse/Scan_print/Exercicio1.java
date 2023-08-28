/*//////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa uma solução que solicite ao usuário seu nome e idade. Em seguida, exiba
uma saudação com o nome digitado e informe a idade dessa pessoa.					//Lucas Adriano Pereira 26/06/2023
*///////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		//entradas
		//JoptionPane classe, .showInputDialog metodo dessa classe
		String nome = JOptionPane.showInputDialog(null, "Insira o seu nome: ");
		int idade = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe a sua idade: "));
		//saidas	
		JOptionPane.showMessageDialog(null, nome, "O seu nome é: ", JOptionPane.INFORMATION_MESSAGE);
		JOptionPane.showMessageDialog(null, idade, "A sua idade é: ", JOptionPane.INFORMATION_MESSAGE);

	}

}
