 package Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import Model.Inventario;
import Model.Loja;
import View.EntradaSaida;

public class Controladora {
	
	Loja produto = new Loja();
	
	
	public void exibeMenu() {
		int opcoes=0;
		
		do {
			Date dataHoraAtual = new Date(); 
			String data = new SimpleDateFormat("dd/MM/yyyy").format(dataHoraAtual);
			String hora = new SimpleDateFormat("HH:mm:ss").format(dataHoraAtual);
			String dataAtual = "\n"+data +"\n"+hora+" "; 
			
			opcoes = EntradaSaida.solicitaOpcao();
			Inventario inventario = new Inventario();
			
			switch(opcoes) {
		
			case 0 ://Cadrastrar produto
				produto.cadastrar(inventario);
				
			break;
			
			case 1 ://Listar produtos cadastrados
				produto.gerarListaProdutosCadastrados();
			break;
			
			case 2 ://Dar entrada de um produto no estoque
				produto.adicionarEstoqueProduto(inventario);
			break;
			
			case 3 ://Vender um produto
				produto.vender();
			break;
			
			case 4 ://Listar produtos em estoque
				produto.gerarProdutosEstoque();
			break;	
			
			case 5 ://Ver todos os cupons gerados
				produto.gerarCupom(dataAtual);
			break;
			
			}
		}while(opcoes != 6);//encerrar programa
		
		EntradaSaida.exibeMsgEncerraPrograma();
		System.exit(0);
	}
}