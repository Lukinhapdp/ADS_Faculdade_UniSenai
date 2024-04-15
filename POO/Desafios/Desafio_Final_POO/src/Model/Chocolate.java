package Model;

public class Chocolate {

	private String tipoChocolate;
	private String descricao;
	private double preco;
	private double peso;
	private double calorias;
	private int codigo;
	private int estoque;

	public String getTipoChocolate() {
		return tipoChocolate;
	}

	public void setTipoChocolate(String tipoChocolate) {
		this.tipoChocolate = tipoChocolate;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getCalorias() {
		return calorias;
	}

	public void setCalorias(double calorias) {
		this.calorias = calorias;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}
}