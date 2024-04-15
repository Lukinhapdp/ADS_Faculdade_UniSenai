package Model;

import java.text.DecimalFormat;
import java.util.ArrayList;

import View.EntradaSaida;

public class Conta {
	DecimalFormat df = new DecimalFormat("0.00");

	private String titularDaConta;
	private int tipo;
	private double saldo;
	double solicitaValor;
	boolean saldoNegativo;
	private ArrayList<Movimentacao> listaDeMovimentacao = new ArrayList<Movimentacao>();

	public void depositar(Conta conta, Movimentacao movimentar, String dataAtual) {
		movimentar.setData(dataAtual);
		solicitaValor = EntradaSaida.solicitarInformacoesDeposito();
		movimentar.setValor(solicitaValor);
		conta.setSaldo(saldo + solicitaValor);
		listaDeMovimentacao.add(movimentar);
	}

	public void sacar(Conta conta, Movimentacao movimentar, String dataAtual) {

		movimentar.setData(dataAtual);

		solicitaValor = EntradaSaida.solicitarInformacoesSaque();
		movimentar.setValor(-solicitaValor); // usei o solicitaValor com o sinal de - antes para aparecer o valor negativo
		conta.setSaldo(saldo - solicitaValor);
		
		if (solicitaValor >= 1000.00 || conta.getSaldo() <= -1000) {
			conta.setSaldo(-1000.00);
			String mensagemImpossivelSacar = "A sua conta está com R$" + df.format(this.getSaldo())
					+ " negativos, impossivel efetuar o saque";
			EntradaSaida.mensagemContaNegativa(mensagemImpossivelSacar);
		}
		listaDeMovimentacao.add(movimentar);		
	}

	public String gerarSaldo() {
		String informacaoSaldo = "";

		informacaoSaldo = "O seu saldo é: R$" + df.format(this.getSaldo());
		return informacaoSaldo;
	}

	public String gerarDadosDaConta(Conta conta, Movimentacao movimentar) {
		String tipoConta = "";

		if (conta.getTipo() == 0) {
			tipoConta = "Corrente";
		} else {
			tipoConta = "Poupança";
		}

		String informacoesDaConta = "Nome do titular da conta: " + this.getTitularDaConta() + "\nTipo da Conta: "
				+ tipoConta + "\nSaldo da conta: " + df.format(this.getSaldo());

		return informacoesDaConta;
	}

	public void gerarExtrato(Conta conta) {
		String extrato = "";
	
		for (int i = 0; i < listaDeMovimentacao.size(); i++) {	
			if (listaDeMovimentacao.get(i).getValor() < 0) {	
				if((conta.getSaldo())== -1000 ) {
					listaDeMovimentacao.remove(listaDeMovimentacao.get(listaDeMovimentacao.size()-1));		
				}
					extrato += listaDeMovimentacao.get(i).getData() + ": R$"
							+ df.format(listaDeMovimentacao.get(i).getValor()) + "\n";
			} else {
				extrato += listaDeMovimentacao.get(i).getData() + ": R$"
						+ df.format(listaDeMovimentacao.get(i).getValor()) + "\n";
			}
		}
		EntradaSaida.exibirExtratoCompleto(extrato);
	}

	public void gerarExtratoSaques(Conta conta) {
		String extratoSaque = "";
	
		for (int i = 0; i < listaDeMovimentacao.size(); i++) {
			if (listaDeMovimentacao.get(i).getValor() < 0) {
				if((conta.getSaldo())== -1000 ) {
					listaDeMovimentacao.remove(listaDeMovimentacao.get(listaDeMovimentacao.size()-1));		
				}
				extratoSaque += listaDeMovimentacao.get(i).getData() + ": R$"
					+ df.format(listaDeMovimentacao.get(i).getValor()) + "\n";
			}
		}
		EntradaSaida.exibirExtratoDeSaques(extratoSaque);
	}

	public void gerarExtratoDepositos() {
		String extratoDeposito = "";

		for (int i = 0; i < listaDeMovimentacao.size(); i++) {
			if (listaDeMovimentacao.get(i).getValor() > 0) {
				extratoDeposito += listaDeMovimentacao.get(i).getData() + ": R$"
						+ df.format(listaDeMovimentacao.get(i).getValor()) + "\n";
			}
		}
		EntradaSaida.exibirExtratoDeDepositos(extratoDeposito);
	}

	// Getters e Setters

	public String getTitularDaConta() {
		return titularDaConta;
	}

	public void setTitularDaConta(String titularDaConta) {
		this.titularDaConta = titularDaConta;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int selecionarTipoConta) {
		this.tipo = selecionarTipoConta;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public ArrayList<Movimentacao> getListaDeMovimentacao() {
		return listaDeMovimentacao;
	}

	public void setListaDeMovimentacao(ArrayList<Movimentacao> listaDeMovimentacao) {
		this.listaDeMovimentacao = listaDeMovimentacao;
	}
}
