package database;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/viajero_db";
    private static final String USUARIO = "root";
    private static final String SENHA = "root";


    public static Connection createConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("\u001B[32mDriver encontrado!\u001B[0m");
        } catch (ClassNotFoundException e) {
            System.out.println( "\u001B[31mDriver não encontrado! Mensagem: \u001B[0m" + e.getMessage());
        }

        try {
            Connection connection = DriverManager.getConnection(URL, USUARIO, SENHA);
            System.out.println("\u001B[32mConexão realizada com sucesso!\u001B[0m");

            return connection;
        }
        catch (SQLException e) {
            System.out.println("\u001B[31mFalha na conexão! Mensagem: \u001B[0m" + e.getMessage());
            return null;
        }
    }

}
