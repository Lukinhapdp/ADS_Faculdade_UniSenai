/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Crie duas matrizes 4x4 e compare para saber quantos elementos elas possuam que
são iguais. Apresente a quantidade e quais são esses elementos.						//Lucas Adriano Pereira 11/08/2023
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Matrix;

import java.util.ArrayList;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {

		int[][] matriz1 = new int[4][4];
		int[][] matriz2 = new int[4][4];
		ArrayList<Integer> compararElementos = new ArrayList<Integer>();
		StringBuilder mensagem = new StringBuilder();
		boolean validar = false;
		int cont = 0;
		
		for(int i=0; i<matriz1.length; i++) {
			for(int j=0; j<matriz1[0].length; j++) {
				matriz1[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite um número para a "+(i+1)+ "ª linha e "+(j+1)+ "ª coluna:"));
				
				while(matriz1[i][j] < 0) {
					matriz1[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número","Erro"));
				}
				mensagem.append(matriz1[i][j]+" | ");
				cont++;
			}
		}
		JOptionPane.showMessageDialog(null,"_____________Matriz 2_____________");
		for(int x=0; x<matriz2.length; x++) {
			for(int y=0; y<matriz2[0].length; y++) {
				matriz2[x][y]= Integer.parseInt(JOptionPane.showInputDialog("Digite um número para a "+(x+1)+ "ª linha e "+(y+1)+ "ª coluna:"));
				
				while(matriz2[x][y] < 0) {
					matriz2[x][y]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(x+1)+ "º número","Erro"));
				}
			}
		}
		
		 for (int i = 0; i < matriz1.length; i++) {    
	        	for (int j = 0; j < matriz1[0].length; j++) {             
	        		for (int x = 0; x < matriz2.length; x++) {                  
	        			for (int y = 0; y < matriz2[0].length; y++) {
	        				
	        				if (matriz1[i][j] == matriz2[x][y] && (i != x || j != y)) {
	        					compararElementos.add(matriz2[x][y]);
	                        }else {
	                        	validar = true;
	                        }
	                    }
	                }
	            }
	        }
		 if(validar) {
			 JOptionPane.showMessageDialog(null,"Elementos iguais: "+mensagem.toString()+ "\nQuantidade de elementos: "
					 +cont,"Todos os elementos são iguais!!!",JOptionPane.INFORMATION_MESSAGE);
		 }else {
			 JOptionPane.showMessageDialog(null,"Elementos iguais: "+compararElementos+ "\nQuantidade de elementos: "+compararElementos.size());
		 } 
	}
}