package Controller;

import Model.Chocolate;
import Model.Fabrica;
import View.EntradaSaida;

public class Controladora {
	
	Fabrica chocolate = new Fabrica();
	
	public void exibeMenu() {
		int opcoes=0;
		
		do {
			
			opcoes = EntradaSaida.solicitaOpcao();
			Chocolate inventario = new Chocolate();
			
			switch(opcoes) {
		
			case 0 ://Cadrastrar produto
				chocolate.cadastrar(inventario);	
			break;
			
			case 1 ://Listar produtos cadastrados
				chocolate.gerarListaProdutosCadastrados();
			break;
			
			case 2 ://Dar entrada de um produto no estoque
				chocolate.adicionarEstoqueProduto();
			break;
			
			case 3 ://Vender um produto
				chocolate.vender();
			break;
			
			}
		}while(opcoes != 4);//encerrar programa
		
		EntradaSaida.exibeMsgEncerraPrograma();
		System.exit(0);
	}
}