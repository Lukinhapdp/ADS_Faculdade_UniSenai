/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
O professor "Beico Zito" está em busca de uma solução que possa calcular a soma
de cada linha e a soma total de uma matriz 4x5. Para isso, ele precisa de um algoritmo				//Lucas Adriano Pereira 11/08/2023
que possa realizar esses cálculos.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Matrix;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		
		int[][] numero = new int[4][5];
		int soma=0;
		int[] somaLinha = new int[4];
		StringBuilder mensagem = new StringBuilder();
		
		for(int i=0; i<4; i++) {
			for(int j=0; j<5; j++) {
				numero[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite um número para a "+(i+1)+ "ª linha e "+(j+1)+ "ª coluna:"));
				
				while(numero[i][j] < 0) {
					numero[i][j]= Integer.parseInt(JOptionPane.showInputDialog("Digite o "+(i+1)+ "º número","Erro"));
				}
				soma += numero[i][j];
				somaLinha[i]+=numero[i][j];
			}
			
			mensagem.append("\n"+(i+1)+"ª Linha: "+somaLinha[i]);
		}
	
		JOptionPane.showMessageDialog(null,"Soma de todos os elementos da matriz: "+soma+ " e soma das linhas: "+mensagem.toString());
		}
	}

