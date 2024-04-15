package Model;

import java.util.ArrayList;
import View.EntradaSaida;

public class Fabrica extends Carro {
	
	public ArrayList<Carro> carrosFabricados = new ArrayList<Carro>();

	public void fabricarCarro() {
		
		Carro carro = new Fabrica();
		carro.setModelo(EntradaSaida.solicitaInformacao("Informe o modelo do carro:"));
		carro.setCor(EntradaSaida.solicitaInformacao("Informe a cor do carro:"));
		carrosFabricados.add(carro);
	}
	
	public void venderCarro() {
		String qualCarro = "";
		
		for(int i=0; i<carrosFabricados.size(); i++) {
			qualCarro += (i+1)+ "º Carro\n";
		}
		int carroVenda = Integer.parseInt(EntradaSaida.solicitaInformacao("Qual carro deseja vender: \n"+qualCarro));
		carrosFabricados.remove(carroVenda);
		
	}
	
	public String gerarInformacoes() {
		String informacoes = "";
		
		for(Carro carro : this.carrosFabricados) {	
		informacoes += "\nModelo: "+carro.getModelo()+"\nCor: "+carro.getCor()+"\n\n";	
		}
		return informacoes;
	}

	public ArrayList<Carro> getCarrosFabricados() {
		return carrosFabricados;
	}

	public void setCarrosFabricados(ArrayList<Carro> carrosFabricados) {
		this.carrosFabricados = carrosFabricados;
	}
}
