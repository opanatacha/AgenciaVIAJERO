package model;

import java.util.Date;

public class Usuario {

    private int idUsuario;
    private String nome;
    private String cpf;
    private Date dataNascimento;
    private String telefone;
    private String email;
    private String senha;

    public Usuario() {
        super();
    }

    public Usuario(String nome, String cpf, Date dataNascimento, String telefone, String email, String senha) {
        super();
        this.nome = nome;
        this.cpf = cpf;
        this.dataNascimento = dataNascimento;
        this.telefone = telefone;
        this.email = email;
        this.senha = senha;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    @Override
    public String toString(){
        return "Usuario: " + idUsuario + "\nNome: " + nome + "\nCPF: " + cpf + "\nData de nascimento: " +
                dataNascimento + "\nTelefone: " + telefone + "\nEmail: " + email;
    }

}
