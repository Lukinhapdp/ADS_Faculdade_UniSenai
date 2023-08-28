/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Crie um programa para solicitar os valores de uma matriz 3x2. Em seguida, você
deverá fazer a transposição dessa matriz.												//Lucas Adriano Pereira 11/08/2023
Obs.: pesquisar o que é matriz transposta. 
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Matrix;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {
		
		int[][] matriz = new int[3][2];
		int[][] matrizTransposta = new int[2][3];
		StringBuilder mensagem1 = new StringBuilder();		
		StringBuilder mensagem2 = new StringBuilder();
		
		for(int i=0; i<3; i++) {
			for(int j=0; j<2; j++) {
				matriz[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite um número para a "+(i+1)+ "ª linha e "+(j+1)+ "ª coluna:"));
				while(matriz[i][j] < 0) {
					matriz[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número","Erro"));
				}
				mensagem1.append(" |"+matriz[i][j]).append("| ");
			}
			 mensagem1.append("\n");
		}
		 for (int i = 0; i < matriz.length; i++) {
	            for (int j = 0; j < matriz[i].length; j++) {
	                matrizTransposta[j][i] = matriz[i][j];
	            }
	        }
		 for (int i = 0; i < matrizTransposta.length; i++) {
	            for (int j = 0; j < matrizTransposta[i].length; j++) {
	                mensagem2.append(" |"+matrizTransposta[i][j]).append("| ");
	            }
	            mensagem2.append("\n");
	        }
		JOptionPane.showMessageDialog(null,"Matriz digitada:\n"+mensagem1.toString()+"\nMatriz transposta:\n"+mensagem2.toString());
	}
}
