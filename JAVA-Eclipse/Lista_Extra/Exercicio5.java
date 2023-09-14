/*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Faça um programa que solicite alguns dados dos usuários que frequentam um clube.
O programa deve solicitar a idade, se a pessoa é fumante ou não (1- SIM, 2- NÃO),
seu salário líquido e há quanto tempo frequenta o clube (em meses). O usuário deverá
digitar “encerrar” quando não tiver mais pessoas para registrar. Como dados de saída,
o programa deve exibir:																		//Lucas Adriano Pereira 31/08/2023
• A média das idades das pessoas;
• A média salarial das pessoas;
• Quantos são fumantes e quantos não são fumantes;
• A porcentagem de pessoas que frequentam o clube há mais de 03 meses.
Não esqueça de validar os valores de entrada.
*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
package Lista_Extra;

import javax.swing.JOptionPane;

public class Exercicio5 {
	public static void main(String[] args) {
		
		boolean continua = false;
		int somaIdade=0, contSim=0, contNao=0, contMais3Meses=0, cont=0, mediaIdade=0;
		double somaSalario=0.0, porcentagem=0.0, mediaSalario=0.0;
		
		do {
			cont++;
			int idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual a sua idade:"));
			while(idade < 0) {
				idade = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual a sua idade:","Erro",JOptionPane.INFORMATION_MESSAGE));
			}
			somaIdade += idade;
			
			int fumante = Integer.parseInt(JOptionPane.showInputDialog(null, "Você é fumante? \n(1) Sim \n(2) Não"));
			while(fumante != 1 && fumante !=2) {
				fumante = Integer.parseInt(JOptionPane.showInputDialog(null, "Você é fumante? \n(1) Sim \n(2) Não","Erro",JOptionPane.INFORMATION_MESSAGE));
			}
			if(fumante == 1) {
				contSim++;
			}
			else{
				contNao++;
			}
			
			double salario = Double.parseDouble(JOptionPane.showInputDialog("Digite o seu salário líquido:"));
			while(salario <0) {
				salario = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o seu salário líquido:","Erro",JOptionPane.INFORMATION_MESSAGE));
			}
			somaSalario += salario;
			
			int meses = Integer.parseInt(JOptionPane.showInputDialog(null, "A quantos mêses você frequenta o clube?"));
			while(meses < 0) {
				meses = Integer.parseInt(JOptionPane.showInputDialog(null, "A quantos mêses você frequenta o clube?","Erro",JOptionPane.INFORMATION_MESSAGE));
			}
			if(meses > 3) {
				contMais3Meses++;
			}
			
			String continuar = JOptionPane.showInputDialog(null, "Se tiver mais pessoas digite 's' senão digite 'encerrar'.");
			while(!continuar.equalsIgnoreCase("encerrar") && !continuar.equalsIgnoreCase("s")) {
				continuar = JOptionPane.showInputDialog(null, "Se tiver mais pessoas digite 's' senão digite 'encerrar'.","Erro",JOptionPane.INFORMATION_MESSAGE);
			}
			
			if(continuar.equalsIgnoreCase("encerrar")) {
				continua = false;
			}else{
				continua = true;
			}
			
		}while(continua);
		
		porcentagem = (contMais3Meses*100)/cont;
		mediaIdade = somaIdade / cont;
		mediaSalario = somaSalario / cont;
		
		JOptionPane.showMessageDialog(null, "Media de idade das pessoas: "+mediaIdade+"\nMedia de salário das pessoas: "+mediaSalario
				+"\nQuantidade das pessoas que SÃO fumantes: "+contSim+"\nQuantidade das pessoas que NÃO são fumantes: "
				+contNao+"\nPorcentagem das pessoas que frequentam o clube a mais de 3 meses: "+porcentagem+"%");
	}
}
