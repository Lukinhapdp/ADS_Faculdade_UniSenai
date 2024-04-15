import javax.swing.JOptionPane;

public class EntradaSaida {

	static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);

		return informacao;
	}
	static void mostrarInformacao(CarroBase escolherModelo, CarroBase escolherCor, Carro escolherAno,String qualCarro) {
		
		JOptionPane.showMessageDialog(null, "Modelo: " + escolherModelo + "\nCor: " + escolherCor + "\nAno: " + escolherAno + "\n" +qualCarro);
	}	
}