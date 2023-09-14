/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Uma empresa deseja saber alguns dados sobre suas vendas no passado. Faça um
programa que armazene em um vetor o valor total das vendas de cada um dos 12
meses do ano (que deverá ser informado pelo usuário) e mostre:
• O mês com a maior venda;															//Lucas Adriano Pereira 31/08/2023
• O mês com a menor venda;
• A média das vendas do ano todo;
• A média das vendas dos meses pares;
• A média das vendas do 2º semestre.
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import java.util.Arrays;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {
		
		int[] meses = new int[12];
		int maior = 0, menor = 0, mediaTotal = 0, mediaMesPares = 0, somaMediaTotal=0, somaMediaPares=0,
				mediaSegundoSem=0, somaSegundoSem=0, contPar=0;
		
		for(int i=0; i<meses.length; i++) {
			meses[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade de vendas do "+(i+1)+" mês:" ));
			
			somaMediaTotal += meses[i];
			
			if((meses[i] % 2) ==0) {
				somaMediaPares += meses[i];
				contPar++;
			}
			
			if( i >= 6 ) {
				somaSegundoSem += meses[i];
			}
			
		}
		Arrays.sort(meses);
		for(int i=0; i<meses.length; i++) {
			
				maior = meses[11];
				menor = meses[0];
		}
		
		mediaTotal = somaMediaTotal / meses.length;
		mediaMesPares = somaMediaPares / contPar;
		mediaSegundoSem = somaSegundoSem / 6;
		
		JOptionPane.showMessageDialog(null,"Media total: " +mediaTotal+ "\nMedia dos mêses pares: " +mediaMesPares
				+ "\nMedia de vendas do segundo semestre: " +mediaSegundoSem+ "\nMês com maior venda: " +maior+ "\nMês com menor venda: "+menor);
	}
}
