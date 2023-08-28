/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que leia 10 números inteiros digitados pelo usuário e armazeneos em um vetor.
Em seguida, calcule e imprima a média desses números e informe o 2º maior e o 3º menor número.		//Lucas Adriano Pereira 09/08/2023
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Arrays;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {

		int media=0, menor=0, maior=0;
		int[] numero = new int[10];
	
		for(int i=0; i<numero.length; i++) {
			numero[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número"));
			while(numero[i] > 1) {
				numero[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número","Erro"));
			}
		
			media += numero[i];
		}
		Arrays.sort(numero);
		
		media /= numero.length;
		
		maior = numero[10 - 2];
		menor = numero[2];
		
		JOptionPane.showMessageDialog(null,"2º maior número "+maior+"\n3º menor número "+menor+"\nMedia dos números "+media);
	}
}
