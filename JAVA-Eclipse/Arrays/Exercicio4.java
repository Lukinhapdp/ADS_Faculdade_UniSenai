/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que leia 5 números inteiros digitados pelo usuário e armazene-os
em um vetor. Em seguida, o programa deve ordenar os números em ordem crescente			//Lucas Adriano Pereira /08/2023
e imprimir o vetor ordenado
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Arrays;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {
		
		//New é um construtor para um objeto
		StringBuilder mensagem = new StringBuilder("Números digitados:");
		StringBuilder mensagem2 = new StringBuilder("Números em ordem:");
		int[] numero = new int[5];

		for (int i = 0; i < numero.length; i++) {
			numero[i] = Integer.parseInt(JOptionPane.showInputDialog("Digite o " + (i + 1) + "º número"));
			while(numero[i] > 0 ) {
				numero[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:","Erro"));
			}
			mensagem.append("\n(").append(i + 1).append(") º numero: ").append(numero[i]);
		}

		Arrays.sort(numero);
		for (int i = 0; i < numero.length; i++) {
			mensagem2.append("\n(").append(i + 1).append(") º numero: ").append(numero[i]);
		}
		JOptionPane.showMessageDialog(null, "--------------------------------------\n" + mensagem.toString()
				+ "\n--------------------------------------\n" + mensagem2.toString());
	}
}
