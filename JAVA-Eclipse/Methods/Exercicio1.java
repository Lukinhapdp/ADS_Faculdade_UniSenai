/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um código capaz de solicitar ao usuário uma nota de 0 a 10. Se ele tirou: a		//Lucas Adriano Pereira 24/08/2023
partir 7 está aprovado, entre 5 e 6 está em recuperação, abaixo de 5 está reprovado.
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Methods;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		
		int nota = criarNota();
		mostrar(nota);		
		
	}

	private static int criarNota() {
		int nota = Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do único aluno:"));
		while(nota <0 || nota > 10) {
			nota = Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do único aluno:","Erro digite uma nota válida"));
		}
		return nota;
	}

	private static void mostrar(int nota) {
		if(nota >= 7 ) {
			JOptionPane.showMessageDialog(null,"O aluno está aprovado!!");
		}
		else if(nota >= 5 || nota <= 6) {
			JOptionPane.showMessageDialog(null,"O aluno está em recuperação!!");
		}
		else {
			JOptionPane.showMessageDialog(null,"O aluno está reprovado!!");
		}
	}
}
