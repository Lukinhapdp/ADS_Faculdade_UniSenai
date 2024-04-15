public class Principal {

	private static Carro car = new Carro();
	public static void main(String[] args) {
		
		String escolherModelo = "";
		String escolherCor = "";
		
		String modelo = EntradaSaida.solicitaModelo();
		String cor = EntradaSaida.solicitaCor();
		
		escolherModelo = car.setModelo(modelo);
		
		escolherCor = car.setCor(cor);
			
		EntradaSaida.mostrarInformacao(escolherModelo, escolherCor);
	}
}
