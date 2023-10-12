package view;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.sql.Connection;

import controller.UsuarioDAO;
import controller.ViagemDAO;
import database.DatabaseConnection;
import model.Pedido;
import controller.PedidoDAO;
import model.Usuario;
import model.Viagem;

public class PedidoIO {


    static Connection connection = DatabaseConnection.createConnection();

    static PedidoDAO pedidoDAO = new PedidoDAO(connection);
    static UsuarioDAO usuarioDAO = new UsuarioDAO(connection);
    static ViagemDAO viagemDAO = new ViagemDAO(connection);

    static DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

    public static int SubmenuUsuario(Scanner scan) {

        int option = Integer.MAX_VALUE;
        do {
            System.out.println("\u001B[34m======PEDIDOS=======\u001B[0m");
            System.out.println("\u001B[4m Digite o numero de acordo com o menu abaixo\u001B[0m");
            System.out.println("\u001B[32m[1]\u001B[0m - CRIAR PEDIDO");
            System.out.println("\u001B[32m[2]\u001B[0m - CONSULTAR PEDIDOS");
            System.out.println("\u001B[32m[3]\u001B[0m - ATUALIZAR PEDIDO");
            System.out.println("\u001B[32m[4]\u001B[0m - DELETAR PEDIDO");
            System.out.println("\u001B[32m[0]\u001B[0m - SAIR");
            System.out.print("\u001B[32mOpção: \u001B[0m");

            option = scan.nextInt();

            switch (option) {
                case 1:
                    scan.nextLine();
                    Pedido pedido = new Pedido();
                    System.out.print("\u001B[32mNumero do pedido: \u001B[0m");
                    pedido.setNumPedido(scan.nextInt());
                    scan.nextLine();
                    System.out.print("\u001B[32mData e horário do pedido [dd/MM/aaaa HH:mm:ss]: \u001B[0m");
                    String dataPedido = scan.nextLine();
                    pedido.setDataPedido(LocalDateTime.parse(dataPedido, formatter));
                    System.out.println("\u001B[32mForma de pagamento: \u001B[0m");
                    pedido.setFormaPagamento(scan.nextLine());
                    System.out.println("\u001B[32mValor total: \u001B[0m");
                    pedido.setValorTotal(scan.nextDouble());
                    scan.nextLine();
                    System.out.println("\u001B[32mDigite o id do usuario: \u001B[0m");
                    pedido.setUsuario(usuarioDAO.consultarUsuario(Integer.parseInt(scan.nextLine())));
//                    pedido.getUsuario().setIdUsuario(Integer.parseInt(scan.nextLine()));
                    System.out.println("\u001B[32mDigite o id do viagem: \u001B[0m");
//                    pedido.getViagem().setIdViagem(Integer.parseInt(scan.nextLine()));
                    pedido.setViagem(viagemDAO.consultarViagem(Integer.parseInt(scan.nextLine())));

                    pedidoDAO.criarPedido(pedido);
                    break;

                case 2:

                    pedidoDAO.consultarPedidos();
                    break;

                case 3:
                  Pedido pedidoAtualizado = new Pedido();

                    System.out.println("\u001B[31mInforme o numero do pedido a ser atualizado: \u001B[0m");
                    pedidoAtualizado.setNumPedido(scan.nextInt());
                    scan.nextLine();
                    System.out.println("\u001B[31mInforme a nova data do pedido: \u001B[0m");
                    String dataPedidoAtualizado = scan.nextLine();
                    pedidoAtualizado.setDataPedido(LocalDateTime.parse(dataPedidoAtualizado, formatter));
                    System.out.println("\u001B[31mInforme a nova forma de pagamento: \u001B[0m");
                    pedidoAtualizado.setFormaPagamento(scan.nextLine());
                    System.out.println("\u001B[31mInforme o novo valor total: \u001B[0m");
                    pedidoAtualizado.setValorTotal(scan.nextDouble());
                    System.out.println("\u001B[31mInforme o id do usuario a ser atualizado: \u001B[0m");
                    Usuario usuarioAtualizado = new Usuario();
                    usuarioAtualizado.setIdUsuario(scan.nextInt());
                    System.out.println("\u001B[31mInforme o id da viagem a ser atualizada: \u001B[0m");
                    Viagem viagemAtualizado = new Viagem();
                    viagemAtualizado.setIdViagem(scan.nextInt());


                case 4:
                    System.out.println("\u001B[31mInforme o ID do pedido a ser deletado: \u001B[0m");
                    int idPedido = scan.nextInt();
                    pedidoDAO.deletarPedido(idPedido);

                    break;
                default:
                    System.out.println("\u001B[31mOpção inválida!\u001B[0m");

            }
        } while (option != 0);
        return option;

    }


}
