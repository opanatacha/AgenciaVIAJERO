package view;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;
import java.sql.Connection;
import database.DatabaseConnection;
import model.Usuario;
import controller.UsuarioDAO;

public class UsuarioIO {


    static Connection connection = DatabaseConnection.createConnection();

    static UsuarioDAO usuarioDAO = new UsuarioDAO(connection);

    static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    public static int SubmenuUsuario(Scanner scan) {

        int option = Integer.MAX_VALUE;
        do {
            System.out.println("\u001B[34m=======USUARIOS=======\u001B[0m");
            System.out.println("\u001B[4m Digite o numero de acordo com o menu abaixo\u001B[0m");
            System.out.println("\u001B[32m[1]\u001B[0m - CRIAR USUARIO");
            System.out.println("\u001B[32m[2]\u001B[0m - CONSULTAR USUARIOS");
            System.out.println("\u001B[32m[3]\u001B[0m - ATUALIZAR USUARIO");
            System.out.println("\u001B[32m[4]\u001B[0m - DELETAR USUARIO");
            System.out.println("\u001B[32m[0]\u001B[0m - SAIR");
            System.out.print("\u001B[32mOpção: \u001B[0m");

            option = scan.nextInt();

            switch (option) {
                case 1:
                    scan.nextLine();
                    Usuario usuario = new Usuario();
                    System.out.print("\u001B[32mNome: \u001B[0m");
                    usuario.setNome(scan.nextLine());
                    System.out.print("\u001B[32mCPF: \u001B[0m");
                    usuario.setCpf(scan.nextLine());
                    System.out.print("\u001B[32mData de nascimento: \u001B[0m");
                    try {
                        usuario.setDataNascimento(sdf.parse(scan.nextLine()));
                    } catch (ParseException e) {
                        System.out.println("Formato de data inválido. Use dd/mm/aaaa.");
                    }
                    System.out.print("\u001B[32mTelefone: \u001B[0m");
                    usuario.setTelefone(scan.nextLine());
                    System.out.print("\u001B[32mEmail: \u001B[0m");
                    usuario.setEmail(scan.nextLine());
                    System.out.print("\u001B[32mSenha: \u001B[0m");
                    usuario.setSenha(scan.nextLine());

                    usuarioDAO.criarUsuario(usuario);
                    break;

                case 2:

                    usuarioDAO.consultarUsuarios();
                    break;

                case 3:
                    Usuario usuarioAtualizado = new Usuario();

                    System.out.println("\u001B[32mInforme o id do usuario a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setIdUsuario(scan.nextInt());
                    scan.nextLine();
                    System.out.print("\u001B[32mInforme o nome a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setNome(scan.nextLine());
                    System.out.print("\u001B[32mInforme o cpf a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setCpf(scan.nextLine());
                    System.out.print("\u001B[32mInforme a data de nascimento a ser atualizada: \u001B[0m");
                    try {
                        usuarioAtualizado.setDataNascimento((Date) sdf.parse(scan.nextLine()));
                    } catch (ParseException e) {
                        System.out.println("Formato de data inválido. Use dd/mm/aaaa.");
                    }
                    System.out.print("\u001B[32mInforme o telefone a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setTelefone(scan.nextLine());
                    System.out.print("\u001B[32mInforme o email a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setEmail(scan.nextLine());
                    System.out.print("\u001B[32mInforme a senha a ser atualizado: \u001B[0m");
                    usuarioAtualizado.setSenha(scan.nextLine());

                    usuarioDAO.atualizarUsuario(usuarioAtualizado);
                    break;

                case 4:
                    System.out.println("\u001B[31mInforme o ID do usuario a ser deletado: \u001B[0m");
                    int idUsuario = scan.nextInt();
                    usuarioDAO.deletarUsuario(idUsuario);

                    break;
                default:
                    System.out.println("\u001B[31mOpção inválida!\u001B[0m");

            }
        } while (option != 0);
        return option;

    }


}
