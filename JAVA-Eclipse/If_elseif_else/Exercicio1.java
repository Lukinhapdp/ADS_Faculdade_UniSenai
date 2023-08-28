/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um código capaz de solicitar ao usuário uma nota de 0 a 10. Se ele tirou: a
partir de 7, está aprovado; entre 5 e 6, está em recuperação; abaixo de 5, está			Lucas Adriano Pereira 28/06/2023
reprovado.
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		// boolean notaTrue = false;
		double nota;

		nota = Float.parseFloat(JOptionPane.showInputDialog(null, "Qual nota você tirou? "));

		while (nota < 0 || nota > 10) {

			nota = Float
					.parseFloat(JOptionPane.showInputDialog(null, "Qual nota você tirou, Digite uma nota valida? "));
		}
		if (nota >= 7 && nota <= 10) {
			JOptionPane.showMessageDialog(null, "Você foi aprovado!!!");
		} else if (nota < 7 && nota >= 5) {
			JOptionPane.showMessageDialog(null, "Você está em recuperação!!!");
		} else {
			JOptionPane.showMessageDialog(null, "Você foi reprovado!!!");
		}
	}
}
