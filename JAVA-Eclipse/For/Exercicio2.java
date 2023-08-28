/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um programa que solicita ao usuário uma frase. Ao final, indique quantas
vogais, consoantes, espaços e outros caracteres compõem essa frase. 				//Lucas Adriano Pereira 24/07/2023
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package For;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {

		int vogais = 0;
        int consoantes = 0;
        int espacos = 0;
        int outros = 0;
        int letrasMaiusculas = 0;
        int letrasMinusculas = 0;
		
		String frase = JOptionPane.showInputDialog(null, "Escreva uma palavra:", JOptionPane.INFORMATION_MESSAGE);
		// Percorre cada caractere da frase
		for(int i = 0; i < frase.length(); i++) {
			char letra = frase.charAt(i);
		
			// Verifica se o caractere é uma vogal
			if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
                vogais++;
            }
			// Verifica se o caractere é uma consoante
			else if (letra >= 'b' && letra <= 'z') {
                consoantes++;
            }
			// Verifica se o caractere é um espaço em branco
			else if (letra == ' ') {
                espacos++;
            }
			// Conta outros caracteres (números, símbolos, etc.)
			else {
	             outros++;
	        }
			// Verifica se o caractere é uma letra maiúscula
            if (Character.isUpperCase(frase.charAt(i))) {
                letrasMaiusculas++;
            }
            // Verifica se o caractere é uma letra minúscula
            if (Character.isLowerCase(frase.charAt(i))) {
                letrasMinusculas++;
            }
		}
	
		JOptionPane.showMessageDialog(null,"\nVogais: "+vogais
				+ "\nconsoantes: "+consoantes
				+ "\nespacos: "+espacos
				+ "\noutros: "+outros
				+ "\nletrasMaiusculas: "+letrasMaiusculas
				+ "\nletrasMinusculas: "+letrasMinusculas
				, "A frase: '"+frase+"' possui:",JOptionPane.INFORMATION_MESSAGE);
	}
}
