/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Calcule o IMC de uma pessoa por meio de um programa. Nele, você solicitará o peso
do usuário em quilogramas (ex.: 58.9) e sua altura em metros (ex.: 1.68). A partir
dessas informações, você calculará seu Índice de Massa Corporal (IMC Formula : Peso ÷ (Altura × Altura)), indicando
se seu índice é:
																	Lucas Adriano Pereira 29/06/2023
● Abaixo do peso (IMC < 18,5)
● Peso normal (IMC 18,5-24,9)
● Sobrepeso (IMC 25-29,9)
● Obeso (IMC >= 30).
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio5 {
	float imc = 0;

	public static void main(String[] args) {
		float peso = 0;
		float altura = 0;

		peso = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite o seu peso em quilogramas: (ex.: 58.9)"));
			while (peso <= 0 ) {
				JOptionPane.showMessageDialog(null,
						"Você informou o seu peso inválido. Informe de forma válida!!");
				peso = Float
						.parseFloat(JOptionPane.showInputDialog(null, "Digite o seu peso em quilogramas: (ex.: 58.9)"));
			}
		altura = Float.parseFloat(JOptionPane.showInputDialog(null, "Digite a sua altura em metros: (ex.: 1.68)"));
			while (altura <= 0 ) {
				JOptionPane.showMessageDialog(null,
						"Você informou a sua altura inválida. Informe de forma válida!!");
				altura = Float
						.parseFloat(JOptionPane.showInputDialog(null, "Digite a sua altura em metros: (ex.: 1.68)"));
			}
		
		float imc = peso / (altura * altura);

		System.out.println(imc);
		
		if (imc <= 18.49) {
			JOptionPane.showMessageDialog(null, "Você está abaixo do peso!");
		} else if (imc > 18.5 && imc <= 24.9) {
			JOptionPane.showMessageDialog(null, "Você está com o peso normal!");
		} else if (imc > 25 && imc <= 29.9) {
			JOptionPane.showMessageDialog(null, "Você está com sobrepeso!");
		} else if (imc >= 30) {
			JOptionPane.showMessageDialog(null, "Você está obeso!");
		}
	}

}
