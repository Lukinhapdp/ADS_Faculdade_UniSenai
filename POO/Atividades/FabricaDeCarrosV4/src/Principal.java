public class Principal {

	public static void main(String[] args) {
		
		Carro escolherModelo = new Carro();
		Carro escolherCor = new Carro();
		
		String modelo = EntradaSaida.solicitaModelo();
		String cor = EntradaSaida.solicitaCor();
		
		escolherModelo.setModelo(modelo);
		escolherCor.setCor(cor);
			
		EntradaSaida.mostrarInformacao(modelo, cor);
	}
}
