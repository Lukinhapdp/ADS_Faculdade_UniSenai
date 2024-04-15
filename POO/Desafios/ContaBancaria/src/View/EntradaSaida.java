package View;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import Model.Movimentacao;

public class EntradaSaida {
	
	Movimentacao movimentar = new Movimentacao();
	
	public static int solicitaOpcao() {
		
		String[] opcoes = {"Abrir uma conta","Depositar","Sacar", "Exibir os dados da conta", "Exibir o saldo" , "Exibir o extrato completo" 
				, "Exibir extrato de saques" , "Exibir extrato de depositos","Finalizar o programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(null,menu,"Selecione a opção desejada",JOptionPane.OK_CANCEL_OPTION);
	
		return menu.getSelectedIndex();	
	}
	
	public static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);
		
		return informacao;
	}
	
	public static int solicitaTipo() {
		String[] qualTipo= {"Conta Corrente","Conta Poupança"};
		
		JComboBox<String> menu = new JComboBox<String>(qualTipo);
		JOptionPane.showConfirmDialog(null,menu,"Selecione o tipo de conta",JOptionPane.OK_CANCEL_OPTION);
	
		return menu.getSelectedIndex();	
	}

	public static double solicitarInformacoesDeposito() {
		double valorDeposito = Double.parseDouble(JOptionPane.showInputDialog("Informe o valor do depósito:"));
		
		return valorDeposito;	
	}
	public static double solicitarInformacoesSaque(){
		double valorSaque = Double.parseDouble(JOptionPane.showInputDialog("Informe o valor do saque:"));
		
		return valorSaque;	
	}
	public static void exibirSaldo(String informacoes){
	
		JOptionPane.showMessageDialog(null,informacoes,"Informações do Saldo" ,JOptionPane.INFORMATION_MESSAGE);
		
	}
	public static void exibirDadosDaConta(String informacoesDaConta) { 	//- exibir nome do titular, tipo e saldo;
		JOptionPane.showMessageDialog(null,informacoesDaConta,"Informações da conta" ,JOptionPane.INFORMATION_MESSAGE);
	}
	
	public static void exibirExtratoCompleto(String extrato){
		JOptionPane.showMessageDialog(null,extrato,"Extrato Completo" ,JOptionPane.INFORMATION_MESSAGE);
		
	}
	public static void exibirExtratoDeDepositos(String extratoDeposito){
		JOptionPane.showMessageDialog(null,extratoDeposito,"Extrato Completo de depósitos" ,JOptionPane.INFORMATION_MESSAGE);
	}
	public static void exibirExtratoDeSaques(String extratoSaque){
		JOptionPane.showMessageDialog(null,extratoSaque,"Extrato Completo de saques" ,JOptionPane.INFORMATION_MESSAGE);
	}
	public static void exibeMsgEncerraPrograma() {
		JOptionPane.showMessageDialog(null,"O programa será encerrado");
	}
	public static void mensagemContaNegativa(String mensagemImpossivelSacar) {
		JOptionPane.showMessageDialog(null,mensagemImpossivelSacar,"Erro!!",JOptionPane.INFORMATION_MESSAGE);
	}
}
