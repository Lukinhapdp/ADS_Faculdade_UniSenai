/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Primeiramente, peça uma medida em metros ao usuário. Depois, pergunte para qual unidade de medida ele deseja converter:
centímetros, polegadas, pés ou quilômetros. Ao final, apresente o valor da conversão. 										Lucas Adrianp Pereira 12/07/2023
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {

		Double resultado = 0.0;

		Double num = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe uma medida em metros:"));
		
		int escolha = Integer
				.parseInt(JOptionPane.showInputDialog(null, "Informe em qual unidade de medida deseja converter:"
						+ "\n(1) Centímetros" + "\n(2) Polegadas" + "\n(3) Pés" + "\n(4) Quilômetros"));
		while (escolha > 4 || escolha < 1) {
			escolha = Integer
					.parseInt(JOptionPane.showInputDialog(null, "Você informou uma opção inválida!!. Qual unidade de medida deseja converter:"
							+ "\n(1) Centímetros" + "\n(2) Polegadas" + "\n(3) Pés" + "\n(4) Quilômetros"));
		}

		switch (escolha) {

		case 1:
			resultado = num * 100;
			JOptionPane.showMessageDialog(null, resultado + " cm", "A converção em metros de " + num + " metros é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;

		case 2:
			resultado = num * 39.37;
			JOptionPane.showMessageDialog(null, resultado + " polegadas",
					"A converção em metros de " + num + " metros é:", JOptionPane.INFORMATION_MESSAGE);
			break;

		case 3:
			resultado = num * 3.281;
			JOptionPane.showMessageDialog(null, resultado + " pés", "A converção em metros de " + num + " metros é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;

		case 4:
			resultado = num / 1000;
			JOptionPane.showMessageDialog(null, resultado + " km", "A converção em metros de " + num + " metros é:",
					JOptionPane.INFORMATION_MESSAGE);
			break;
		}
	}
}
