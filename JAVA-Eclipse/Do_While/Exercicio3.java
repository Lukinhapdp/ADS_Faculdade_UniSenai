/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
A prefeitura de "Araquachussets" planeja conduzir uma pesquisa entre seus cidadãos,
a fim de coletar informações sobre seus nomes, idades, salários e número de filhos.
Para alcançar esse objetivo, sugiro a criação de um formulário online, que possa ser
preenchido pelos moradores da cidade.
Uma vez que a pesquisa tenha sido concluída, podemos utilizar os dados coletados
para gerar algumas informações estatísticas relevantes, tais como:

● A média de salário da população, que pode ser calculada dividindo-se a soma
de todos os salários pelo número total de respondentes.									//Lucas Adriano Pereira 03/08/2023

● A média do número de filhos, que pode ser calculada dividindo-se a soma de
todos os filhos pelo número total de respondentes.

● O maior salário entre os habitantes, que pode ser identificado através da
comparação dos salários individuais.

● Uma lista com os nomes das pessoas cujo salário é inferior a R$ 1000,00. Essa
lista pode ser gerada filtrando-se os respondentes cujo salário é menor que
esse valor e extraindo seus nomes.

● A média de idade da população, que pode ser calculada da mesma forma que
a média de salário e a média de número de filhos.
Com essas informações em mãos, a prefeitura de "Araquachussets" poderá ter uma
melhor compreensão da situação econômica e demográfica de sua cidade, o que pode
ajudá-la a planejar políticas públicas mais eficazes.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Do_While;

import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {

		boolean continuar = false;
		int cont = 0,mediaIdade = 0, mediaFilhos = 0;
		double maiorSalario = 0, mediaSalario = 0; 
		ArrayList<String> lista = new ArrayList<String>();

		do {
			cont++;
			String nome = JOptionPane.showInputDialog(null,"Informe o nome do cidadão: ");

			int idade = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe a idade do cidadão: " + nome));
			
				while (idade < 1) {
					idade = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe a idade do cidadão: ","Erro!!",JOptionPane.INFORMATION_MESSAGE));
				}

			double salario = Double.parseDouble(JOptionPane.showInputDialog(null,"Informe o salario do cidadão: " + nome));
			
			if (salario < 1000) {
				lista.add(nome);
			}
			while (salario < 0) {
				salario = Double.parseDouble(JOptionPane.showInputDialog(null,"Informe o salario do cidadão: ","Erro!!",JOptionPane.INFORMATION_MESSAGE));
			}
			if (salario > maiorSalario) {
				maiorSalario = salario;
			}

			int filhos = Integer
					.parseInt(JOptionPane.showInputDialog(null,"Informe a quantidade de filhos do cidadão: " + nome));
			while (filhos < 0) {
				filhos = Integer
						.parseInt(JOptionPane.showInputDialog(null,"Informe a quantidade de filhos do cidadão: ","Erro!!",JOptionPane.INFORMATION_MESSAGE));
			}

			mediaIdade += idade;
			mediaSalario += salario;
			mediaFilhos += filhos;

			mediaIdade /= cont;
			mediaSalario /= cont;
			mediaFilhos /= cont;

			String resposta = JOptionPane.showInputDialog(null,"Deseja continuar? (s) para sim / (n) para não");
				
				while (!resposta.equalsIgnoreCase("s") && !resposta.equalsIgnoreCase("n")) {
					resposta = JOptionPane.showInputDialog(null, "Deseja continuar? (s) para sim / (n) para não",
							"Erro!!!",JOptionPane.INFORMATION_MESSAGE);
				}
				
				if (resposta.equalsIgnoreCase("s")) {
					continuar = false;
				} else {
					continuar = true;
				}

		} while (!continuar);

		
		JOptionPane.showMessageDialog(null, "Media de idade geral: " + mediaIdade + "\nMedia salarial geral: "
				+ mediaSalario + "\nMedia de filhos: " + mediaFilhos + "\nMaior salario: " + maiorSalario
				+ "\nLista de pessoas com salario menor que R$1000.00: " + lista);
	}

}
