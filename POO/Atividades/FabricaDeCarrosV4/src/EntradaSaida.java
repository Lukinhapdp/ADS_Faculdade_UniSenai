import javax.swing.JOptionPane;

public class EntradaSaida {

	static String solicitaModelo() {

		String modelo = JOptionPane.showInputDialog("Informe o modelo do carro:");

		return modelo;
	}

	static String solicitaCor() {

		String cor = JOptionPane.showInputDialog("Informe a cor do carro:");

		return cor;
	}
	
	static void mostrarInformacao(String escolherModelo, String escolherCor) {

		JOptionPane.showMessageDialog(null, "Modelo: " + escolherModelo + " Cor: " + escolherCor);

	}
	
}