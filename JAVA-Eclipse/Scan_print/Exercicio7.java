/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um conversor de temperaturas. Você solicitará uma temperatura em graus
Celsius e converterá para Fahrenheit e Kelvin, exibindo o resultado.				Lucas Adriano Pereira 28/06/2023
Obs.: pesquise como realizar a conversão de Celsius para Fahrenheit e Kelvin.
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Scan_print;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {
		
		double fahrenheit =0, kelvin = 0;
		
		int num = Integer.parseInt(JOptionPane.showInputDialog(null,"Informe a temperatura em Celsius: "));
			
			fahrenheit = (num * 1.8 + 32);
			kelvin = (num +  273.15);
			
		JOptionPane.showMessageDialog(null, "Tabela de graus em:"
				+ "\n Celsius: "+ num+ "ºC"
				+ "\n fahrenheit: "+ fahrenheit+"ºF"
				+ "\n kelvin: "+ kelvin+"K");	
	}

}
