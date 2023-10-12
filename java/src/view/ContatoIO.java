package view;

import java.util.Scanner;
import java.sql.Connection;
import database.DatabaseConnection;
import model.Contato;
import controller.ContatoDAO;

public class ContatoIO {


    static Connection connection = DatabaseConnection.createConnection();

    static ContatoDAO contatoDAO = new ContatoDAO(connection);

    public static int SubmenuContato(Scanner scan) {

        int option = Integer.MAX_VALUE;
        do {
            System.out.println("\u001B[34m======CONTATOS=======\u001B[0m");
            System.out.println("\u001B[4m Digite o numero de acordo com o menu abaixo\u001B[0m");
            System.out.println("\u001B[32m[1]\u001B[0m - CRIAR CONTATO");
            System.out.println("\u001B[32m[2]\u001B[0m - CONSULTAR CONTATOS");
            System.out.println("\u001B[32m[3]\u001B[0m - ATUALIZAR CONTATO");
            System.out.println("\u001B[32m[4]\u001B[0m - DELETAR CONTATO");
            System.out.println("\u001B[32m[0]\u001B[0m - SAIR");
            System.out.print("\u001B[32mOpção: \u001B[0m");

            option = scan.nextInt();

            switch (option) {
                case 1:
                    scan.nextLine();
                    Contato contato = new Contato();
                    System.out.print("\u001B[32mNome: \u001B[0m");
                    contato.setNome(scan.nextLine());
                    System.out.print("\u001B[32mDestino: \u001B[0m");
                    contato.setDestino(scan.nextLine());
                    System.out.print("\u001B[32mTelefone: \u001B[0m");
                    contato.setTelefone(scan.nextLine());
                    System.out.print("\u001B[32mEmail: \u001B[0m");
                    contato.setEmail(scan.nextLine());
                    System.out.print("\u001B[32mMensagem: \u001B[0m");
                    contato.setMensagem(scan.nextLine());

                    contatoDAO.criarContato(contato);
                    break;

                case 2:

                    contatoDAO.consultarContatos();
                    break;

                case 3:
                    Contato contatoAtualizado = new Contato();

                    System.out.println("\u001B[32mInforme o ID do contato a ser atualizado: \u001B[0m");
                    contatoAtualizado.setIdContato(scan.nextInt());
                    System.out.print("\u001B[32mInforme o nome a ser atualizado: \u001B[0m");
                    scan.nextLine();
                    contatoAtualizado.setNome(scan.nextLine());
                    System.out.print("\u001B[32mInforme o destino a ser atualizado: \u001B[0m");
                    contatoAtualizado.setDestino(scan.nextLine());
                    System.out.print("\u001B[32mInforme o telefone a ser atualizado: \u001B[0m");
                    contatoAtualizado.setTelefone(scan.nextLine());
                    System.out.print("\u001B[32mInforme o email a ser atualizado: \u001B[0m");
                    contatoAtualizado.setEmail(scan.nextLine());
                    System.out.print("\u001B[32mInforme a mensagem a ser atualizado: \u001B[0m");
                    contatoAtualizado.setMensagem(scan.nextLine());

                    contatoDAO.atualizarContato(contatoAtualizado);
                    break;

                case 4:
                    System.out.println("\u001B[31mInforme o ID do contato a ser deletado: \u001B[0m");
                    int idContato = scan.nextInt();
                    contatoDAO.deletarContato(idContato);

                    break;
                default:
                    System.out.println("\u001B[31mOpção inválida!\u001B[0m");

            }
        } while (option != 0);
        return option;

    }


}
