/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Uma turma do curso de programação da escola X é formada por 30 alunos. Faça um
programa que leia as notas de cada aluno em uma avaliação e armazene-as em um			//Lucas Adriano Pereira 09/08/2023
vetor. O programa deve calcular e imprimir a média da turma e a quantidade de alunos
que ficaram acima da média. 
*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Arrays;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {

		double[] notas = new double[30];
		double media = 0.0;
		int contAcimaMedia=0;
		
		for(int i=0; i<30; i++) {
			notas[i]= Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno"));
			while(notas[i] > 0 || notas[i] <10) {
				notas[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:","Erro"));
			}
			media += notas[i];
			
			if(notas[i] > 7) {
				contAcimaMedia++;
			}
		}
		media /= 30;
	
		JOptionPane.showMessageDialog(null,"Média da turma: "+media+"\nQuantidade de pesssoas acima da média: "+contAcimaMedia);
	}
}
