public class Principal {

	public static void main(String[] args) {
		
		CarroBase escolherModelo = new Carro();
		CarroBase escolherCor = new Carro();
		Carro escolherAno = new Carro();
		CarroBase escolherCarro = null;
		String qualCarro = null;
	
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
		
		escolherModelo.setModelo(EntradaSaida.solicitaInformacao("Digite o modelo do carro:"));
		escolherCor.setCor(EntradaSaida.solicitaInformacao("Digite a cor do carro:"));
		escolherAno.setAno(EntradaSaida.solicitaInformacao("Digite o ano do carro: "));
		qualCarro = escolherCarro.tipoCarro();
		EntradaSaida.mostrarInformacao(escolherModelo, escolherCor, escolherAno, qualCarro);
	}
}