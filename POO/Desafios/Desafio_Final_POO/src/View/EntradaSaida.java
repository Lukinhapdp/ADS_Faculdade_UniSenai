package View;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {

	public static int solicitaOpcao() {

		String[] opcoes = { "Cadastrar chocolate", "Listar produtos cadastrados", "Dar entrada de um produto no estoque",
				"Vender um produto", "Sair do programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

		return menu.getSelectedIndex();
	}

	public static String solicitarTipoChocolate() {
		String tipoChocolate = JOptionPane.showInputDialog("Informe o tipo do chocolate: (Branco/Preto)");
		
		return tipoChocolate;
	}

	public static double solicitarQuantidadeCacau() {
		double cacau = Double.parseDouble(JOptionPane.showInputDialog("Informe a quantidade em Kg de cacau:"));
		
		return cacau;
	}

	public static double solicitarQuantidadeAcucar() {
		double acucar = Double.parseDouble(JOptionPane.showInputDialog("Informe a quantidade em Kg de açucar:"));
		
		return acucar;
	}

	public static double solicitarQuantidadeGordura() {
		double gordura = Double.parseDouble(JOptionPane.showInputDialog("Informe a quantidade em Kg de gordura:"));
		
		return gordura;
	}
	
	public static int solicitarQuantidadeVenda() {
		int venda = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade vendida:"));
		
		return venda;
	}

	public static String exibirProdutosCadastrados(String listaCadastrados) {
		JOptionPane.showMessageDialog(null,listaCadastrados,"Todos os produtos cadastrados" ,JOptionPane.INFORMATION_MESSAGE);
		return listaCadastrados;
	}


	public static void exibeMsgEncerraPrograma() {
		JOptionPane.showMessageDialog(null, "O programa será encerrado");
	}
	
	public static void mensagemErroSemCadastro() {
		JOptionPane.showMessageDialog(null, "Não existe produtos cadastrados!!");
	}
	public static void mensagemErroSemVendas() {
		JOptionPane.showMessageDialog(null, "Não existe registro de vendas!!");
	}
	
	public static String solicitaInformacao(String titulo) {
		String informacao = JOptionPane.showInputDialog(titulo);
		
		return informacao;
	}
	
	public static void mostrarMensagemSemEstoque() {
		JOptionPane.showMessageDialog(null, "O produto está sem estoque!!");
	}
	
	public static void mostrarMensagem2SemEstoque() {
		JOptionPane.showMessageDialog(null, "A quantidade informada é menor que o estoque real!!");
	}

	public static void mostrarMensagemErro() {
		JOptionPane.showMessageDialog(null, "O código informado não existe!!");
	}

	public static void mensagemErroSemEstoque() {
		JOptionPane.showMessageDialog(null, "Não existem produtos em estoque!!");
	}

	public static double solicitarPrecoProduto() {
		double preco = Double.parseDouble(JOptionPane.showInputDialog("Informe o preço do produto:"));
		
		return preco;
	}

	public static int solicitarCodigoProduto() {
		int codigo = Integer.parseInt(JOptionPane.showInputDialog("Informe o código do produto:"));
		
		return codigo;
	}

	public static int solicitarQuantidadeEstoqueProduto() {
		int addEstoque = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade que deseja adicionar em estoque:"));
		
		return addEstoque;
	}
}
