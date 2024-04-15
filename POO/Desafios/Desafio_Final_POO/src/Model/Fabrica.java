
package Model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import View.EntradaSaida;

public class Fabrica {
	private DecimalFormat df = new DecimalFormat("0.00");
    
	private static double cacau;
	private static double gordura;
	private static double acucar;
	
	private double totalKcal;
	private double pesoTotal;
    private ArrayList<Chocolate> listaDeVendas = new ArrayList<>();
    private ArrayList<Chocolate> listaDeProdutos = new ArrayList<>();
    private int qntdVendaSelecionar;

    public void cadastrar(Chocolate chocolate) {
    	
    	Fabrica.cacau = EntradaSaida.solicitarQuantidadeCacau();
    	Fabrica.acucar =EntradaSaida.solicitarQuantidadeAcucar();
    	Fabrica.gordura =EntradaSaida.solicitarQuantidadeGordura();
    
    	//0,01kg de cacau é 75kcal
    	//0,01kg de açucar é 39kcal
    	//0,01kg de gordura é 9kcal
    	
    	totalKcal = (cacau*75) + (acucar*39) + (gordura*9);
    	pesoTotal = cacau + acucar + gordura;
    	
    	chocolate.setCalorias(totalKcal);
    	chocolate.setPeso(pesoTotal);
    	chocolate.setPreco(EntradaSaida.solicitarPrecoProduto());
    	chocolate.setTipoChocolate(EntradaSaida.solicitarTipoChocolate());
    	chocolate.setCodigo(EntradaSaida.solicitarCodigoProduto());
        listaDeProdutos.add(chocolate);
    }

    public void vender() {
        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            int selecionarProduto = EntradaSaida.solicitarCodigoProduto();
            boolean achou = false;
            boolean erroEstoque = false;
            Chocolate produtoSelecionado = null;

            for (Chocolate chocolate : listaDeProdutos) {
                if (selecionarProduto == chocolate.getCodigo()) {
                    achou = true;

                    if (chocolate.getEstoque() <= 0) {
                        EntradaSaida.mostrarMensagemSemEstoque();
                        erroEstoque = true;
                        break; // Sai do loop se o estoque estiver vazio
                    } else {
                        qntdVendaSelecionar = EntradaSaida.solicitarQuantidadeVenda();

                        while (qntdVendaSelecionar > chocolate.getEstoque()) {
                            EntradaSaida.mostrarMensagem2SemEstoque();
                            qntdVendaSelecionar = EntradaSaida.solicitarQuantidadeVenda();
                        }

                        if (qntdVendaSelecionar > 0) {
                        	chocolate.setEstoque(chocolate.getEstoque() - qntdVendaSelecionar);
                            produtoSelecionado = criarNovaVenda(chocolate, qntdVendaSelecionar);
                        }
                    }
                }
            }

            if (!achou) {
                EntradaSaida.mostrarMensagemErro();
            }

            if (!erroEstoque && produtoSelecionado != null) {
                listaDeVendas.add(produtoSelecionado);
            }
        }
    }
    private Chocolate criarNovaVenda(Chocolate chocolate, int quantidade) {
        Chocolate venda = new Chocolate();
        venda.setDescricao(chocolate.getDescricao());
        venda.setCodigo(chocolate.getCodigo());
        venda.setPreco(chocolate.getPreco());
        venda.setEstoque(quantidade);
        return venda;
    }
   
    public void adicionarEstoqueProduto() {
        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro(); 
        } else {
            int selecionarProduto = EntradaSaida.solicitarCodigoProduto();
            boolean achou = false;

            for (Chocolate chocolate : listaDeProdutos) {
                if (selecionarProduto == chocolate.getCodigo()) {
                    achou = true;
                    int qntdSelecionar = EntradaSaida.solicitarQuantidadeEstoqueProduto();
                    chocolate.setEstoque(chocolate.getEstoque() + qntdSelecionar);
                }
            }

            if (!achou) {
                EntradaSaida.mostrarMensagemErro();
            }
        }
    }
	
    public void gerarListaProdutosCadastrados() {
        String listaCadastrados = "";

        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            for (Chocolate chocolate : listaDeProdutos) {
                listaCadastrados += "Código: " + chocolate.getCodigo() + " | Estoque: " + chocolate.getEstoque() +" | Tipo chocolate: "+ chocolate.getTipoChocolate()+ " | Peso: " + df.format(chocolate.getPeso()) + "Kg | Calorias: " +df.format(chocolate.getCalorias()) + "Kcal | Preço: R$" + df.format(chocolate.getPreco()) + "\n";
            }

            EntradaSaida.exibirProdutosCadastrados(listaCadastrados);
        }
    }

    public ArrayList<Chocolate> getListaDeVendas() {
        return listaDeVendas;
    }

    public void setListaDeVendas(ArrayList<Chocolate> listaDeVendas) {
        this.listaDeVendas = listaDeVendas;
    }

    public ArrayList<Chocolate> getListaDeProdutos() {
        return listaDeProdutos;
    }

    public void setListaDeProdutos(ArrayList<Chocolate> listaDeProdutos) {
        this.listaDeProdutos = listaDeProdutos;
    }

    public int getQntdVendaSelecionar() {
        return qntdVendaSelecionar;
    }

    public void setQntdVendaSelecionar(int qntdVendaSelecionar) {
        this.qntdVendaSelecionar = qntdVendaSelecionar;
    }
}
