/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um programa que solicite ao usuário três comprimentos de lado e, em 
seguida, verifique se é possível formar um triângulo. Se sim, exiba o tipo de triângulo.
Obs.: pesquise o que são triângulos equiláteros, isósceles e escalenos. 					Lucas Adriano Pereira 03/07/2023
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		double[] num= new double[3];
	
		for(int i=0; i<3; i++){
			num[i] = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o "+(i+1)+"º número:"));
		
			if (num[i] <= 0) {
				while (num[i] > 10 || num[i] < 0) {
					num[i] = Float.parseFloat(JOptionPane.showInputDialog(null,
							"Você digitou algum número inválido, digite um número valido!!"));
				}
			}
		}
		
		if(num[0] == num[1] && num[0] == num[2]){
			JOptionPane.showMessageDialog(null, "O triângulo é equilátero: possui os 3 lados iguais!!");
		}
		else if(num[0] == num[1] || num[0] == num[2] || num[1] == num[2]){
			JOptionPane.showMessageDialog(null, "O triângulo é isósceles: possui 2 lados iguais!!");
		}
		else if(num[0] != num[1] && num[0] != num[2] && num[1] != num[2]){
			JOptionPane.showMessageDialog(null, "O triângulo é escaleno: possui os 3 lados diferentes!!");
		}
		else {
			JOptionPane.showMessageDialog(null, "!!Não é possível formar um triangulo!!");

		}
	}
}
