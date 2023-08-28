/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Desenvolva um programa em Java que leia uma matriz de dimensões 4x4 e exiba o
resto da divisão de cada elemento da diagonal principal. Além disso, apresente			//Lucas Adriano Pereira 11/08/2003
também produto total da diagonal secundária da matriz.
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Matrix;
import javax.swing.JOptionPane;

public class Exercicio4 {
    public static void main(String[] args) {
       
    	int[][] matriz = new int[4][4];
    	int[] resto = new int[matriz.length];
    	StringBuilder mensagem1 = new StringBuilder();  
        int divisor = 0, produto = 0;
    
        divisor = Integer.parseInt(JOptionPane.showInputDialog("Digite um número para ser o resto da divisão pelos elementos da matriz:"));
        produto = Integer.parseInt(JOptionPane.showInputDialog("Digite um número para ser o produto dos elementos da matriz:"));
        
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
            	matriz[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite um número para a "+(i+1)+ "ª linha e "+(j+1)+ "ª coluna:"));
            	
            	while(matriz[i][j] < 0) {
					matriz[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número","Erro"));
				}
            }
        }
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
            	if(i == j) {
            		resto[i] += matriz[i][j] % divisor;
            	}
            	if(i + j == matriz.length - 1) {
            		produto *= matriz[i][j];
            		}
            	}
            }
        for (int i = 0; i < resto.length; i++) {
        mensagem1.append((i+1)+"º Elemento da diagonal: "+ resto[i]+"\n");
        }
        JOptionPane.showMessageDialog(null, "Produtos das diagonais secundarias:\n"+mensagem1.toString() +"\nResto das diagonais principais:\n"+ produto);
    }
}

