package app;

import java.util.Scanner;

import view.MenuIO;
import view.ViagemIO;
import view.ContatoIO;
import view.PedidoIO;
import view.UsuarioIO;

public class Main {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);


        int option = 0;

            do {
                option = MenuIO.menu(scan);

                switch (option) {
                    case 1:
                        ContatoIO.SubmenuContato(scan);
                        break;
                    case 2:
                        ViagemIO.SubmenuContato(scan);
                        break;
                    case 3:
                        UsuarioIO.SubmenuUsuario(scan);
                        break;
                    case 4:
                        PedidoIO.SubmenuUsuario(scan);

                    default:
                        System.out.println("\u001B[31mOpção inválida!\u001B[0m");
                }

            }while (option != 0) ;
                scan.close();

    }
}