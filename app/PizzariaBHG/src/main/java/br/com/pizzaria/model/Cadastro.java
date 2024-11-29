package br.com.pizzaria.model;

public class Cadastro {
    private String id;
    private String nome;
    private String email;
    private String telefone;

    private String cep;
    private String bairro;
    private String rua;
    private String num;

    public Cadastro(String id, String nome, String email, String telefone, String cep, String bairro, String rua, String num) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.cep = cep;
        this.bairro = bairro;
        this.rua = rua;
        this.num = num;
    }

    public Cadastro(String nome, String email, String telefone, String cep, String bairro, String rua, String num) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.cep = cep;
        this.bairro = bairro;
        this.rua = rua;
        this.num = num;

    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }


    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getCep() {
        return cep;
    }

    public String getBairro() {
        return bairro;
    }

    public String getRua() {
        return rua;
    }

    public String getNum() {
        return num;
    }

}