package controller;

import model.Viagem;
import java.sql.Connection;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ViagemDAO {
    private static String sql;
    private final Connection connection;

    public ViagemDAO(Connection connection) {
        this.connection = connection;
    }

    //CREATE
    public void criarViagem(Viagem viagem) {
        sql="INSERT INTO viagem (origem, destino, data_ida, data_volta, tipo_viagem, qtd_pessoas, hospedagem, tipo_hospedagem, " +
                                "endereco_hospedagem, guia_turismo, agencia_transporte, codigo_transporte, descricao, valor_viagem) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, viagem.getOrigem());
            stmt.setString(2, viagem.getDestino());
            Timestamp sqlDataIda = Timestamp.valueOf(viagem.getDataIda());
            Timestamp sqlDataVolta = Timestamp.valueOf(viagem.getDataVolta());
            stmt.setTimestamp(3, sqlDataIda);
            stmt.setTimestamp(4, sqlDataVolta);
            stmt.setString(5, viagem.getTipoViagem().toString());
            stmt.setInt(6, viagem.getQtdPessoas());
            stmt.setString(7, viagem.getHospedagem());
            stmt.setString(8, viagem.getTipoHospedagem());
            stmt.setString(9, viagem.getEnderecoHospedagem());
            stmt.setString(10, viagem.getGuiaTurismo());
            stmt.setString(11, viagem.getAgenciaTransporte());
            stmt.setString(12, viagem.getCodigoTransporte());
            stmt.setString(13, viagem.getDescricaoViagem());
            stmt.setDouble(14, viagem.getValorViagem());

            stmt.executeUpdate();
            System.out.println("\u001B[32mViagem criada com sucesso!\u001B[0m" +
                    "\u001B[32mDestino:\u001B[0m" + viagem.getDestino());

        } catch (SQLException e) {
            System.out.println("\u001B[31mViagem não foi criada, tente novamente!\u001B[0m" + " Mensagem: " + e.getMessage());
        }
    }

    //READ
    public void consultarViagens() {
        sql="SELECT * FROM viagem";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            ResultSet resultSet = stmt.executeQuery();

            while (resultSet.next()){
                Viagem viagem = new Viagem();
                viagem.setIdViagem(resultSet.getInt("id_viagem"));
                viagem.setOrigem(resultSet.getString("origem"));
                viagem.setDestino(resultSet.getString("destino"));
                viagem.setDataIda(resultSet.getTimestamp("data_ida").toLocalDateTime());
                viagem.setDataVolta(resultSet.getTimestamp("data_volta").toLocalDateTime());
                viagem.setTipoViagem(resultSet.getString("tipo_viagem"));
                viagem.setQtdPessoas(resultSet.getInt("qtd_pessoas"));
                viagem.setHospedagem(resultSet.getString("hospedagem"));
                viagem.setTipoHospedagem(resultSet.getString("tipo_hospedagem"));
                viagem.setEnderecoHospedagem(resultSet.getString("endereco_hospedagem"));
                viagem.setGuiaTurismo(resultSet.getString("guia_turismo"));
                viagem.setAgenciaTransporte(resultSet.getString("agencia_transporte"));
                viagem.setCodigoTransporte(resultSet.getString("codigo_transporte"));
                viagem.setDescricaoViagem(resultSet.getString("descricao"));
                viagem.setValorViagem(resultSet.getDouble("valor_viagem"));

                System.out.println("ID: %s\nOrigem: %s\nDestino: %s\nData de ida: %s\nData de volta: %s\nTipo de viagem: %s\n" +
                        "Quantidade de pessoas: %s\nHospedagem: %s\nTipo de hospedagem: %s\nEndereço da hospedagem: %s\nGuia de turismo: %s\n" +
                        "Agência de transporte: %s\nCódigo do transporte: %s\nDescrição: %s\nValor da viagem: %s" +
                        viagem.getIdViagem() + viagem.getOrigem() + viagem.getDestino() + viagem.getDataIda() +
                        viagem.getDataVolta() + viagem.getTipoViagem() + viagem.getQtdPessoas() + viagem.getHospedagem() +
                        viagem.getTipoHospedagem() + viagem.getEnderecoHospedagem() + viagem.getGuiaTurismo() +
                        viagem.getAgenciaTransporte() + viagem.getCodigoTransporte() + viagem.getDescricaoViagem() + viagem.getValorViagem());
            }

            if(!resultSet.next()){
                System.out.println("\u001B[32mNenhuma viagem encontrada!\u001B[0m");
            }

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                               " Mensagem: " + e.getMessage());
        }
    }

    public Viagem consultarViagem(int idViagem) {
        sql="SELECT * FROM viagem " +
                "WHERE id_viagem = ?";

        try(PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setInt(1, idViagem);
            ResultSet resultSet = stmt.executeQuery();
            Viagem viagem = null;
            while (resultSet.next()){
                viagem = new Viagem();
                viagem.setIdViagem(resultSet.getInt("id_viagem"));
                viagem.setOrigem(resultSet.getString("origem"));
                viagem.setDestino(resultSet.getString("destino"));
                viagem.setDataIda(resultSet.getTimestamp("data_ida").toLocalDateTime());
                viagem.setDataVolta(resultSet.getTimestamp("data_volta").toLocalDateTime());
                viagem.setTipoViagem(resultSet.getString("tipo_viagem"));
                viagem.setQtdPessoas(resultSet.getInt("qtd_pessoas"));
                viagem.setHospedagem(resultSet.getString("hospedagem"));
                viagem.setTipoHospedagem(resultSet.getString("tipo_hospedagem"));
                viagem.setEnderecoHospedagem(resultSet.getString("endereco_hospedagem"));
                viagem.setGuiaTurismo(resultSet.getString("guia_turismo"));
                viagem.setAgenciaTransporte(resultSet.getString("agencia_transporte"));
                viagem.setCodigoTransporte(resultSet.getString("codigo_transporte"));
                viagem.setDescricaoViagem(resultSet.getString("descricao"));
                viagem.setValorViagem(resultSet.getDouble("valor_viagem"));
            }

            if(viagem == null){
                System.out.println("\u001B[32mNenhuma viagem encontrada!\u001B[0m");
            }

            return viagem;

        } catch (SQLException e) {
            System.out.println("\u001B[31mNão foi possível acessar os dados requeridos!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }

        return null;
    }

    //UPDATE
    public void atualizarViagem(Viagem viagem) {
        sql="UPDATE viagem " +
            "SET origem=?, destino=?, data_ida=?, data_volta=?, tipo_viagem=?, qtd_pessoas=?, " +
                "hospedagem=?, tipo_hospedagem=?, endereco_hospedagem=?, guia_turismo=?, agencia_transporte=?, " +
                "codigo_transporte=?, descricao=?, valor_viagem=?" +
            "WHERE id_viagem=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)){
            stmt.setString(1, viagem.getOrigem());
            stmt.setString(2, viagem.getDestino());
            Timestamp sqlDataIda = Timestamp.valueOf(viagem.getDataIda());
            Timestamp sqlDataVolta = Timestamp.valueOf(viagem.getDataVolta());
            stmt.setTimestamp(3, sqlDataIda);
            stmt.setTimestamp(4, sqlDataVolta);
            stmt.setString(5, viagem.getTipoViagem().toString());
            stmt.setInt(6, viagem.getQtdPessoas());
            stmt.setString(7, viagem.getHospedagem());
            stmt.setString(8, viagem.getTipoHospedagem());
            stmt.setString(9, viagem.getEnderecoHospedagem());
            stmt.setString(10, viagem.getGuiaTurismo());
            stmt.setString(11, viagem.getAgenciaTransporte());
            stmt.setString(12, viagem.getCodigoTransporte());
            stmt.setString(13, viagem.getDescricaoViagem());
            stmt.setDouble(14, viagem.getValorViagem());
            stmt.setInt(15, viagem.getIdViagem());

            stmt.executeUpdate();
            System.out.println("\u001B[32mViagem atualizada com sucesso!\u001B[0m\n" +
                    "\u001B[32mDestino:\u001B[0m" + viagem.getDestino());

        } catch (SQLException e) {
            System.out.println("\u001B[31mViagem não foi atualizada, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }

    //DELETE
    public void deletarViagem(int idViagem) {
        sql = "DELETE FROM viagem WHERE id_viagem=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, idViagem);

            stmt.executeUpdate();

            System.out.println("\u001B[32mViagem excluída com sucesso!\u001B[0m");

        } catch (SQLException e) {
            System.out.println("\u001B[31mViagem não foi excluída, tente novamente!\u001B[0m" +
                    " Mensagem: " + e.getMessage());
        }
    }
}
