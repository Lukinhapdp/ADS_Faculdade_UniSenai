package visualizacao;
import javax.swing.JOptionPane;

public class EntradaSaida {

	public static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);

		return informacao;
	}
	public static void mostrarInformacao(String modelo, String cor, String ano,String qualCarro) {
		
		JOptionPane.showMessageDialog(null, "Modelo: " + modelo + "\nCor: " + cor + "\nAno: " + ano + "\n" +qualCarro);
	}	
}