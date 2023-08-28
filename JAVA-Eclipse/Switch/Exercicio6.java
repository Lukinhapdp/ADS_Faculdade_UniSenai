/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Desenvolva um sistema de votação para uma eleição. O programa terá um menu
que deve permitir ao usuário digitar o número do candidato de sua escolha, que
varia de 1 a 5, e em seguida, exibir uma mensagem informando o nome e a
plataforma política do candidato escolhido.														Lucas Adriano Pereira 12/07/2023
Após o usuário digitar o número do candidato, deve-se verificar o número digitado e
exibir uma mensagem com o nome e a plataforma política do candidato escolhido.
Caso o número digitado não corresponda a nenhum candidato válido, o programa
deve exibir uma mensagem de erro.
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {

		Integer candidato = Integer.parseInt(JOptionPane.showInputDialog(null,
				" (1) Paulin  " + "\n (2) Paula " + "\n (3) Tomas " + "\n (4) Balan " + "\n (5) Eva ",
				"Escolha o seu candidato:", JOptionPane.INFORMATION_MESSAGE));

		switch (candidato) {
		case 1:
			JOptionPane.showMessageDialog(null, "O candidato(a) Paulin Pinho é da plataforma política: PSDB");
			break;

		case 2:
			JOptionPane.showMessageDialog(null, "O candidato(a) Paula é da plataforma política: PT");
			break;

		case 3:
			JOptionPane.showMessageDialog(null, "O candidato(a) Tomas é da plataforma política: PL");
			break;

		case 4:
			JOptionPane.showMessageDialog(null, "O candidato(a) Alan é da plataforma política: PTDB");
			break;

		case 5:
			JOptionPane.showMessageDialog(null, "O candidato(a) Eva é da plataforma política: MDB");
			break;
		default:
			JOptionPane.showMessageDialog(null, "O candidato(a) Informado não existe!!!");
			break;
		}
	}
}
