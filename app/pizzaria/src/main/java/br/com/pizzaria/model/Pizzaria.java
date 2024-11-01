package br.com.pizzaria.model;

public class Pizzaria {

        private String pedido;
        private String id;

        public Pizzaria(String pedido) {

            this.pedido = pedido;
        }

        public Pizzaria(String pedido, String id){
            this.pedido = pedido;
            this.id= id;
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


    }











