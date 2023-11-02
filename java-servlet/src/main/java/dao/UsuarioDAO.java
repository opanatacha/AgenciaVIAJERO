package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

            Date data = Date.valueOf(usuario.getDataNascimento());
            stmt.setDate(3, data);

            stmt.setString(4, usuario.getTelefone());
            stmt.setString(5, usuario.getEmail());
            stmt.setString(6, usuario.getSenha());

            stmt.executeUpdate();
            System.out.println("\u001B[32mUsuario criado com sucesso!\u001B[0m" +
                    "\u001B[32mNome: \u001B[0m " + usuario.getNome() +
                    " \u001B[32mEmail:\u001B[0m " + usuario.getEmail());
        } catch (SQLException e) {
            System.out.println("\u001B[31mUsuario não foi criado, tente novamente!\u001B[0m" + " Mensagem: " + e.getMessage());
        }
    }

    //READ
    public List<Usuario> consultarUsuarios() {
        sql="SELECT * FROM usuario";

        List<Usuario> usuarios = new ArrayList<Usuario>();
        ResultSet resultSet = null;

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            resultSet = stmt.executeQuery();
            while (resultSet.next()){
                Usuario usuario = new Usuario();
                usuario.setNome(resultSet.getString("nome"));
                usuario.setCpf(resultSet.getString("cpf"));
                usuario.setDataNascimento(resultSet.getDate("data_nascimento").toLocalDate());
                usuario.setTelefone(resultSet.getString("telefone"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setSenha(resultSet.getString("senha"));

                usuarios.add(usuario);
            }

        } catch (SQLException e) {
           e.getMessage();
        }
        return usuarios;
    }

    public Usuario consultarUsuario(int idUsuario) {
        sql="SELECT * FROM usuario WHERE id_usuario = ?";
        Usuario usuario = null;

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, idUsuario);
            ResultSet resultSet = stmt.executeQuery();

            if (resultSet.next()){
                usuario = new Usuario();
                usuario.setId(resultSet.getInt("id_usuario"));
                usuario.setNome(resultSet.getString("nome"));
                usuario.setCpf(resultSet.getString("cpf"));
                usuario.setDataNascimento(resultSet.getDate("data_nascimento").toLocalDate());
                usuario.setTelefone(resultSet.getString("telefone"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setSenha(resultSet.getString("senha"));
            }
        } catch (SQLException e) {
             e.getMessage();
        }

        return usuario;
    }

    public int consultarIdUsuario(String cpf) {
        sql="SELECT * FROM usuario WHERE cpf = ?";
        int idUsuario = 0;

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, cpf);
            ResultSet resultSet = stmt.executeQuery();

            if (resultSet.next()){
                idUsuario = resultSet.getInt("id_usuario");
            }
        } catch (SQLException e) {
            e.getMessage();
        }

        return idUsuario;
    }


    //UPDATE
    public void atualizarUsuario(Usuario usuario) {
        sql="UPDATE usuario " +
                "SET nome=?, cpf=?, data_nascimento=?, telefone=?, email=?, senha=? " +
                "WHERE id_usuario=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getCpf());

            Date data = Date.valueOf(usuario.getDataNascimento());
            stmt.setDate(3, data);

            stmt.setString(4, usuario.getTelefone());
            stmt.setString(5, usuario.getEmail());
            stmt.setString(6, usuario.getSenha());
            stmt.setInt(7, usuario.getId());

            stmt.executeUpdate();

            System.out.println("\u001B[32mUsuario atualizado com sucesso!\u001B[0m");

        } catch (SQLException e) {
            e.getMessage();
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
            e.getMessage();
        }
    }


}
