/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você simulará aqui um jogo de cartas chamado 21, porém, por enquanto, será um
jogo de uma só pessoa. O jogador/usuário deve puxar cartas, somando o valor das
mesmas. O objetivo é chegar o mais próximo possível de 21 sem ultrapassá-lo. Para
isso, a cada rodada pergunte se o jogador deseja mais uma carta para seu jogo ou se		//Lucas Adriano Pereira 25/07/2023
deseja parar. Caso ele ultrapasse 21 na sua contagem, ele perde o jogo. Ao final,
mostre qual sua pontuação final.
Obs. 1: as cartas são dadas de maneira aleatória.
Obs. 2: pesquise o valor de cada carta em um jogo de 21.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package For;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {

		List<String> baralho = criarBaralho();
		Collections.shuffle(baralho);

		System.out.println(baralho);

		int pontuacao = 0;
		boolean continuar = false;

		while (!continuar && pontuacao < 21) {
			String resposta = JOptionPane.showInputDialog(null, "Deseja mais cartas?" + "\nsim (s) não (n)",
					"Pontuação: " + pontuacao, JOptionPane.INFORMATION_MESSAGE);

			if (resposta.equalsIgnoreCase("s")) {
				String cartas = baralho.get(0);
				baralho.remove(0);

				int valorCartas = calcularValor(cartas);
				pontuacao += valorCartas;

				JOptionPane.showMessageDialog(null, "Carta: " + cartas + " (" + valorCartas + ") pontos");

				if (pontuacao == 21) {
					JOptionPane.showMessageDialog(null, pontuacao + " pontos\nParabéns você fez 21 pontos!!",
							"Sua pontuação final: ", JOptionPane.INFORMATION_MESSAGE);
				} else if (pontuacao > 21) {
					JOptionPane.showMessageDialog(null, pontuacao + " pontos\nQue pena você estourou!!",
							"Sua pontuação final: ", JOptionPane.INFORMATION_MESSAGE);
				}
			} else if (resposta.equalsIgnoreCase("n")) {
				continuar = true;
				JOptionPane.showMessageDialog(null, pontuacao + " pontos", "Sua pontuação final: ",
						JOptionPane.INFORMATION_MESSAGE);

			} else {
				JOptionPane.showMessageDialog(null, "Erro!! Digite apenas 's' ou 'n' !!!");
			}
		}
	}

	private static List<String> criarBaralho() {
		List<String> baralho = new ArrayList<>();

		String[] cartas = { "A", "J", "Q", "K", "2", "3", "4", "5", "6", "7", "8", "9", "10" };

		/* Foreach - percorrer o vetor cartas. Vai adicionar cada carta na variavel
		 valor e armazenar na lista baralho*/
		for (String valor : cartas) {
			baralho.add(valor);
		}
		return baralho;
	}

	private static int calcularValor(String carta) {
		char valor = carta.charAt(0);

		if (valor == 'A') {
			return 1;
		} else if (valor == 'J' || valor == 'Q' || valor == 'K') {
			return 10;
		} else {
			return Integer.parseInt(String.valueOf(valor));
		}
	}
}