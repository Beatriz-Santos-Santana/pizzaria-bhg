package br.com.pizzaria.dao;

import br.com.pizzaria.config.ConnectionPoolConfig;
import br.com.pizzaria.model.Pizzaria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PizzariaDao {

    public void createPedido(Pizzaria pizzaria){
        String SQL = "INSERT INTO PEDIDO (PEDIDO) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, pizzaria.getPedido());
            preparedStatement.execute();

            System.out.println("success in insert pedido");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    public List<Pizzaria> findAllPedidos(){

        String SQL = "SELECT * FROM PEDIDO";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Pizzaria> pizzas = new ArrayList<>();

            while (resultSet.next()) {

                String pizzaPedido = resultSet.getString("PEDIDO");

                String pizzaID = resultSet.getString("ID");

                Pizzaria pizzaria = new Pizzaria(pizzaPedido, pizzaID);

                pizzas.add(pizzaria);

            }

            System.out.println("success in select * pizza");

            connection.close();

            return pizzas;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }



    }

    public void deletePedidoById(String pizzaId) {

        String SQL = "DELETE PEDIDO WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, pizzaId);
            preparedStatement.execute();

            System.out.println("success on delete pedido with id: " + pizzaId);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }

    public void updatePedido(Pizzaria pizzaria){

        String SQL = "UPDATE PEDIDO SET PEDIDO = ? WHERE ID = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pizzaria.getPedido());
            preparedStatement.setString(2, pizzaria.getId());
            preparedStatement.execute();

            System.out.println("success in update pedido");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }




    }





}



