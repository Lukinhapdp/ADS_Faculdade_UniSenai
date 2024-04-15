package Model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import View.EntradaSaida;

public class Loja {
    private DecimalFormat df = new DecimalFormat("0.00");

    private ArrayList<Inventario> listaDeVendas = new ArrayList<>();
    private ArrayList<Inventario> listaDeProdutos = new ArrayList<>();
    private int qntdVendaSelecionar;

    public void cadastrar(Inventario inventario) {
        inventario.setDescricaoProduto(EntradaSaida.solicitarDescricaoProduto());
        inventario.setCodigo(EntradaSaida.solicitarCodigoProduto());
        inventario.setPreco(EntradaSaida.solicitarPrecoProduto());
        listaDeProdutos.add(inventario);
    }

    public void vender() {
        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            int selecionarProduto = EntradaSaida.solicitarCodigoProduto();
            boolean achou = false;
            boolean erroEstoque = false;
            Inventario produtoSelecionado = null;

            for (Inventario produto : listaDeProdutos) {
                if (selecionarProduto == produto.getCodigo()) {
                    achou = true;

                    if (produto.getEstoque() <= 0) {
                        EntradaSaida.mostrarMensagemSemEstoque();
                        erroEstoque = true;
                        break; // Sai do loop se o estoque estiver vazio
                    } else {
                        qntdVendaSelecionar = EntradaSaida.solicitarQuantidadeVenda();

                        while (qntdVendaSelecionar > produto.getEstoque()) {
                            EntradaSaida.mostrarMensagem2SemEstoque();
                            qntdVendaSelecionar = EntradaSaida.solicitarQuantidadeVenda();
                        }

                        if (qntdVendaSelecionar > 0) {
                            produto.setEstoque(produto.getEstoque() - qntdVendaSelecionar);
                            produtoSelecionado = criarNovaVenda(produto, qntdVendaSelecionar);
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
    private Inventario criarNovaVenda(Inventario produto, int quantidade) {
        Inventario venda = new Inventario();
        venda.setDescricaoProduto(produto.getDescricaoProduto());
        venda.setCodigo(produto.getCodigo());
        venda.setPreco(produto.getPreco());
        venda.setEstoque(quantidade);
        return venda;
    }

    public void gerarCupom(String dataAtual) {
        String listaTodosCupons = "";
        double totalVendas = 0.0;

        for (Inventario produto : listaDeVendas) {
            totalVendas += produto.getPreco() * produto.getEstoque();
            listaTodosCupons += dataAtual + "\nDescrição: " + produto.getDescricaoProduto() + " | Quantidade: " + produto.getEstoque()
                    + " | Valor da venda: " + (df.format(produto.getPreco() * produto.getEstoque())) + "\n\n";
        }

        String mensagemFinalCupon = listaTodosCupons + "\n------Total de Vendas------\n" + df.format(totalVendas);
        EntradaSaida.exibirTodosCupons(mensagemFinalCupon);
    }

    public void adicionarEstoqueProduto(Inventario inventario) {
        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            int selecionarProduto = EntradaSaida.solicitarCodigoProduto();
            boolean achou = false;

            for (Inventario produto : listaDeProdutos) {
                if (selecionarProduto == produto.getCodigo()) {
                    achou = true;
                    int qntdSelecionar = EntradaSaida.solicitarQuantidadeEstoqueProduto();
                    produto.setEstoque(produto.getEstoque() + qntdSelecionar);
                }
            }

            if (!achou) {
                EntradaSaida.mostrarMensagemErro();
            }
        }
    }

    public void gerarProdutosEstoque() {
        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            String listaComEstoque = "";
            boolean temEstoque = false;

            for (Inventario produto : listaDeProdutos) {
                if (produto.getEstoque() > 0) {
                    listaComEstoque += "Descrição: " + produto.getDescricaoProduto() + " | Código: " + produto.getCodigo()
                            + " | Estoque: " + produto.getEstoque() + " | Preço: R$" + df.format(produto.getPreco()) + "\n";

                    if (produto.getEstoque() == 0) {
                        temEstoque = false;
                        EntradaSaida.mensagemErroSemEstoque();
                    } else {
                        temEstoque = true;
                    }
                }
            }

            if (!temEstoque) {
                EntradaSaida.mensagemErroSemEstoque();
            } else {
                EntradaSaida.exibirProdutosComEstoque(listaComEstoque);
            }
        }
    }

    public void gerarListaProdutosCadastrados() {
        String listaCadastrados = "";

        if (listaDeProdutos.isEmpty()) {
            EntradaSaida.mensagemErroSemCadastro();
        } else {
            for (Inventario produto : listaDeProdutos) {
                listaCadastrados += "Descrição: " + produto.getDescricaoProduto() + " | Código: " + produto.getCodigo()
                        + " | Estoque: " + produto.getEstoque() + " | Preço: R$" + df.format(produto.getPreco()) + "\n";
            }

            EntradaSaida.exibirProdutosCadastrados(listaCadastrados);
        }
    }

    public ArrayList<Inventario> getListaDeVendas() {
        return listaDeVendas;
    }

    public void setListaDeVendas(ArrayList<Inventario> listaDeVendas) {
        this.listaDeVendas = listaDeVendas;
    }

    public ArrayList<Inventario> getListaDeProdutos() {
        return listaDeProdutos;
    }

    public void setListaDeProdutos(ArrayList<Inventario> listaDeProdutos) {
        this.listaDeProdutos = listaDeProdutos;
    }

    public int getQntdVendaSelecionar() {
        return qntdVendaSelecionar;
    }

    public void setQntdVendaSelecionar(int qntdVendaSelecionar) {
        this.qntdVendaSelecionar = qntdVendaSelecionar;
    }
}
