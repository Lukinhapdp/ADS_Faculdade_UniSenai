/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Escreva um programa que leia um número inteiro e apresente um menu para o usuário
escolher:
• Verificar se o número é múltiplo de algum outro número (pedir ao usuário esse
número);
• Verificar se o número é par;															//Lucas Adriano Pereira 29/08/2023
• Verificar se o número está entre 0 e 1000;
• Sair
Após as entradas de dados, deve ser mostrado ao usuário o resultado da respectiva
opção escolhida, e novamente o menu. Para a opção “4- Sair”, utilize o comando
System.exit(0);
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {
		
		boolean continuar = false;
		int opcao = 0;
		
		do {	
			int numero = Integer.parseInt(JOptionPane.showInputDialog("Informe um número inteiro:"));
			while(numero < 0) {
				numero = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe um número inteiro:","Erro",JOptionPane.INFORMATION_MESSAGE));
			}
			opcao = Integer.parseInt(JOptionPane.showInputDialog(null,"(1) Verificar se o número é múltiplo de algum outro número;"
					+ "\n(2) Verificar se o número é par;"
					+ "\n(3) Verificar se o número está entre 0 e 1000"
					+ "\n(4) Sair","O que você deseja:",JOptionPane.INFORMATION_MESSAGE));
			
			switch(opcao) {
			
			case 1:
				
				continuar = true;
				break;
				
			case 2:
				
				continuar = true;
				break;
			case 3:
				
				continuar = true;
				break;
			case 4:
				
				System.exit(0);
				continuar = false;
				break;
			
			}
		}while(continuar);	
			
	}

}
