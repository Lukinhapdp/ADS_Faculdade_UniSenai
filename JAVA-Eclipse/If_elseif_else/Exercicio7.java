/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Você está construindo uma solução para calcular o valor final do salário de um 
colaborador. Portanto, calcule o salário de um colaborador, sabendo que:
• A jornada de trabalho é de 40 horas semanais, ou 160 horas mensais;					Lucas Adriano Pereira 03/07/2023
• Caso haja horas extras, o valor a ser pago é de 50% a mais do valor normal da hora 
para cada hora extra realizada. 
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package If_elseif_else;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {
		Double salario= 0.0;
		Double horaExtra = 0.0;
		Double salarioExtra;
	
		Double horas = Double.parseDouble(JOptionPane.showInputDialog(null, "Quantas horas mensais esse funcionario fez no mês de Janeiro?"));
			
		while (horas < 0 ) {
			JOptionPane.showMessageDialog(null,
					"Você informou horas inválidas. Informe de forma válida!!");
			horas = Double
					.parseDouble(JOptionPane.showInputDialog(null, "Quantas horas mensais esse funcionario fez no mês de Janeiro?"));
		}
		
		Double ganhoPorHora = Double.parseDouble(JOptionPane.showInputDialog(null, "Quantos esse funcionario ganha por hora?"));
		
		while (ganhoPorHora <= 0 ) {
			JOptionPane.showMessageDialog(null,
					"Você informou o ganho por hora inválido. Informe de forma válida!!");
			ganhoPorHora = Double
					.parseDouble(JOptionPane.showInputDialog(null, "Quantos esse funcionario ganha por hora?"));
		}
		
		salario = ganhoPorHora * horas;
		
		if(horas <= 160) {
			JOptionPane.showMessageDialog(null, salario, "Salario do funcionario:",JOptionPane.INFORMATION_MESSAGE);
		}
		
		else if(horas > 160) {
			horaExtra = horas - 160;
			salarioExtra = horaExtra * ganhoPorHora + (ganhoPorHora*0.5);
			salario = salario + salarioExtra;
			JOptionPane.showMessageDialog(null, salario, "Salario do funcionario:",JOptionPane.INFORMATION_MESSAGE);
		
		}else {
			JOptionPane.showMessageDialog(null,"ERROO!!!:",null,JOptionPane.WARNING_MESSAGE);
		}
	}
}
