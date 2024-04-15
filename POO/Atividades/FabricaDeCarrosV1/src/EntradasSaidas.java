import javax.swing.JOptionPane;

public class EntradasSaidas {

	static String solicitaModelo() {

		String modelo = JOptionPane.showInputDialog("Informe o modelo do carro:");

		return modelo;
	}

	static String solicitaCor() {

		String cor = JOptionPane.showInputDialog("Informe a cor do carro: \n(1) Preto \n(2) Branco \n(3) Prata");

		return cor;
	}

	static void mostrarInformacao(String modelo, String cor) {

		JOptionPane.showMessageDialog(null, "Modelo: " + modelo + " Cor: " + cor);

	}

}
