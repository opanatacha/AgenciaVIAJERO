package controller;

import model.Contato;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContatoDAO {
    private static String sql;
    private final Connection connection;

    public ContatoDAO(Connection connection) {
        this.connection = connection;
    }

    //CREATE
    public void criarContato(Contato contato) {
        sql="INSERT INTO contato (nome, destino, telefone, email, mensagem) " +
            "VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getDestino());
            stmt.setString(3, contato.getTelefone());
            stmt.setString(4, contato.getEmail());
            stmt.setString(5, contato.getMensagem());

            stmt.executeUpdate();
            System.out.println("\u001B[32mContato criado com sucesso!\u001B[0m" +  "\u001B[32m - Email:\u001B[0m" + contato.getEmail() +
                               "\u001B[32m - Nome:\u001B[0m" + contato.getNome());
        } catch (SQLException e) {
            System.out.println("\u001B[31mContato não foi criado, tente novamente!\u001B[0m" + " Mensagem: " + e.getMessage());
        }
    }

    //READ
    public void consultarContatos() {
        sql="SELECT * FROM contato";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()){

                Contato contato = new Contato();
                contato.setIdContato(resultSet.getInt("id_contato"));
                contato.setNome(resultSet.getString("nome"));
                contato.setDestino(resultSet.getString("destino"));
                contato.setTelefone(resultSet.getString("telefone"));
                contato.setEmail(resultSet.getString("email"));

                System.out.println("ID: %s\nNome: %s\nDestino: %s\nFone: %s\nEmail: %s" +
                                   contato.getIdContato() + contato.getNome() + contato.getDestino() +
                                   contato.getTelefone() + contato.getEmail());
            }

            if(!resultSet.next()){
                System.out.println("\u001B[32mNenhum contato encontrado!\u001B[0m");
            }

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }

    //UPDATE
    public void atualizarContato(Contato contato) {
        sql="UPDATE contato " +
            "SET nome=?, destino=?, telefone=?, email=?, mensagem=? " +
            "WHERE id_contato=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, contato.getNome());
            stmt.setString(2, contato.getDestino());
            stmt.setString(3, contato.getTelefone());
            stmt.setString(4, contato.getEmail());
            stmt.setString(5, contato.getMensagem());
            stmt.setInt(6, contato.getIdContato());

            stmt.executeUpdate();

            System.out.println("\u001B[32mContato atualizado com sucesso!\u001B[0m\n" +
                    "\u001B[32mNome: \u001B[0m" + contato.getNome() +
                    "\u001B[32mE-mail:\u001B[0m" + contato.getEmail());

        } catch (SQLException e) {
            System.out.println("\u001B[31mContato não foi atualizado, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }

    //DELETE
    public void deletarContato(int idContato) {
        sql = "DELETE FROM contato WHERE id_contato=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idContato);

            stmt.executeUpdate();

            System.out.println("\u001B[32mContato excluído com sucesso!\u001B[0m");

        } catch (SQLException e) {
            System.out.println("\u001B[31mContato não foi excluído, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }
}
