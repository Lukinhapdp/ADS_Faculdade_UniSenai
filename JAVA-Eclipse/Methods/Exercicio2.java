/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Construa um programa que solicite ao usuário apenas os números de seu telefone.
(ex.: 47987654321). Em seguida, por meio de um método, você construirá uma			//Lucas Adriano Pereira 24/08/2023
máscara para esse número (ex.: (47) 98765-4321).
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Methods;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		
		boolean temLetra= false;
		String numero = JOptionPane.showInputDialog("Digite o seu número de telefone com o DDD exatamente assim: (ex: 47987654321):");
		 for (int i = 0; i < numero.length(); i++) { 
	            char caracter = numero.charAt(i);
	            if (!Character.isDigit(caracter)) { 
	                temLetra = true;
	                break; 
	            }
	        }
		while(numero.length() != 11 || temLetra) {
			numero = JOptionPane.showInputDialog(null,"Digite o seu número de telefone com o DDD exatamente assim: (ex: 47987654321):","Erro você não digitou corretamente!!",JOptionPane.INFORMATION_MESSAGE);
		}
		String numeroFormatado = mostrar(numero);
		JOptionPane.showMessageDialog(null,"Número digitado: " +numero+ "\n\nNúmero formatado: " +numeroFormatado);
	}

	private static  String mostrar(String numeroTelefone) {
		String digitos = numeroTelefone.replaceAll("\\D","");
			
		return "("+digitos.substring(0 ,2)+ ") " +digitos.substring(2,7)+ "-" + digitos.substring(7);
	}
}