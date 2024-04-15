package Model;

import java.util.ArrayList;

import View.EntradaSaida;

public class Fabrica {
	
	public ArrayList<Carro> carrosFabricados = new ArrayList<Carro>();

	public void fabricarCarro(Carro carro) {
		carrosFabricados.add(carro);
	}
	
	public void venderCarro() {
		String qualCarro = "";
		int ordem=1;
		
		for(Carro carro : this.carrosFabricados) {
			
			qualCarro += (ordem++)+"º Carro: "+carro.getModelo()+ "\n";
		}
		int carroVenda = Integer.parseInt(EntradaSaida.solicitaInformacao("Qual carro deseja vender: (digite o número correspondente) \n"+qualCarro));
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
