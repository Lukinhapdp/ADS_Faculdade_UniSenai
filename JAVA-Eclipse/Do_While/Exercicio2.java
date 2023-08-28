/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você deverá desenvolver um algoritmo que solicite a idade, o gênero e o salário de
um grupo de pessoas. Para encerrar o programa, o usuário deve digitar "Finalizar".
Certifique-se de validar para que o usuário digite exatamente "Finalizar". Ao término
da execução do programa, será apresentado ao usuário as seguintes informações:
● A média de idade geral;																//Lucas Adriano Pereira 01/08/2023
● A média de idade de pessoas do gênero feminino;
● A média de idade de pessoas do gênero masculino;
● A média salarial geral;
● A média salarial do gênero feminino;
● A média salarial do gênero masculino.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Do_While;

import java.text.DecimalFormat;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {

		int cont = 0, contMasc = 0, contFemi = 0;
		boolean continuar = false;
		int mediaIdadeGeral = 0, mediaIdadeMasc = 0, mediaIdadeFemi = 0, mediaSalarioGeral = 0, mediaSalarioMasc = 0,
				mediaSalarioFemi = 0;
		double maiorSalario = 0, menorSalario = 0, salario = 0;
		DecimalFormat df =new DecimalFormat("0.00");

		do {
			cont++;
			int idade = Integer.parseInt(JOptionPane.showInputDialog("Informe a sua idade:"));
			while (idade <= 0) {
				idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a sua idade:", "Erro!!",
						JOptionPane.INFORMATION_MESSAGE));
			}
			mediaIdadeGeral += idade;
			int genero = Integer.parseInt(
					JOptionPane.showInputDialog(null, "Informe o seu/sua genero:\n(1) Masculino \n(2) Feminino \n"));

			while (genero != 1 && genero != 2) {
				genero = Integer.parseInt(JOptionPane.showInputDialog(null,
						"Informe o seu/sua genero:\\n(1) Masculino \\n(2) Feminino", "Erro!!"));
			}

			salario = Double.parseDouble(JOptionPane.showInputDialog("Informe o seu sálario:"));

			mediaSalarioGeral += salario;
			if (salario > maiorSalario) {
				maiorSalario = salario;

			} else if (salario < menorSalario) {
				menorSalario = salario;
			}

			while (salario < 0) {
				salario = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe o seu sálario:", "Erro!!"));
			}
			if (genero == 1) {
				contMasc++;
				mediaSalarioMasc += salario;
				mediaIdadeMasc += idade;


			} else if (genero == 2) {
				contFemi++;
				mediaSalarioFemi += salario;
				mediaIdadeFemi += idade;

			}
			String resposta = JOptionPane.showInputDialog("Deseja continuar? (s) para sim / (finalizar) para não");

			while (!resposta.equalsIgnoreCase("finalizar") && !resposta.equalsIgnoreCase("s")) {
				resposta = JOptionPane.showInputDialog(null, "Deseja continuar? (s) para sim / (finalizar) para não",
						"Erro!!");
			}
			if (resposta.equalsIgnoreCase("finalizar")) {
				continuar = true;
			} else if (resposta.equalsIgnoreCase("s")) {
				continuar = false;
			}

		} while (!continuar);

		if (contMasc == 0) {
			mediaIdadeMasc = 0;
			mediaSalarioMasc = 0;
		} else {
			mediaIdadeMasc /= contMasc;
			mediaSalarioMasc /= contMasc;
		}
		
		if (contFemi == 0) {
			mediaIdadeFemi = 0;
			mediaSalarioFemi = 0;
		} else {
			mediaSalarioFemi /= contFemi;
			mediaIdadeFemi /= contFemi;
		}
		
		mediaIdadeGeral /= cont;
		mediaSalarioGeral /= cont;

		JOptionPane.showMessageDialog(null,
				"Media de idade geral: " + mediaIdadeGeral + "\nMedia de idade feminina: " + mediaIdadeFemi
						+ "\nMedia de idade masculino: " + mediaIdadeMasc + "\nMedia salarial geral: R$"
						+  df.format(mediaSalarioGeral) + "\nMedia de salario masculino: R$" +  df.format(mediaSalarioMasc)
						+ "\nMedia de salario feminina: R$" + df.format(mediaSalarioFemi));
	}
}
