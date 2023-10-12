package controller;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Usuario;

public class UsuarioDAO {
    private static String sql;
    private final Connection connection;

    public UsuarioDAO(Connection connection) {
        this.connection = connection;
    }

    //CREATE
    public void criarUsuario(Usuario usuario) {
        sql="INSERT INTO usuario (nome, cpf, data_nascimento, telefone, email, senha) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getCpf());
            stmt.setDate(3, new Date(usuario.getDataNascimento().getTime()));
            stmt.setString(4, usuario.getTelefone());
            stmt.setString(5, usuario.getEmail());
            stmt.setString(6, usuario.getSenha());

            stmt.executeUpdate();
            System.out.println("\u001B[32mUsuario criado com sucesso!\u001B[0m" +
                     "\u001B[32mNome: \u001B[0m" + usuario.getNome() +
                    "\u001B[32mEmail:\u001B[0m" + usuario.getEmail());
        } catch (SQLException e) {
            System.out.println("\u001B[31mUsuario não foi criado, tente novamente!\u001B[0m" + " Mensagem: " + e.getMessage());
        }
    }

    //READ
    public void consultarUsuarios() {
        sql="SELECT * FROM usuario";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()){
                Usuario usuario = new Usuario();
                usuario.setNome(resultSet.getString("nome"));
                usuario.setCpf(resultSet.getString("cpf"));
                usuario.setDataNascimento(resultSet.getDate("data_nascimento"));
                usuario.setTelefone(resultSet.getString("telefone"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setSenha(resultSet.getString("senha"));

                System.out.println("Nome: %s\nCPF: %s\nData de nascimento: %s\nTelefone: %s\nEmail: %s" +
                         usuario.getNome() + usuario.getCpf() + usuario.getDataNascimento() +
                        usuario.getTelefone() + usuario.getEmail());
            }
            if(!resultSet.next()){
                System.out.println("\u001B[31mNenhum usuario encontrado!\u001B[0m");
            }

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                    "Mensagem: " + e.getMessage());
        }
    }

    public Usuario consultarUsuario(int idUsuario) {
        sql="SELECT * FROM usuario " +
            "WHERE id_usuario = ?";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, idUsuario);
            ResultSet resultSet = stmt.executeQuery();
            Usuario usuario = null;
            while (resultSet.next()){
                usuario = new Usuario();
                usuario.setIdUsuario(resultSet.getInt("id_usuario"));
                usuario.setNome(resultSet.getString("nome"));
                usuario.setCpf(resultSet.getString("cpf"));
                usuario.setDataNascimento(resultSet.getDate("data_nascimento"));
                usuario.setTelefone(resultSet.getString("telefone"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setSenha(resultSet.getString("senha"));
            }

            if(usuario == null){
                System.out.println("\u001B[31mNenhum usuario encontrado!\u001B[0m");
            }

            return usuario;

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                    "Mensagem: " + e.getMessage());
        }

        return null;
    }

    //UPDATE
    public void atualizarUsuario(Usuario usuario) {
        sql="UPDATE usuario " +
            "SET nome=?, cpf=?, data_nascimento=?, telefone=?, email=?, senha=? " +
            "WHERE id_usuario=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getCpf());
            stmt.setDate(3, new Date(usuario.getDataNascimento().getTime()));
            stmt.setString(4, usuario.getTelefone());
            stmt.setString(5, usuario.getEmail());
            stmt.setString(6, usuario.getSenha());
            stmt.setInt(7, usuario.getIdUsuario());

            stmt.executeUpdate();
            System.out.println("\u001B[32mUsuario atualizado com sucesso!\u001B[0m\n" +
                    "\u001B[32mNome: \u001B[0m" + usuario.getNome() +
                    "\u001B[32mEmail:\u001B[0m" + usuario.getEmail());

        } catch (SQLException e) {
            System.out.println("\u001B[31mUsuario não foi atualizado, tente novamente!\u001B[0m" +
                    "Mensagem: " + e.getMessage());
        }
    }

    //DELETE
    public void deletarUsuario(int idUsuario) {
        sql = "DELETE FROM usuario WHERE id_usuario=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idUsuario);

            stmt.executeUpdate();

            System.out.println("\u001B[32mUsuario excluído com sucesso!\u001B[0m");

        } catch (SQLException e) {
            System.out.println("\u001B[31mUsuario não foi excluído, tente novamente!\u001B[0m" +
                    "Mensagem: " + e.getMessage());
        }
    }
}