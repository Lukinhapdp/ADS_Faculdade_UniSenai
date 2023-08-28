/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você está organizando um evento beneficente e precisa distribuir um único
brinde para uma das pessoas participantes do evento. Contudo, esse evento não
permite sorteio nominal. Então, alguém deu a seguinte ideia: desenvolver uma		//Lucas Adriano Pereira 24/08/2023
solução de adivinhação. A pessoa vai no computador e pode digitar até 5 (cinco)
números, ou seja, ela terá 5 (cinco) chances. Se ela adivinhar um o número
escolhido aleatoriamente pelo computador, ela ganhará. Se acertar aparecerá
“PARABÉNS! Você ganhou o brinde!”. Se não, lerá “Que pena. Infelizmente você
não acertou.”
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Methods;

import java.util.Random;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {

		int numero = numeroAleatorio();
		boolean acertou = false;
		
		for(int i=0; i<5; i++) {
			int chance = Integer.parseInt(JOptionPane.showInputDialog((i+1)+ "ª tentativa"));
			while(chance < 0) {
				chance = Integer.parseInt(JOptionPane.showInputDialog((i+1)+ "ª tentativa","Erro só são permitidos números inteiros!!"));
			}
			if(chance == numero) {
				JOptionPane.showMessageDialog(null,"PARABÉNS! Você ganhou o brinde!");
				acertou = true;
				break;
			}else {
				acertou = false;
			}
		}
		if (!acertou) {
            JOptionPane.showMessageDialog(null, "Suas tentativas acabaram. O número era: " 
		+ numero,"Que pena. Infelizmente você não acertou.",JOptionPane.INFORMATION_MESSAGE);
		}	
	}
	private static int numeroAleatorio() {
		 Random gerador = new Random();
		 int numero = gerador.nextInt(11);
		
		 return numero;
	}
}
