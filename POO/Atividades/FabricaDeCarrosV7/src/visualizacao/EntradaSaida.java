package visualizacao;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {

public static int solicitaOpcoes() {
		
		String[] listaOpcoes = {"Construir Carro","Listar Carros", "Sair do programa"};
		JComboBox<String> aMenu = new JComboBox<String>(listaOpcoes);
		JOptionPane.showConfirmDialog(null,aMenu,"Selecione a opção desejada",JOptionPane.OK_CANCEL_OPTION);
		
		return aMenu.getSelectedIndex();
	}
	public static void exibeMsgEncerraPrograma() {
		JOptionPane.showMessageDialog(null,"O programa será encerrado");
	}
	
	public static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);

		return informacao;
	}
	public static void mostrarInformacao(String modelo, String cor, String ano,String qualCarro) {
		JOptionPane.showMessageDialog(null, "Modelo: " + modelo + "\nCor: " + cor + "\nAno: " + ano + "\n" +qualCarro);
	}	
	public static void mostrarCarro(String qualCarro) {
		String frase = qualCarro+"\n";
		JOptionPane.showMessageDialog(null, frase);
	}
}