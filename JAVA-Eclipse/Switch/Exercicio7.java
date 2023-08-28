/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Desenvolva um programa que permita calcular o imposto de renda de uma pessoa. O
usuário informa o valor do salário bruto mensal e o programa deve calcular o valor do
imposto de acordo com a seguinte tabela:
● Salário até R$1.903,98: isento de imposto
● Salário de R$1.903,99 até R$2.826,65: 7,5% de imposto
● Salário de R$2.826,66 até R$3.751,05: 15% de imposto									//Lucas Adriano Pereira 24/07/2003
● Salário de R$3.751,06 até R$4.664,68: 22,5% de imposto
● Salário acima de R$4.664,68: 27,5% de imposto
Calcule o valor do imposto de acordo com o salário informado pelo usuário e exiba o
resultado. Lembre-se de que o valor do imposto deve ser calculado apenas sobre a
diferença entre o salário e o limite inferior de cada faixa de imposto. Por exemplo, se
o salário for R$2.000,00, o valor do imposto será 7,5% sobre R$96,01 (R$2.000,00 -
R$1.903,99). Caso o valor do imposto seja igual a zero, exiba a mensagem "Isento de
imposto". Caso contrário, exiba o valor do imposto calculado. 
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {

		double desconto=0;
		int imposto = 0;

		Double salario = Double
				.parseDouble(JOptionPane.showInputDialog(null, "Informe o salario bruto do mês de Janeiro?"));

		if (salario < 1903.98 && salario > 0) {
			imposto = 1;
		} else if (salario > 1903.98 && salario < 2826.65) {
			imposto = 2;
		} else if (salario > 2826.65 && salario < 3751.05) {
			imposto = 3;
		} else if (salario > 3751.05 && salario < 4664.68) {
			imposto = 4;
		} else if (salario > 4664.68) {
			imposto = 5;
		} else {
			imposto = 6;
		}

		switch (imposto) {

		case 1:
			JOptionPane.showMessageDialog(null, "O seu salario é de: R$" + salario + " e você está inzento de imposto!!");
			break;

		case 2:
			desconto = salario * 7.5/100;
			salario = salario - (salario * 7.5 / 100);
			JOptionPane.showMessageDialog(null,
					"O seu salario é de: R$" + salario + " e foi descontado 7,5% de imposto e foi descontado: R$"+desconto);
			break;

		case 3:
			desconto = salario * 15/100;
			salario = salario - (salario * 15 / 100);
			JOptionPane.showMessageDialog(null,
					"O seu salario é de: R$" + salario + " e foi descontado 15% de imposto e foi descontado: R$"+desconto);
			break;

		case 4:
			desconto = salario * 22.5/100;
			salario = salario - (salario * 22.5 / 100);
			JOptionPane.showMessageDialog(null,
					"O seu salario é de: R$" + salario + " e foi descontado 22,5% de imposto e foi descontado: R$"+desconto);
			break;

		case 5:
			desconto = salario * 27.5/100;
			salario = salario - (salario * 27.5 / 100);
			JOptionPane.showMessageDialog(null,
					"O seu salario é de: R$" + salario + " e foi descontado 27,5% de imposto e foi descontado: R$"+desconto);
			break;

		case 6:
			JOptionPane.showMessageDialog(null, "Erro!!!");
			break;
		}
	}

}
