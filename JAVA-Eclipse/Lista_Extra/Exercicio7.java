/*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Um estudante do ensino médio gostaria de controlar melhor suas notas nas
disciplinas exatas. Ele gostaria de poder enxergar suas notas dos 4 bimestres com
exatamente duas casas decimais e em formato de matriz, como no exemplo a
seguir:

Matemática 	Física 	Química
   9.53	 	 8.66 	  8.45
   7.57 	 9.00 	  8.01																//Lucas Adriano Pereira 04/09/2023
   8.87 	 9.44 	  7.88
   7.30 	 6.77 	  9.21

Além disso, o estudante gostaria de poder escolher algumas opções de visualização
de acordo com o menu abaixo:
• Todas as notas de todas as disciplinas;
• Qual a maior nota e em qual disciplina foi;
• A média das notas de alguma disciplina (solicitar qual);
• As notas de um dos bimestres (solicitar qual);
• Encerrar.
Faça um programa que permita cadastrar as notas de acordo com o exemplo
(considerando a ordem das disciplinas) e forneça os dados supracitados. O menu
deve ser exibido repetitivamente, até que o usuário deseje encerrar o programa.
*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {
		
		int[][] notas = new int[4][3];
		String[] materias = new String[]{"Matemática","Física","Química"};
		StringBuilder matriz = new StringBuilder();
		StringBuilder mostrarMaterias = new StringBuilder();
		int qualMateria=0, qualBimestre=0;
		double maior = 0.0, mediaNotas=0.0, mediaMat=0.0, mediaFisi=0.0, mediaQui=0.0, notaPrimeiroBi=0.0, notaSegundoBi=0.0, notaTerceiroBi=0.0, notaQuartoBi=0.0;
		boolean verificar = false;
		
		matriz.append("\n");
		for(int i=0; i<notas.length; i++) {
			for(int j=0; j<(notas.length-1); j++) {
				notas[i][j] = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a "+(i+1)+"ª nota da matéria " +(materias[j])+ ":"));
				
				while(notas[i][j] > 10 || notas[i][j] < 0) {
					notas[i][j] = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a "+(i+1)+"ª nota da matéria " +(materias[j])+ ":"
							,"Erro",JOptionPane.INFORMATION_MESSAGE));
				}
				
				matriz.append("       | "+notas[i][j]+" |          ");
				if(maior < notas[i][j]) {
					maior = notas[i][j];
				}
			}
			matriz.append("\n");
		}
		JOptionPane.showMessageDialog(null, "Opções de visualização");
		
		int opcao = Integer.parseInt(JOptionPane.showInputDialog(null, "\n(1) Todas as notas de todas as disciplinas;"
				+ "\n(2) Qual a maior nota e em qual disciplina foi;"
				+ "\n(3) A média das notas de alguma disciplina (solicitar qual);"
				+ "\n(4) As notas de um dos bimestres (solicitar qual);"
				+ "\n(5) Encerrar"));
		
		while(opcao != 1 && opcao != 2 && opcao != 3 && opcao != 4 && opcao != 5) {
			opcao = Integer.parseInt(JOptionPane.showInputDialog(null, "\n(1) Todas as notas de todas as disciplinas;"+ "\n(2) Qual a maior nota e em qual disciplina foi;"
					+ "\n(3) A média das notas de alguma disciplina (solicitar qual);"
					+ "\n(4) As notas de um dos bimestres (solicitar qual);"
					+ "\n(5) Encerrar"
					,"Erro",JOptionPane.INFORMATION_MESSAGE));
		}
		
	do {	
			switch(opcao) {
			
			case 1:
				for(int i = 0; i<materias.length; i++ ) {
					mostrarMaterias.append(materias[i]+ "        ");
				}
				JOptionPane.showMessageDialog(null, mostrarMaterias.toString() + matriz.toString());
				break;
				
			case 2:
				JOptionPane.showMessageDialog(null, "Maior nota " +maior);
				break;
				
			case 3:
				qualMateria = Integer.parseInt(JOptionPane.showInputDialog(null, "\nQual matéria deseja ver a média: \n(1) Matemática \n(2) Física \n(3) Química"));
				
				while(qualMateria != 1 && qualMateria != 2 && qualMateria != 3) {
					qualMateria = Integer.parseInt(JOptionPane.showInputDialog(null, "\nQual matéria deseja ver a média: \n(1) Matemática \n(2) Física \n(3) Química"
							,"Erro",JOptionPane.INFORMATION_MESSAGE));
				}
				for(int i=0; i<3; i++) {
					mediaMat += notas[i][0];
					mediaFisi += notas[i][1];
					mediaQui += notas[i][2];
				}
					
				if(qualMateria == 1) {
					mediaNotas = mediaMat / 4; 
					JOptionPane.showMessageDialog(null, "Média das notas de matemática: "+ mediaNotas);
				}
				else if(qualMateria == 2) {
					mediaNotas = mediaFisi / 4;
					JOptionPane.showMessageDialog(null, "Média das notas de física: "+ mediaNotas);
				}
				else {
					mediaNotas = mediaQui / 4;
					JOptionPane.showMessageDialog(null, "Média das notas de química: "+ mediaNotas);
				}
				break;
		
			case 4:
				qualBimestre = Integer.parseInt(JOptionPane.showInputDialog(null, "\nQual bimestre você deseja ver as notas? \n(1) 1º Bimestre \n(2) 2º Bimestre \n(3) 3º Bimestre \n(4) 4º Bimestre"));
				
				
				while(qualBimestre != 1 && qualBimestre != 2 && qualBimestre != 3 && qualBimestre != 4) {
					qualBimestre = Integer.parseInt(JOptionPane.showInputDialog(null, "\\nQual bimestre você deseja ver as notas? \\n(1) 1º Bimestre \\n(2) 2º Bimestre \\n(3) 3º Bimestre \\n(4) 4º Bimestre"
							,"Erro",JOptionPane.INFORMATION_MESSAGE));
				}
			
				for(int j=0; j<4; j++) {
					notaPrimeiroBi += notas[0][j];
					notaSegundoBi += notas[1][j];
					notaTerceiroBi += notas[2][j];
					notaQuartoBi += notas[3][j];
				}
					if(qualBimestre == 1) {
						JOptionPane.showMessageDialog(null, "Notas do 1º bimestre: "+ notaPrimeiroBi);
					}
					else if(qualBimestre == 2) {
						JOptionPane.showMessageDialog(null, "Notas do 2º bimestre: "+ notaSegundoBi);
					}
					else if(qualBimestre == 3){
						JOptionPane.showMessageDialog(null, "Notas do 3º bimestre: "+ notaTerceiroBi);
					}
					else {
						JOptionPane.showMessageDialog(null, "Notas do 4º bimestre: "+ notaQuartoBi);
					}
				break;
		
			case 5:
				JOptionPane.showMessageDialog(null, "Você encerrou o programa!!");
				break;
			}
		
			if(opcao != 5) {
				String continua = JOptionPane.showInputDialog(null, "Deseja continuar a pesquisa (s/n)");
				
				while(!continua.equalsIgnoreCase("s") && !continua.equalsIgnoreCase("n")) {
					continua = JOptionPane.showInputDialog(null, "Deseja continuar a pesquisa (s/n)","Erro",JOptionPane.INFORMATION_MESSAGE);
				}
				if(continua.equalsIgnoreCase("s")) {
					verificar = true;
				}else {
					verificar = false;
				}
			}
		}while(verificar);
	}
}
