/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você se lembra do DESAFIO FINAL construído e discutido na trilha anterior, de
Portugol? Pois bem, primeiramente, você fará a tradução dos códigos-fontes da
linguagem Portugol para Java. Após isso, você terá a missão de construir mais 4
cadastros a sua escolha, bem como, 3 novas listas para consulta. Você vai representar			//Lucas Adriano Pereira 04/09/2023
isso por meio de um FLUXOGRAMA. Só que agora esperamos ele mais amplo e
adequado! Por isso, leia a respeito! Esse fluxograma deverá ser mostrado e discutido
conosco. Só depois é que você vai construir a solução final, contemplando o que foi
abordado no diagrama. Certo? Então, bora trabalhar
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package zFinal_JAVA;

import javax.swing.JOptionPane;

public class Exercicio_Final {

	public static void main(String[] args) {

		String continuar = "", perecivel = "", nome = "", medicacao = "", tipoDoacao = "", sangue = "", orgao = "";
		int decisao = 0;
		int contPerecivel = 0, contNaoPerecivel = 0, contAlimentos = 0, contMedicamentos = 0, contRoupas = 0,
				contSangueA = 0, contSangueB = 0, contSangueAB = 0, contSangueO = 0, contMedicamentoA = 0,
				contMedicamentoB = 0, contMedicamentoC = 0, contOrgaoA = 0, contOrgaoB = 0, contOrgaoC = 0,
				contOrgaos = 0, contSangue = 0, contDinheiro = 0;
		double dinheiro = 0.0, totalDinheiro = 0.0;

		JOptionPane.showMessageDialog(null,
				"Olá, este programa irá controlar doações de suprimentos para a população em situação de vulnerabilidade.\n");

		nome = JOptionPane.showInputDialog(null, "-----------Pré-cadastro-----------\n\nNos informe o seu nome: ");

		do {
			tipoDoacao = JOptionPane.showInputDialog(null, "Nome: " + nome
					+ "\n\nInforme qual o tipo da doação: \n(a) Alimentos \n(b) Medicamentos \n(c) Roupas \n(d) Dinheiro \n(e) Sangue \n(f) Órgãos");

			// Tipo de doação: Alimentos
			if (tipoDoacao.equalsIgnoreCase("a")) {
				contAlimentos++;
				perecivel = JOptionPane.showInputDialog(null,
						"Você escolheu doação de alimentos. O alimento é perecível? (s/n): ");

				while (!perecivel.equalsIgnoreCase("s") && !perecivel.equalsIgnoreCase("n")) {
					perecivel = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
				}

				if (perecivel.equalsIgnoreCase("s")) {
					contPerecivel++;
				}
				if (perecivel.equalsIgnoreCase("n")) {
					contNaoPerecivel++;
				}

				metodoRegiao();
			}
			// Tipo de doação: Medicamento
			else if (tipoDoacao.equalsIgnoreCase("b")) {
				contMedicamentos++;

				medicacao = JOptionPane.showInputDialog(null,
						"Você escolheu doação de medicamentos. \nQual o tipo do medicamento:\n(a) Manipulados \n(b) Antibióticos \n(c) Remédio para dores\n");

				while (!medicacao.equalsIgnoreCase("a") && !medicacao.equalsIgnoreCase("b")
						&& !medicacao.equalsIgnoreCase("c")) {
					medicacao = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
				}
				if (medicacao.equalsIgnoreCase("a")) {
					contMedicamentoA++;
				}
				if (medicacao.equalsIgnoreCase("b")) {
					contMedicamentoB++;
				}
				if (medicacao.equalsIgnoreCase("c")) {
					contMedicamentoC++;
				}
				metodoRegiao();
			}
			// Tipo de doação: Roupas
			else if (tipoDoacao.equalsIgnoreCase("c")) {
				contRoupas++;
				JOptionPane.showMessageDialog(null, "Você escolheu doação de roupas.");
				metodoRegiao();
			}
			// Tipo de doação: Dinheiro
			else if (tipoDoacao.equalsIgnoreCase("d")) {
				contDinheiro++;
				dinheiro = Double.parseDouble(JOptionPane.showInputDialog(null,
						"Você escolheu doação de dinheiro.\nQuantos de dinheiro irá doar?"));
				totalDinheiro += dinheiro;
				metodoRegiao();
			}
			// Tipo de doação: Sangue
			else if (tipoDoacao.equalsIgnoreCase("e")) {
				contSangue++;
				sangue = JOptionPane.showInputDialog(null,
						"Você escolheu doação de sangue. \nQual o tipo do seu sangue:\n(a) A \n(b) B \n(c) AB \n(d) O");

				while (!sangue.equalsIgnoreCase("a") && !sangue.equalsIgnoreCase("b") && !sangue.equalsIgnoreCase("c")
						&& !sangue.equalsIgnoreCase("d")) {
					sangue = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
				}
				if (sangue.equalsIgnoreCase("a")) {
					contSangueA++;
				} else if (sangue.equalsIgnoreCase("b")) {
					contSangueB++;
				} else if (sangue.equalsIgnoreCase("c")) {
					contSangueAB++;
				} else {
					contSangueO++;
				}
				metodoRegiao();
			}
			// Tipo de doação: Órgãos
			else if (tipoDoacao.equalsIgnoreCase("f")) {
				contOrgaos++;

				orgao = JOptionPane.showInputDialog(null,
						"Você escolheu doação de órgãos. \nQual o tipo do seu sangue:\n(a) Rins \n(b) Pâncreas \n(c) Fígado");

				while (!orgao.equalsIgnoreCase("a") && !orgao.equalsIgnoreCase("b") && !orgao.equalsIgnoreCase("c")
						&& !orgao.equalsIgnoreCase("d")) {
					orgao = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
				}
				if (orgao.equalsIgnoreCase("a")) {
					contOrgaoA++;

				} else if (orgao.equalsIgnoreCase("b")) {
					contOrgaoB++;

				} else {
					contOrgaoC++;
				}
				metodoRegiao();
			}

			while (!tipoDoacao.equalsIgnoreCase("a") && !tipoDoacao.equalsIgnoreCase("b")
					&& !tipoDoacao.equalsIgnoreCase("c") && !tipoDoacao.equalsIgnoreCase("d")
					&& !tipoDoacao.equalsIgnoreCase("e") && !tipoDoacao.equalsIgnoreCase("f")) {
				tipoDoacao = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
			}

			continuar = JOptionPane.showInputDialog(null,
					"Deseja fazer uma nova pesquisa?? (digite 's' para SIM e 'n' para NÃO)");

		} while (continuar.equalsIgnoreCase("s"));

		do {
			decisao = Integer.parseInt(JOptionPane.showInputDialog(null,
					"--------------Relatório--------------\n\n(1) Todas as doações; \n(2) Doações por tipo; \n(3) Doações perecíveis ou não; \n(4) Apenas doações perecíveis "
							+ "\n(5) Todos os tipos de órgãos \n(6) Todos os tipos sanguíneos \n(7) Total de dinheiro doado."));

			while (decisao != 1 && decisao != 2 && decisao != 3 && decisao != 4 && decisao != 5 && decisao != 6 && decisao != 7) {
				decisao = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite uma opção válida!!"));
			}

			switch (decisao) {

			case 1:
				JOptionPane.showMessageDialog(null, "\nVocê escolheu todas as doações:\n\n| Alimentos: " + contAlimentos
						+ " | Alimentos Perecíveis: " + contPerecivel + " | Alimentos não perecíveis: "
						+ contNaoPerecivel + " | \n\n" + "| Medicamentos: " + contMedicamentos + " | Manipulados: "
						+ contMedicamentoA + " | Antibióticos: " + contMedicamentoB + " | Remédios para dores: "
						+ contMedicamentoC + " | \n\n" + "| Roupas: " + contRoupas + " |\n\n" + "| Dinheiro: "
						+ contDinheiro + "| Quantidade de  dinheiro doado: " + totalDinheiro + " | \n\n" + "| Sangue: "
						+ contSangue + " | Tipo A: " + contSangueA + " | Tipo B: " + contSangueB + " Tipo AB: "
						+ contSangueAB + " Tipo O: " + contSangueO + "|\n\n" + "| Órgãos: " + contOrgaos + " | Rins: "
						+ contOrgaoA + " | Pâncreas: " + contOrgaoB + " | Fígados: " + contOrgaoC + " |\n\n");
				break;

			case 2:
				tipoDoacao = JOptionPane.showInputDialog(null,
						"\nVocê escolheu ver as doações por tipo \nQual o tipo de doação você quer ver?:\n\n(a) Alimentos \n(b) Medicamentos "
								+ "\n(c) Roupas \n(d) Dinheiro \n(e) Sangue \n(f) Órgãos");

				while (!tipoDoacao.equalsIgnoreCase("a") && !tipoDoacao.equalsIgnoreCase("b")
						&& !tipoDoacao.equalsIgnoreCase("c") && !tipoDoacao.equalsIgnoreCase("d")
						&& !tipoDoacao.equalsIgnoreCase("e") && !tipoDoacao.equalsIgnoreCase("f"))
					tipoDoacao = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");

				if (tipoDoacao.equals("a")) {
					JOptionPane.showMessageDialog(null, "| Alimentos: " + contAlimentos + " | Alimentos Perecíveis: "
							+ contPerecivel + " | Alimentos não perecíveis: " + contNaoPerecivel + " | \n\n");
				} else if (tipoDoacao.equals("b")) {
					JOptionPane.showMessageDialog(null,
							"| Medicamentos: " + contMedicamentos + " | Manipulados: " + contMedicamentoA
									+ " | Antibióticos: " + contMedicamentoB + " | Remédios para dores: "
									+ contMedicamentoC + " | \n\n");
				} else if (tipoDoacao.equals("c")) {
					JOptionPane.showMessageDialog(null, "| Roupas: " + contRoupas + " |\n\n");
				}

				else if (tipoDoacao.equals("d")) {
					JOptionPane.showMessageDialog(null, "| Dinheiro: " + contDinheiro
							+ "| Quantidade de  dinheiro doado: " + totalDinheiro + " | \n\n");
				}

				else if (tipoDoacao.equals("e")) {
					JOptionPane.showMessageDialog(null,
							"| Sangue: " + contSangue + " | Tipo A: " + contSangueA + " | Tipo B: " + contSangueB
									+ " Tipo AB: " + contSangueAB + " Tipo O: " + contSangueO + "|\n\n");
				}

				else {
					JOptionPane.showMessageDialog(null, "| Órgãos: " + contOrgaos + " | Rins: " + contOrgaoA
							+ " | Pâncreas: " + contOrgaoB + " | Fígados: " + contOrgaoC + " |\n\n");
				}
				break;

			case 3:
				perecivel = JOptionPane.showInputDialog(null,
						"\nVocê escolheu todas as doações de alimentos:\n\n(a) Perecíveis \n(b) Não Perecíveis\n");

				while (!perecivel.equalsIgnoreCase("a") && !perecivel.equalsIgnoreCase("b")) {
					perecivel = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
				}

				if (perecivel.equalsIgnoreCase("a")) {
					JOptionPane.showMessageDialog(null, "| Alimentos Perecíveis: " + contPerecivel + " |");
				}
				if (perecivel.equalsIgnoreCase("b")) {
					JOptionPane.showMessageDialog(null, "| Alimentos Não Perecíveis: " + contNaoPerecivel + " |");
				}
				break;

			case 4:
				JOptionPane.showMessageDialog(null,
						"| Alimentos Perecíveis: " + contPerecivel );
				break;

			case 5:
				JOptionPane.showMessageDialog(null, " | Rins: " + contOrgaoA + " | Pâncreas: " + contOrgaoB
						+ " | Fígados: " + contOrgaoC + " |\n\n");
				break;

			case 6:
				JOptionPane.showMessageDialog(null, " | Tipo A: " + contSangueA + " | Tipo B: " + contSangueB
						+ " Tipo AB: " + contSangueAB + " Tipo O: " + contSangueO + "|\n\n");
				break;

			case 7:
				JOptionPane.showMessageDialog(null,
						"| Quantidade total de dinheiro doado: " + totalDinheiro + " | \n\n");
				break;

			}

			continuar = JOptionPane.showInputDialog(null,
					"\n\nDeseja fazer uma nova pesquisa??\n(digite 's' para SIM e 'n' para NÃO)");

			while (!continuar.equalsIgnoreCase("s") && !continuar.equalsIgnoreCase("n")) {
				continuar = JOptionPane.showInputDialog(null,
						"Erro!! Digite uma opção válida");
			}
			
		} while (continuar.equalsIgnoreCase("s"));
	}

	public static String metodoRegiao() {
		String qualRegiao = "";

		qualRegiao = JOptionPane.showInputDialog(null,
				"Em qual região você deseja fazer essa doação?:\n\n(a) Oeste \n(b) Central \n(c) Leste\n");

		while (!qualRegiao.equalsIgnoreCase("a") && !qualRegiao.equalsIgnoreCase("b")
				&& !qualRegiao.equalsIgnoreCase("c")) {
			qualRegiao = JOptionPane.showInputDialog(null, "Digite uma opção válida!!");
		}
		return qualRegiao;
	}
}
