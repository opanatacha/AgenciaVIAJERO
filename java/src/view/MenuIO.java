package view;

import java.util.Scanner;

public class MenuIO {
    public static int menu(Scanner scan) {
        System.out.println("\u001B[34m======AGENCIA VIAJERO=======\u001B[0m");
        System.out.println("\u001B[4m Digite o numero de acordo com o menu abaixo\u001B[0m");
        System.out.println("\u001B[32m[1]\u001B[0m - TABELA DE CONTATOS");
        System.out.println("\u001B[32m[2]\u001B[0m - TABELA DE VIAGENS");
        System.out.println("\u001B[32m[3]\u001B[0m - TABELA DE USUARIOS");
        System.out.println("\u001B[32m[4]\u001B[0m - TABELA DE PEDIDOS");
        System.out.println("\u001B[32m[0]\u001B[0m - SAIR");

        return scan.nextInt();

    }
}
