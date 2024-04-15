package Controller;
import Model.Carro;
import Model.Fabrica;
import View.EntradaSaida;

public class Controladora {
	
	Fabrica fabrica = new Fabrica();
	
	public void exibeMenu() {
		int cont = 0;
		int opcoes;
		int qntdCarros=0;
		do {
			cont++;
			
			if(cont==1) {
				opcoes = 0;
			}else {
				opcoes = EntradaSaida.solicitaOpcao();
			}
			switch(opcoes) {
			
			case 0: 
				qntdCarros = EntradaSaida.solicitaQntdCarros();
				for(int i=0; i<qntdCarros; i++) {
					Carro carro = new Carro();
					carro.setModelo(EntradaSaida.solicitaInformacao("Informe o modelo do " + (i+1) + "º carro:"));
					carro.setCor(EntradaSaida.solicitaInformacao("Informe a cor do " + (i+1) + "º carro:"));
					fabrica.fabricarCarro(carro);
				}
			break;
				
			case 1:
				fabrica.venderCarro();
			break;
					
			case 2:
				String informacoes = this.fabrica.gerarInformacoes();
				EntradaSaida.exibeInfoCarro(informacoes);
			break;	
				
			}
		}while(opcoes != 3);
		EntradaSaida.exibeMsgEncerraPrograma();
		
		System.exit(0);
	}

}