/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Escreva um programa que receba quatro notas do aluno e as insira em um vetor.
Depois, calcule a média aritmética entre as quatro notas e mostre o "conceito" do
aluno conforme as instruções:
• 9.0 ou maior = Conceito A
• entre 8.0 e 8.9 = Conceito B														//Lucas Adriano Pereira 29/08/2023
• entre 7.0 e 7.9 = Conceito C
• menor que 7.0 = Conceito D
Não esqueça de validar os valores de entrada.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {

		Double[] notas = new Double[4];
		Double soma = 0.0, media = 0.0;

		for (int i = 0; i < notas.length; i++) {
			notas[i] = Double.parseDouble(JOptionPane.showInputDialog("Digite a " + (i + 1) + "ª nota do aluno:"));
			while (notas[i] < 0 || notas[i] > 10) {
				notas[i] = Double.parseDouble(JOptionPane.showInputDialog(null,
						"Digite a " + (i + 1) + "ª nota do aluno:", "Erro", JOptionPane.INFORMATION_MESSAGE));
			}
			soma += notas[i];
		}
		media = soma / notas.length;

		if (media >= 9.0) {
			JOptionPane.showMessageDialog(null, "Sua média foi: " + media + " e o conceito é: A");
		} else if (media >= 8.0 && media <= 8.9) {
			JOptionPane.showMessageDialog(null, "Sua média foi: " + media + " e o conceito é: B");
		} else if (media >= 7.0 && media <= 7.9) {
			JOptionPane.showMessageDialog(null, "Sua média foi: " + media + " e o conceito é: C");
		} else {
			JOptionPane.showMessageDialog(null, "Sua média foi: " + media + " e o conceito é: D");
		}
	}
}
