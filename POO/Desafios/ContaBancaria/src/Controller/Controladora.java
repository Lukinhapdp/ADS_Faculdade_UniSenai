package Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import Model.Conta;
import Model.Movimentacao;
import View.EntradaSaida;

public class Controladora {

	Conta conta = new Conta();
	Movimentacao movimentar = new Movimentacao();
	
	public void exibeMenu() {
		
		int opcoes=0;
		int selecionarTipoConta=0;
		
		do {
			Date dataHoraAtual = new Date(); //retorna a data e hora atual do sistema do pc
			String data = new SimpleDateFormat("dd/MM/yyyy").format(dataHoraAtual); // formata a data para o estilo desejado
			String hora = new SimpleDateFormat("HH:mm:ss").format(dataHoraAtual); //formata a hora
			String dataAtual = "\n"+data +"\n"+hora+" "; //usei uma string para juntar as duas informações em uma só
			Movimentacao movimentar = new Movimentacao();

			opcoes = EntradaSaida.solicitaOpcao();
			
			switch(opcoes) {
		
			case 0 :
				conta.setTitularDaConta(EntradaSaida.solicitaInformacao("Informe o nome do titular:"));
				selecionarTipoConta = EntradaSaida.solicitaTipo();
				conta.setTipo(selecionarTipoConta);
				
			break;
			
			case 1 :
				
				conta.depositar(conta, movimentar,dataAtual);
			break;
			
			case 2 :
				if(conta.getSaldo()<-1000){
					String mensagemImpossivelSacar = "A sua conta está com R$"+conta.getSaldo()+" negativos, impossivel efetuar o saque";
					EntradaSaida.mensagemContaNegativa(mensagemImpossivelSacar);
				}else {
				conta.sacar(conta, movimentar,dataAtual);
				}
			break;
			
			case 3 :
				String informacoesDaConta = this.conta.gerarDadosDaConta(conta, movimentar);
				EntradaSaida.exibirDadosDaConta(informacoesDaConta);
			break;
			
			case 4 :
				String informacoes = this.conta.gerarSaldo();
				EntradaSaida.exibirSaldo(informacoes);
			break;
			
			case 5 :
				conta.gerarExtrato(conta);
			break;
			
			case 6 :
				conta.gerarExtratoSaques(conta);
			break;
			
			case 7 :
				conta.gerarExtratoDepositos();
			break;
			
			}
		}while(opcoes != 8);
		
		EntradaSaida.exibeMsgEncerraPrograma();
		System.exit(0);
	}
}