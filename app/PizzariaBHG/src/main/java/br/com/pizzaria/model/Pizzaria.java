package br.com.pizzaria.model;

public class Pizzaria {

    private String pedido;
    private String id;
    private String valor;
    private String quantidade;

    public Pizzaria(String pedido, String quantidade, String valor) {
        this.pedido = pedido;
        this.quantidade = quantidade;
        this.valor = valor;
    }

    public Pizzaria(String pedido, String id, String quantidade, String valor){
        this.pedido = pedido;
        this.id= id;
        this.quantidade = quantidade;
        this.valor = valor;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPedido() {
        return pedido;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    public String getValor() {
        return valor;
    }


}