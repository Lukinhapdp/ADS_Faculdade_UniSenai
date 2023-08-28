/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Prepare um código-fonte para um programa que verifica APENAS os números primos
de 1 a 100.																			//Lucas Adriano Pereira 24/07/2023
Obs.: pesquise o que são números primos.
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package For;

import javax.swing.JOptionPane;

public class Exercicio3 {
    public static void main(String[] args) {
        
    	StringBuilder numerosPrimos = new StringBuilder();
    	
        for (int i = 2; i <= 100; i++) {
            if (ehPrimo(i)) {
                numerosPrimos.append(i).append("\n");
            }
        }

        String mensagem = "Números primos de 1 a " + (100) + ":\n" + numerosPrimos.toString();
        JOptionPane.showMessageDialog(null, mensagem);
    }

    // Método para verificar se um número é primo
    public static boolean ehPrimo(int numero) {
        if (numero <= 1) {
            return false;
        }

        for (int i = 2; i <= Math.sqrt(numero); i++) {
            if (numero % i == 0) {
                return false;
            }
        }	
        return true;
    }
}
