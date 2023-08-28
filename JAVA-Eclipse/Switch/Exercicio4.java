/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Solicite que o usuário informe uma letra do alfabeto. Posteriormente, verifique se
essa letra é uma vogal, uma consoante ou um caractere inválido.						Lucas Adriano Pereira 05/07/2023
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Switch;

import javax.swing.JOptionPane;

public class Exercicio4 {

	public static void main(String[] args) {
		
		
		String letra = JOptionPane.showInputDialog(null, "Digite uma letra para sabermos se ela é vogal ou consoante!!");
		
		//JOptionPane.showMessageDialog(null, "Vogal","A letra ("+letra+") é:",JOptionPane.INFORMATION_MESSAGE);
		
		switch(letra) {
		
		case "a","e","i","o","u":
			JOptionPane.showMessageDialog(null, "Vogal","A letra ("+letra+") é:",JOptionPane.INFORMATION_MESSAGE);
			break;
		
		case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w", "x","y", "z":
			JOptionPane.showMessageDialog(null, "Consoante","A letra ("+letra+") é:",JOptionPane.INFORMATION_MESSAGE);
			break;
		
		default:
			JOptionPane.showMessageDialog(null, "Caracter inválido!!");	
			break;
		}
	}
}
