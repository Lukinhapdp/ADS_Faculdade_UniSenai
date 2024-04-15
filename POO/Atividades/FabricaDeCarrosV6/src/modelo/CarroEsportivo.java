package modelo;

import visualizacao.EntradaSaida;

public class CarroEsportivo extends CarroBase{

	public String tipoCarro() {
		
		String sport = EntradaSaida.solicitaInformacao("Digite a litragem do motor. Ex (2.0):");		
		return "Tipo de Carro: Esportivo \nLitragem do motor: "+sport;
	}
}
