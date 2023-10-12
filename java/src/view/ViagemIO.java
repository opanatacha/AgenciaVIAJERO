package view;

import java.util.Scanner;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.sql.Connection;
import database.DatabaseConnection;
import controller.ViagemDAO;
import model.Viagem;

public class ViagemIO {

    static Connection connection = DatabaseConnection.createConnection();

    static ViagemDAO viagemDAO = new ViagemDAO(connection);


    static DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

    public static int SubmenuContato(Scanner scan) {

        int option = Integer.MAX_VALUE;
        do {
            System.out.println("\u001B[34m======VIAGENS=======\u001B[0m");
            System.out.println("\u001B[4m Digite o numero de acordo com o menu abaixo\u001B[0m");            System.out.println("\u001B[32m[1]\u001B[0m - CRIAR PACOTES DE VIAGENS");
            System.out.println("\u001B[32m[2]\u001B[0m - CONSULTAR VIAGENS");
            System.out.println("\u001B[32m[3]\u001B[0m - ATUALIZAR VIAGEM");
            System.out.println("\u001B[32m[4]\u001B[0m - DELETAR VIAGEM");
            System.out.println("\u001B[32m[0]\u001B[0m - SAIR");
            System.out.print("\u001B[32mOpção: \u001B[0m");

            option = scan.nextInt();


            switch (option) {
                case 1:
                    scan.nextLine();
                    Viagem viagem = new Viagem();
                    System.out.println("\u001B[32mOrigem: \u001B[0m");
                    viagem.setOrigem(scan.nextLine());
                    System.out.println("\u001B[32mDestino: \u001B[0m");
                    viagem.setDestino(scan.nextLine());
                    System.out.println("\u001B[32mData e horário de ida [dd/MM/aaaa HH:mm:ss]: \u001B[0m");
                    String dataIdaViagem = scan.nextLine();
                    viagem.setDataIda(LocalDateTime.parse(dataIdaViagem, formatter));
                    System.out.println("\u001B[32mData e horário de volta [dd/MM/aaaa HH:mm:ss]: \u001B[0m");
                    String dataVoltaViagem = scan.nextLine();
                    viagem.setDataVolta(LocalDateTime.parse(dataVoltaViagem, formatter));
                    System.out.println("\u001B[32mTipo da viagem: \u001B[0m");
                    System.out.println("[PACOTE / EXCURSAO]");
                    viagem.setTipoViagem(scan.nextLine());
                    System.out.println("\u001B[32mQuantidade de pessoas: \u001B[0m");
                    viagem.setQtdPessoas(scan.nextInt());
                    System.out.println("\u001B[32mHospedagem: \u001B[0m");
                    viagem.setHospedagem(scan.nextLine());
                    System.out.println("\u001B[32mTipo da Hospedagem: \u001B[0m");
                    System.out.println("[POUSADA / HOTEL / HOSTEL / OUTRO]");
                    viagem.setTipoHospedagem(scan.nextLine());
                    System.out.println("\u001B[32mEndereço de Hospedagem: \u001B[0m");
                    viagem.setEnderecoHospedagem(scan.nextLine());
                    System.out.println("\u001B[32mGuia Turismo: \u001B[0m");
                    viagem.setGuiaTurismo(scan.nextLine());
                    System.out.println("\u001B[32mAgência de Transporte: \u001B[0m");
                    viagem.setAgenciaTransporte(scan.nextLine());
                    System.out.println("\u001B[32mCódigo de Transporte: \u001B[0m");
                    viagem.setCodigoTransporte(scan.nextLine());
                    System.out.println("\u001B[32mDescrição: \u001B[0m");
                    viagem.setDescricaoViagem(scan.nextLine());
                    System.out.println("\u001B[32mValor: \u001B[0m");
                    viagem.setValorViagem(scan.nextDouble());

                    viagemDAO.criarViagem(viagem);
                    break;

                case 2:
                    viagemDAO.consultarViagens();
                    break;

                case 3:
                    Viagem viagemAtualizada = new Viagem();

                    System.out.print("\u001B[32mInforme a origem a ser atualizada: \u001B[0m");
                    viagemAtualizada.setOrigem(scan.nextLine());
                    System.out.print("\u001B[32mInforme o destino a ser atualizado: \u001B[0m");
                    viagemAtualizada.setDestino(scan.nextLine());
                    System.out.print("\u001B[32mInforme a data e o horario de ida a serem atualizados: \u001B[0m");
                    System.out.println("[dd/MM/aaaa HH:mm:ss]");
                    String dataIdaAtualizada = scan.nextLine();
                    viagemAtualizada.setDataIda(LocalDateTime.parse(dataIdaAtualizada, formatter));
                    System.out.print("\u001B[32mInforme a data e o horario de volta a serem atualizados: \u001B[0m");
                    System.out.println("[dd/MM/aaaa HH:mm:ss]");
                    String dataVoltaAtualizada = scan.nextLine();
                    viagemAtualizada.setDataVolta(LocalDateTime.parse(dataVoltaAtualizada, formatter));
                    System.out.print("\u001B[32mInforme o tipo da viagem a ser atualizado: \u001B[0m");
                    System.out.println("[PACOTE / EXCURSÃO]");
                    viagemAtualizada.setTipoViagem(scan.nextLine());
                    System.out.print("\u001B[32mInforme a quantidade de pessoas a ser atualizada: \u001B[0m");
                    viagemAtualizada.setQtdPessoas(scan.nextInt());
                    System.out.print("\u001B[32mInforme a hospedagem a ser atualizada: \u001B[0m");
                    viagemAtualizada.setHospedagem(scan.nextLine());
                    System.out.print("\u001B[32mInforme o tipo da hospedagem a ser atualizado: \u001B[0m");
                    System.out.println("[POUSADA / HOTEL / HOSTEL / OUTRO]");
                    viagemAtualizada.setTipoHospedagem(scan.nextLine());
                    System.out.print("\u001B[32mInforme o endereço da hospedagem a ser atualizado: \u001B[0m");
                    viagemAtualizada.setEnderecoHospedagem(scan.nextLine());
                    System.out.print("\u001B[32mInforme o guia turismo a ser atualizado: \u001B[0m");
                    viagemAtualizada.setGuiaTurismo(scan.nextLine());
                    System.out.print("\u001B[32mInforme a agência de transporte a ser atualizada: \u001B[0m");
                    viagemAtualizada.setAgenciaTransporte(scan.nextLine());
                    System.out.print("\u001B[32mInforme o código de transporte a ser atualizado: \u001B[0m");
                    viagemAtualizada.setCodigoTransporte(scan.nextLine());
                    System.out.print("\u001B[32mInforme a descrição da viagem a ser atualizada: \u001B[0m");
                    viagemAtualizada.setDescricaoViagem(scan.nextLine());
                    System.out.print("\u001B[32mInforme o valor da viagem a ser atualizada: \u001B[0m");
                    viagemAtualizada.setValorViagem(scan.nextDouble());

                    viagemDAO.atualizarViagem(viagemAtualizada);
                    break;

                case 4:
                    System.out.println("\u001B[31mInforme o ID do viagem a ser deletado: \u001B[0m");
                    int idViagem = scan.nextInt();
                    viagemDAO.deletarViagem(idViagem);

                    break;
                default:
                    System.out.println("\u001B[31mOpção inválida!\u001B[0m");

            }
        } while (option != 0);
        return option;

    }

}
