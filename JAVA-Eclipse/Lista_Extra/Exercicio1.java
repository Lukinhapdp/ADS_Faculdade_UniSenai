/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que receba um vetor de valores e mostre a quantidade de valores		//Lucas Adriano Pereira 29/08/2023
negativos. Os valores e o tamanho do vetor devem ser informados pelo usuário.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		
		String negativos="";
		int tamanhoVetor = Integer.parseInt(JOptionPane.showInputDialog("Informe um número para se o tamanho do vetor:"));
		while(tamanhoVetor < 1) {
				tamanhoVetor = Integer.parseInt(JOptionPane.showInputDialog("Informe um número para se o tamanho do vetor:","Erro"));
		}
		
		int[] vetor = new int[tamanhoVetor];

		for(int i=0; i<vetor.length; i++) {
			vetor[i] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " +(i+1) +"º número para prencher o vetor"));
			
			if(vetor[i] < 0) {
				negativos += (vetor[i]+"\n");
			}
		}
	
		JOptionPane.showMessageDialog(null,negativos,"Números negativos",JOptionPane.INFORMATION_MESSAGE);
	}

}
