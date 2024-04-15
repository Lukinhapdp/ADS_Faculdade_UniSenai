package View;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {

public static int solicitaOpcao() {
		
		String[] opcoes = {"Construir carro","Vender carro","Ver informações do carro", "Sair do programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(null,menu,"Selecione a opção desejada",JOptionPane.OK_CANCEL_OPTION);
	
		return menu.getSelectedIndex();	
	}
	
	public static void exibeMsgEncerraPrograma() {
		JOptionPane.showMessageDialog(null,"O programa será encerrado");
	}
	
	public static int solicitaQntdCarros() {
		int qntdCarros = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe quantos carros deseja criar:"));
		return qntdCarros;
	}
	public static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);
		
		return informacao;
	}

	public static void exibeInfoCarro(String informacoes) {
		JOptionPane.showMessageDialog(null, informacoes,"Informações do carro",JOptionPane.INFORMATION_MESSAGE);
	}
}
