import javax.swing.JOptionPane;

public class EntradaSaida {

	public static int solicitaOperacao() {

		int operacao = Integer.parseInt(JOptionPane.showInputDialog("Escolha a operação desejada: \n" + "1 - Soma "
				+ "\n2 - Subtração" + "\n3 - Multipçicação" + "\n4 - Divisão"));

		return operacao;
	}

	public static double solicitaNumero(String ordem) {

		double num = Double.parseDouble(JOptionPane.showInputDialog("Informe o " + ordem + " número"));

		return num;
	}

	public static void mostraResultado(double resultado, int operacao) {

		String op = "";
		if (operacao == 1) {
			op = "soma";
		} else if (operacao == 2) {
			op = "Subtração";
		} else if (operacao == 3) {
			op = "Multiplicação";
		} else {
			op = "Divisão";
		}
		JOptionPane.showMessageDialog(null, "O resultado da " + op + " é: " + resultado);
	}

}
