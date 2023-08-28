/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Um professor deseja ter uma aplicação que calcule a média PONDERADA de seus
cinco alunos durante o bimestre. O bimestre é composto por 2 notas, portanto, é
necessário criar dois vetores para armazenar cada uma das notas dos alunos. Em			//Lucas Adriano Pereira 09/08/2023
seguida, outro vetor deve ser criado para armazenar o resultado da média dos alunos.
*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Arrays;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		
		double[] notas1 = new double[5];
		double[] notas2 = new double[5];
		double[] media = new double[5];
		int peso1= 0, peso2=0;
		StringBuilder mensagem = new StringBuilder("----------------Médias----------------\n");
		
		peso1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o peso da 1ª prova:"));
		while(peso1 > 1 || peso1 <10) {
			peso1= Integer.parseInt(JOptionPane.showInputDialog("Digite o peso da 1ª prova:","Erro"));
		}
		peso2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o peso da 2ª prova:"));
		while(peso2 > 1 || peso2 < 10) {
			peso2= Integer.parseInt(JOptionPane.showInputDialog("Digite o peso da 2ª prova:","Erro"));
		}
		
		JOptionPane.showMessageDialog(null,"--------------1ª nota--------------\n");
		for(int i=0; i<notas1.length; i++) {
			notas1[i]= Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:"));
			
			while(notas1[i] > 0 || notas1[i] < 10) {
				notas1[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:","Erro"));
			}
		}
		
		JOptionPane.showMessageDialog(null,"--------------2ª nota--------------\n");
		for(int i=0; i<notas2.length; i++) {
			notas2[i]= Double.parseDouble(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:"));
			
			while(notas2[i] > 0 || notas2[i] < 10) {
				notas2[i]= Integer.parseInt(JOptionPane.showInputDialog("Digite a nota do "+(i+1)+ "º aluno:","Erro"));
			}
		}
		for(int i=0; i<notas2.length; i++) {
			media[i] = ((notas1[i] * peso1) + (notas2[i] * peso2)) / (peso1 + peso2);
			
			mensagem.append("\n"+(i+1)+"º Aluno: ").append(media[i]);
		}
		JOptionPane.showMessageDialog(null,mensagem.toString());
	}
}
