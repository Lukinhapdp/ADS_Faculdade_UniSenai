/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Criar um programa que solicita ao usuário dois números e, em seguida, pergunta qual
é o resultado da multiplicação desses dois números. Enquanto o usuário não acertar
a resposta, o programa deve informar que ele está errado e pedir para tentar				//Lucas Adriano Pereira 31/07/2023
novamente. Quando o usuário acertar, o programa deve informar que o número está
correto e mostrar quantas vezes o usuário tentou até acertar.
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Do_While;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		
		int num1 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o primeiro número:"));
		int num2 = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o primeiro número:"));

		int resultado = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite o resultado:"));

		while(resultado!=(num1*num2)) {
			resultado = Integer.parseInt(JOptionPane.showInputDialog(null, "Você errou o resultado, tente novamente!!!"));
		}
		JOptionPane.showMessageDialog(null, "Você acertou, parabens");
	}
}
