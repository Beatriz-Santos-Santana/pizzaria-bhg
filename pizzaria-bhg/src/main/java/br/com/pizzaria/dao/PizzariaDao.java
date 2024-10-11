package br.com.pizzaria.dao;

import br.com.pizzaria.model.Pizzaria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class PizzariaDao {

    public void createID (Pizzaria pizzaria){

        String SQL = "INSERT INTO PEDIDO (ID) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setInt(1, pizzaria.getId());
            preparedStatement.execute();

            System.out.println("success in insert car");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }

    }
}
