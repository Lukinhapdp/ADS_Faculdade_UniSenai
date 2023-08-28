/*/////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa uma solução que peça ao usuário sua idade e verifique se ele é:
● Uma criança, com idade abaixo de 18 anos;
● Um jovem, com idade entre 18 e 30 anos;
● Um adulto, com idade entre 30 e 59 anos;			Lucas Adriano Pereira 29/06/2023
● Um idoso, com idade a partir de 60 anos.
*///////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {
		int idade = 0;

		idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a idade do usuario: "));

		if (idade <= 0) {
			while(idade <= 0) {
				idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a idade do usuario:","Erro!!",JOptionPane.INFORMATION_MESSAGE));
			}
		}
		if (idade > 0 && idade < 18) {
			JOptionPane.showMessageDialog(null, "Criança", "Essa pessoa é:", JOptionPane.INFORMATION_MESSAGE);
		}
		if (idade >= 18 && idade <= 30) {
			JOptionPane.showMessageDialog(null, "Jovem", "Essa pessoa é:", JOptionPane.INFORMATION_MESSAGE);
		}
		if (idade >= 31 && idade <= 59) {
			JOptionPane.showMessageDialog(null, "Adulto", "Essa pessoa é:", JOptionPane.INFORMATION_MESSAGE);
		}
		if (idade >= 60 && idade < 150) {
			JOptionPane.showMessageDialog(null, "Idoso", "Essa pessoa é:", JOptionPane.INFORMATION_MESSAGE);
		}else {
			JOptionPane.showMessageDialog(null, "Invalida", "Essa pessoa é:", JOptionPane.INFORMATION_MESSAGE);
		}

	}
}
