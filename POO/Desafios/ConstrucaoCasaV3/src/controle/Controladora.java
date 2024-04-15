package controle;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import visualizacao.EntradaSaida;
import modelo.*;

public class Controladora {

	private Casa casa = null;
	
	public void exibeMenu() {
		int cont=0;
		int opcao;
		
		do {
			cont++;
			if(cont ==1) {
				opcao =0;
			
			}else {
				opcao = EntradaSaida.solicitaOpcao();
			}
			switch(opcao) {
			
			case 0: 
				this.casa = new Casa();
				
				String descricao = EntradaSaida.solicitaDescricao("casa",0);
				String cor = EntradaSaida.solicitaCor();
				int qtdePortas = EntradaSaida.solicitaQtdeAberturas("portas");
				int qtdeJanelas = EntradaSaida.solicitaQtdeAberturas("janelas");
				
				ArrayList<Aberturas> listaDePortas = new ArrayList<Aberturas>();
				
				for(int i = 0; i<qtdePortas; i++) {
					Portas porta = new Portas();
					porta.setDescricao(EntradaSaida.solicitaDescricao("porta", (i+i)));
					porta.setEstado(EntradaSaida.solicitaEstado("porta"));
					listaDePortas.add(porta);
				}
				ArrayList<Aberturas> listaDeJanelas = new ArrayList<Aberturas>();
				
				for(int i = 0; i<qtdeJanelas; i++) {
					Janelas janela = new Janelas();
					janela.setDescricao(EntradaSaida.solicitaDescricao("janela", (i+i)));
					janela.setEstado(EntradaSaida.solicitaEstado("janela"));
					listaDePortas.add(janela);
				}
				
				JOptionPane.showMessageDialog(null , "Construir casa");	
				this.casa.constroiCasa(descricao, cor, listaDePortas,listaDeJanelas);
				
				System.out.println("Descrição da casa: " + casa.getDescricao()+"\n");
				System.out.println("cor da casa: " + casa.getCor()+"\n");
				
				for(Aberturas porta : casa.getListaDePortas()) {
					System.out.println("Descrição da porta: " + porta.getDescricao()+"\n");
					System.out.println("Estado da porta: " + porta.getEstado()+"\n");
				}
				
				for(Aberturas janela : casa.getListaDeJanelas()) {	
					System.out.println("Descrição da janela: " + janela.getDescricao()+"\n");
					System.out.println("Estado da janela: " + janela.getEstado()+"\n");				
				}
				
			break;
			
			case 1: 
				String tipoAbertura = EntradaSaida.solicitaTipoAbertura();
				
				ArrayList<Aberturas> listaDeAberturas = new ArrayList<Aberturas>();
				
				if(tipoAbertura.equals("porta")) {
					listaDeAberturas = this.casa.getListaDePortas();
				} else {
					listaDeAberturas = this.casa.getListaDeJanelas();
				}
				
				int posicao = EntradaSaida.solicitaAberturaMover(listaDeAberturas);
				int novoEstado = 0;
				
				if(posicao !=-1) {
					novoEstado = EntradaSaida.solicitaEstado(tipoAbertura);
					Aberturas abertura = this.casa.retornaAbertura(posicao, tipoAbertura);
					this.casa.moverAbertura(abertura,novoEstado);
					System.out.println("Novo estado da " +tipoAbertura+ ": "+abertura.getEstado());
				} else {
					EntradaSaida.exibeMsgAbertura();
				}
				
			break;
			
			case 2: 
				String informacoes = this.casa.geraInfoCasa();
				EntradaSaida.exibeInfoCasa(informacoes);
			break;
			
			}
		}while(opcao != 3);
	
		EntradaSaida.exibeMsgEncerraPrograma();
		
		System.exit(0);
	}
}
