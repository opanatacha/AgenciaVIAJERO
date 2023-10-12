package model;

import java.time.LocalDateTime;

public class Viagem {

    private int idViagem;
    private String origem;
    private String destino;
    private LocalDateTime dataIda;
    private LocalDateTime dataVolta;
    private enum TipoViagem {
        PACOTE,
        EXCURSAO
    }
    private TipoViagem tipoViagem;
    private int qtdPessoas;
    private String hospedagem;
    private enum TipoHospedagem {
        POUSADA,
        HOTEL,
        HOSTEL,
        OUTRO
    }
    private TipoHospedagem tipoHospedagem;
    private String enderecoHospedagem;
    private String guiaTurismo;
    private String agenciaTransporte;
    private String codigoTransporte;
    private String descricaoViagem;
    private double valorViagem;

    public Viagem() {
        super();
    }

    public Viagem(int idViagem, String origem, String destino, LocalDateTime dataIda, LocalDateTime dataVolta, TipoViagem tipoViagem,
                  int qtdPessoas, String hospedagem, TipoHospedagem tipoHospedagem, String enderecoHospedagem, String guiaTurismo,
                  String agenciaTransporte, String codigoTransporte, String descricaoViagem, double valorViagem) {
        this.idViagem = idViagem;
        this.origem = origem;
        this.destino = destino;
        this.dataIda = dataIda;
        this.dataVolta = dataVolta;
        this.tipoViagem = tipoViagem;
        this.qtdPessoas = qtdPessoas;
        this.hospedagem = hospedagem;
        this.tipoHospedagem = tipoHospedagem;
        this.enderecoHospedagem = enderecoHospedagem;
        this.guiaTurismo = guiaTurismo;
        this.agenciaTransporte = agenciaTransporte;
        this.codigoTransporte = codigoTransporte;
        this.descricaoViagem = descricaoViagem;
        this.valorViagem = valorViagem;
    }

    public int getIdViagem() {
        return idViagem;
    }

    public void setIdViagem(int idViagem) {
        this.idViagem = idViagem;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public LocalDateTime getDataIda() {
        return dataIda;
    }

    public void setDataIda(LocalDateTime dataIda) {
        this.dataIda = dataIda;
    }

    public LocalDateTime getDataVolta() {
        return dataVolta;
    }

    public void setDataVolta(LocalDateTime dataVolta) {
        this.dataVolta = dataVolta;
    }

    public String getTipoViagem() {
        return tipoViagem.name();
    }

    public void setTipoViagem(String tipoViagem) {
        if("PACOTE".equalsIgnoreCase(tipoViagem)) {
            this.tipoViagem = TipoViagem.PACOTE;
        } else if("EXCURSAO".equalsIgnoreCase(tipoViagem)) {
            this.tipoViagem = TipoViagem.EXCURSAO;
        } else {
            System.out.println("Tipo de viagem inválido: " + tipoViagem);
        }
    }

    public int getQtdPessoas() {
        return qtdPessoas;
    }

    public void setQtdPessoas(int qtdPessoas) {
        this.qtdPessoas = qtdPessoas;
    }

    public String getHospedagem() {
        return hospedagem;
    }

    public void setHospedagem(String hospedagem) {
        this.hospedagem = hospedagem;
    }

    public String getTipoHospedagem() {
        return tipoHospedagem.name();
    }

    public void setTipoHospedagem(String tipoHospedagem) {
        if("POUSADA".equalsIgnoreCase(tipoHospedagem)) {
            this.tipoHospedagem = TipoHospedagem.POUSADA;
        } else if("HOTEL".equalsIgnoreCase(tipoHospedagem)) {
            this.tipoHospedagem = TipoHospedagem.HOTEL;
        } else if("HOSTEL".equalsIgnoreCase(tipoHospedagem)) {
            this.tipoHospedagem = TipoHospedagem.HOSTEL;
        } else if("OUTRO".equalsIgnoreCase(tipoHospedagem)) {
            this.tipoHospedagem = TipoHospedagem.OUTRO;
        } else {
            System.out.println("Tipo de hospedagem inválido: " + tipoHospedagem);
        }
    }

    public String getEnderecoHospedagem() {
        return enderecoHospedagem;
    }

    public void setEnderecoHospedagem(String enderecoHospedagem) {
        this.enderecoHospedagem = enderecoHospedagem;
    }

    public String getGuiaTurismo() {
        return guiaTurismo;
    }

    public void setGuiaTurismo(String guiaTurismo) {
        this.guiaTurismo = guiaTurismo;
    }

    public String getAgenciaTransporte() {
        return agenciaTransporte;
    }

    public void setAgenciaTransporte(String agenciaTransporte) {
        this.agenciaTransporte = agenciaTransporte;
    }

    public String getCodigoTransporte() {
        return codigoTransporte;
    }

    public void setCodigoTransporte(String codigoTransporte) {
        this.codigoTransporte = codigoTransporte;
    }

    public String getDescricaoViagem() {
        return descricaoViagem;
    }

    public void setDescricaoViagem(String descricaoViagem) {
        this.descricaoViagem = descricaoViagem;
    }

    public double getValorViagem() {
        return valorViagem;
    }

    public void setValorViagem(double valorViagem) {
        this.valorViagem = valorViagem;
    }
}
