package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {
		
		double zinco=0, cobre=0;
		
		double quilos = Double.parseDouble(JOptionPane.showInputDialog("Digite a quantidade em quilos para saber quantos de zinco e cobre há no latão:"));
		while(quilos < 0) {
			quilos = Double.parseDouble(JOptionPane.showInputDialog(null,"Digite a quantidade em quilos para saber quantos de zinco e cobre há no latão:","Erro",JOptionPane.INFORMATION_MESSAGE));
		}
		
		cobre = quilos * 0.70; 
		zinco = quilos * 0.30;
		
		JOptionPane.showMessageDialog(null, "Para "+quilos+ " Kg de latão: \n"+cobre+" kg de cobre \n" +zinco+" Kg de zinco");
	}

}
