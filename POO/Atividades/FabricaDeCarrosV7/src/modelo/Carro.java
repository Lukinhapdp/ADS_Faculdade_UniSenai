package modelo;
public class Carro extends CarroBase{
	
	private String ano;

	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public String tipoCarro() {

		return "Tipo de Carro: Normal";
	}
}