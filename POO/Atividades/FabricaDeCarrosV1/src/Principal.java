public class Principal {

	public static void main(String[] args) {
		
		String modelo = EntradasSaidas.solicitaModelo();
		String cor = EntradasSaidas.solicitaCor();
		
		EntradasSaidas.mostrarInformacao(modelo, cor);
	}
}
