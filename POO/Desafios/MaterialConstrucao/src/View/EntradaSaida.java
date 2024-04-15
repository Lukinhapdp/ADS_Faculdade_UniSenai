package View;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {

	public static int solicitaOpcao() {

		String[] opcoes = { "Cadastrar produto", "Listar produtos cadastrados", "Dar entrada de um produto no estoque",
				"Vender um produto", "Listar produtos em estoque", "Ver todos os cupons gerados", "Sair do programa" };
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

		return menu.getSelectedIndex();
	}

	public static String solicitarDescricaoProduto() {
		String descricao = JOptionPane.showInputDialog("Informe a descrição do produto:");
		
		return descricao;
	}

	public static int solicitarCodigoProduto() {
		int codigo = Integer.parseInt(JOptionPane.showInputDialog("Informe o código do produto:"));
		
		return codigo;
	}

	public static int solicitarQuantidadeEstoqueProduto() {
		int qntdEstoque = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade do produto:"));
		
		return qntdEstoque;
	}

	public static int solicitarPrecoProduto() {
		int preco = Integer.parseInt(JOptionPane.showInputDialog("Informe o preço do produto:"));
		
		return preco;
	}
	
	public static int solicitarQuantidadeVenda() {
		int venda = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade vendida:"));
		
		return venda;
	}

	public static String exibirProdutosCadastrados(String listaCadastrados) {
		JOptionPane.showMessageDialog(null,listaCadastrados,"Todos os produtos cadastrados" ,JOptionPane.INFORMATION_MESSAGE);
		return listaCadastrados;
	}

	public static String exibirProdutosComEstoque(String listaComEstoque) {
		JOptionPane.showMessageDialog(null,listaComEstoque,"Produtos com estoque" ,JOptionPane.INFORMATION_MESSAGE);
		return listaComEstoque;
	}

	public static String exibirTodosCupons(String listaTodosCupons) {
		JOptionPane.showMessageDialog(null,listaTodosCupons,"Todos os cupons de venda" ,JOptionPane.INFORMATION_MESSAGE);
		return listaTodosCupons;
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
}
