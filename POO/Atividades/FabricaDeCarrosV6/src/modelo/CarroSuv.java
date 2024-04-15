package modelo;

import visualizacao.EntradaSaida;

public class CarroSuv extends CarroBase {

public String tipoCarro() {
		
		String tamanhoPortaMala = EntradaSaida.solicitaInformacao("Digite quantos litros o porta malas:");		
		return "Tipo de Carro: SUV \nLitragem do Porta Malas: "+tamanhoPortaMala;
	}
}
