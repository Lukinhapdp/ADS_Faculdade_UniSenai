package controle;

import modelo.Carro;
import modelo.CarroBase;
import modelo.CarroEsportivo;
import modelo.CarroSuv;
import visualizacao.EntradaSaida;

public class Controladora {
	
	public void exibeMenu() {
		
		CarroBase escolherModelo = new Carro();
		CarroBase escolherCor = new Carro();
		Carro escolherAno = new Carro();
		CarroBase escolherCarro = null;
		String qualCarro = null;
		
		String modelo = EntradaSaida.solicitaInformacao("Digite o modelo do carro:");
		String cor = EntradaSaida.solicitaInformacao("Digite a cor do carro:");
		String ano = EntradaSaida.solicitaInformacao("Digite o ano do carro: ");
		String carro = EntradaSaida.solicitaInformacao("Qual tipo o tipo de carro: \n(1) Esportivo \n(2) SUV");
		
		switch(carro) {
		
		case "1":
			escolherCarro = new CarroEsportivo();
			break;
			
		case "2":
			escolherCarro = new CarroSuv();
			break;
		default:
			escolherCarro = new Carro();
			break;
		}
		
		escolherModelo.setModelo(modelo);
		escolherCor.setCor(cor);
		escolherAno.setAno(ano);
		qualCarro = escolherCarro.tipoCarro();
		EntradaSaida.mostrarInformacao(modelo, cor, ano, qualCarro);
	}
}