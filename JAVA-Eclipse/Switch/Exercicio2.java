/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Crie um programa que peça para o usuário selecionar uma figura geométrica de sua
escolha:
● Círculo;
● Quadrado;																				Lucas Adriano Pereira 04/07/2023
● Retângulo;
● Triângulo.
Em seguida, peça os dados necessários para calcular e exibir a área da figura
selecionada. 
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		Double raio = 0.0, pi = 3.14, area = 0.0, lado = 0.0, base = 0.0, altura = 0.0;

		int num = Integer
				.parseInt(JOptionPane.showInputDialog(null, "Digite o número conforme a figura que deseja ver a área:"
						+ "\n(1) Círculo" + "\n(2) Quadrado" + "\n(3) Retângulo" + "\n(4) Triângulo"));

		switch (num) {

		case 1:
			raio = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe um raio do circulo:",
					"Você escolheu o Circulo!", JOptionPane.INFORMATION_MESSAGE));
			pi = 3.14;

			area = 2 * pi * raio * raio;

			JOptionPane.showMessageDialog(null, area, "A área do seu circulo é:", JOptionPane.INFORMATION_MESSAGE);
			break;

		case 2:
			lado = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe um lado do quadrado:",
					"Você escolheu o Quadrado!", JOptionPane.INFORMATION_MESSAGE));

			area = lado * lado;

			JOptionPane.showMessageDialog(null, area, "A área do seu quadrado é:", JOptionPane.INFORMATION_MESSAGE);
			break;
		case 3:
			base = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a base do retângulo:",
					"Você escolheu o Retângulo!", JOptionPane.INFORMATION_MESSAGE));
			
			altura = Double.parseDouble(JOptionPane.showInputDialog(null, "Agora informe a altura do retângulo:",
					"Base informada!", JOptionPane.INFORMATION_MESSAGE));

			area = base * altura;

			JOptionPane.showMessageDialog(null, area, "A área do seu retângulo é:", JOptionPane.INFORMATION_MESSAGE);
			break;
		case 4:
			base = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe a base do triângulo:",
					"Você escolheu o Triângulo!", JOptionPane.INFORMATION_MESSAGE));
			
			altura = Double.parseDouble(JOptionPane.showInputDialog(null, "Agora informe a altura do triângulo:",
					"Base informada!", JOptionPane.INFORMATION_MESSAGE));

			area = base * altura / 2;

			JOptionPane.showMessageDialog(null, area, "A área do seu triângulo é:", JOptionPane.INFORMATION_MESSAGE);
			break;
		default:
			JOptionPane.showMessageDialog(null, "Erro!!! Opção inválida");
			break;
		}
	}

}
