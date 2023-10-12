package model;


public class Contato {

    private int idContato;
    private String nome;
    private String destino;
    private String telefone;
    private String email;
    private String mensagem;

    public Contato() {
        super();
    }

    public Contato(int idContato, String nome, String destino, String telefone, String email, String mensagem) {
        this.idContato = idContato;
        this.nome = nome;
        this.destino = destino;
        this.telefone = telefone;
        this.email = email;
        this.mensagem = mensagem;
    }

    public int getIdContato() {
        return idContato;
    }

    public void setIdContato(int idContato) {
        this.idContato = idContato;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }
}
