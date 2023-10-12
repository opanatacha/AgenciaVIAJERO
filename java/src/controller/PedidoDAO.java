package controller;

import model.Pedido;
import java.sql.Connection;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PedidoDAO {
    private static String sql;
    private final Connection connection;

    public PedidoDAO(Connection connection) {
        this.connection = connection;
    }

    //CREATE
    public void criarPedido(Pedido pedido) {
        sql="INSERT INTO pedido (num_pedido, data_pedido, forma_pagamento, valor_total, id_usuario, id_viagem) " +
            "VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, pedido.getNumPedido());
            Timestamp sqlDataPedido = Timestamp.valueOf(pedido.getDataPedido());
            stmt.setTimestamp(2, sqlDataPedido);
            stmt.setString(3, pedido.getFormaPagamento());
            stmt.setDouble(4, pedido.getValorTotal());
            stmt.setInt(5, pedido.getUsuario().getIdUsuario());
            stmt.setInt(6, pedido.getViagem().getIdViagem());

            stmt.executeUpdate();
            System.out.println("\u001B[32mPedido criado com sucesso!\u001B[0m" + "\u001B[32m do Usuário:\u001B[0m"
                    + pedido.getUsuario().getNome());
        } catch (SQLException e) {
            System.out.println("\u001B[31mPedido não foi criado, tente novamente!\u001B[0m" + " Mensagem: " + e.getMessage());
        }
    }

    //READ
    public void consultarPedidos() {
        sql="SELECT * FROM pedido";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()){
                Pedido pedido = new Pedido();
                pedido.setIdPedido(resultSet.getInt("id_pedido"));
                pedido.setNumPedido(resultSet.getInt("num_pedido"));
                pedido.setFormaPagamento(resultSet.getString("forma_pagamento"));
                pedido.setValorTotal(resultSet.getDouble("valor_total"));
                pedido.getUsuario().setIdUsuario(resultSet.getInt("id_usuario"));
                pedido.getViagem().setIdViagem(resultSet.getInt("id_viagem"));

                System.out.println("ID: %s\nNum do Pedido: %s\nForma de pagamento: %s\nValor total: %s\nID do Usuário: %s\nID da Viagem: %s\n" +
                                   pedido.getIdPedido() + pedido.getNumPedido() + pedido.getFormaPagamento() + pedido.getValorTotal() +
                                   pedido.getUsuario().getIdUsuario() + pedido.getViagem().getIdViagem());
            }

            if(!resultSet.next()){
                System.out.println("\u001B[32mNenhum pedido encontrado!\u001B[0m");
            }

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }

    //UPDATE
    public void atualizarPedido(Pedido pedido) {
        sql="UPDATE pedido " +
            "SET num_pedido=?, data_pedido=?, forma_pagamento=?, valor_total=?, id_usuario=?, id_viagem=? " +
            "WHERE id_pedido=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, pedido.getNumPedido());
            Timestamp sqlDataPedido = Timestamp.valueOf(pedido.getDataPedido());
            stmt.setTimestamp(2, sqlDataPedido);
            stmt.setString(3, pedido.getFormaPagamento());
            stmt.setDouble(4, pedido.getValorTotal());
            stmt.setInt(5, pedido.getUsuario().getIdUsuario());
            stmt.setInt(6, pedido.getViagem().getIdViagem());
            stmt.setInt(7, pedido.getIdPedido());

            stmt.executeUpdate();

            System.out.println("\u001B[32mPedido atualizado com sucesso!\u001B[0m\n" +
                    "\u001B[32mPedido: \u001B[0m" + pedido.getNumPedido() +
                    "\u001B[32mUsuário:\u001B[0m" + pedido.getUsuario().getNome());

        } catch (SQLException e) {
            System.out.println("\u001B[31mPedido não foi atualizado, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }

    //DELETE
    public void deletarPedido(int idPedido) {
        sql = "DELETE FROM pedido WHERE id_pedido=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idPedido);

            stmt.executeUpdate();

            System.out.println("\u001B[32mPedido excluído com sucesso!\u001B[0m");

        } catch (SQLException e) {
            System.out.println("\u001B[31mPedido não foi excluído, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }
}
