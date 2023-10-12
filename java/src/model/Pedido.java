package model;

import java.time.LocalDateTime;

public class Pedido {
    private int idPedido;
    private int numPedido;
    private LocalDateTime dataPedido;
    private String formaPagamento;
    private double valorTotal;
    private Usuario usuario;
    private Viagem viagem;

    public Pedido() {
        super();
    }

    public Pedido(int idPedido, int numPedido, LocalDateTime dataPedido, String formaPagamento, double valorTotal, Usuario usuario, Viagem viagem) {
        this.idPedido = idPedido;
        this.numPedido = numPedido;
        this.dataPedido = dataPedido;
        this.formaPagamento = formaPagamento;
        this.valorTotal = valorTotal;
        this.usuario = usuario;
        this.viagem = viagem;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public int getNumPedido() {
        return numPedido;
    }

    public void setNumPedido(int numPedido) {
        this.numPedido = numPedido;
    }

    public LocalDateTime getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(LocalDateTime dataPedido) {
        this.dataPedido = dataPedido;
    }

    public String getFormaPagamento() {
        return formaPagamento;
    }

    public void setFormaPagamento(String formaPagamento) {
        this.formaPagamento = formaPagamento;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Viagem getViagem() {
        return viagem;
    }

    public void setViagem(Viagem viagem) {
        this.viagem = viagem;
    }
}
