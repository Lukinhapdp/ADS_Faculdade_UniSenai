/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Agora, prepare seu código para que ele receba 3 notas, calcule a média aritmética e
verifique se o aluno foi aprovado, está em recuperação ou está reprovado (use as
regras do Desafio 1). 																Lucas Adriano Pereira 29/06/2023
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		float media = 0;
		float[] nota = new float[3];

		for (int i = 0; i < 3; i++) {
			nota[i] = Float
					.parseFloat(JOptionPane.showInputDialog(null, "Qual nota você tirou na " + (i + 1) + "ª prova?"));

			if (nota[i] > 10 || nota[i] < 0) {
				while (nota[i] > 10 || nota[i] < 0) {
					nota[i] = Float.parseFloat(JOptionPane.showInputDialog(null,
							"Você digitou alguma nota inválida, digite uma nota valida!!"));
				}
			}
			media = media + nota[i];
		}

		media /= 3;
		System.out.println(media);

		if (media >= 7 && media <= 10) {
			JOptionPane.showMessageDialog(null, "Você foi aprovado!!!");

		} else if (media < 7 && media >= 5) {
			JOptionPane.showMessageDialog(null, "Você está em recuperação!!!");

		} else if (media < 6 && media >= 0) {
			JOptionPane.showMessageDialog(null, "Você foi reprovado!!!");
		}
	}
}
