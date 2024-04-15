package Controller;
import Model.Fabrica;
import View.EntradaSaida;

public class Controladora {
	
	Fabrica fabrica = new Fabrica();
	
	public void exibeMenu() {
		int cont = 0;
		int opcoes;
		int qntdCarros = EntradaSaida.solicitaQntdCarros();
		
		do {
			cont++;
			
			if(cont==1) {
				opcoes = 0;
			}else {
				opcoes = EntradaSaida.solicitaOpcao();
			}
			switch(opcoes) {
			
			case 0: 
				for(int i=0; i<qntdCarros; i++) {
				
				fabrica.fabricarCarro();
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